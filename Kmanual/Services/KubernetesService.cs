using Grpc.Core;
using k8s;
using k8s.Models;
using Kmanual;
using Kmanual.Docker;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Kmanual.Services
{
    public class KubernetesService : Kubernetes.KubernetesBase
    {
        private readonly ILogger<KubernetesService> _logger;
        private readonly k8s.Kubernetes client;


        public KubernetesService(ILogger<KubernetesService> logger)
        {
            _logger = logger;

            //var config = KubernetesClientConfiguration.InClusterConfig();
            var config = KubernetesClientConfiguration.BuildConfigFromConfigFile(@"C:\Users\Mahdi\Desktop\config");
            client = new k8s.Kubernetes(config);
        }

        public override async Task<GetNamespaceListResponse> GetNamespaceList(GetNamespaceListReuqest request, ServerCallContext context)
        {
            var response = new GetNamespaceListResponse();

            var namespaces = await client.ListNamespaceAsync();

            response.Namespaces.AddRange(from ns in namespaces.Items select ns.Metadata.Name);

            return response;
        }

        public override async Task<GetKServiceListResponse> GetKServiceList(GetKServiceListReuqest request, ServerCallContext context)
        {
            var response = new GetKServiceListResponse();

            if (await client.ListNamespacedCustomObjectAsync("serving.knative.dev", "v1", "default", "services") is JObject services)
            {
                if (services.GetValue("items") is JArray items)
                {
                    foreach (var item in items)
                    {
                        response.Services.Add(item.ToString());
                    }
                }
            }

            return response;
        }
    }
}
