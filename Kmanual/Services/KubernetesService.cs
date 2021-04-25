using Grpc.Core;
using k8s;
using k8s.Models;
using Kmanual;
using Kmanual.Docker;
using Knative;
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

            if (namespaces.Items != null)
            {
                foreach (var item in namespaces.Items)
                {
                    response.Namespaces.Add(item.Metadata.Name);
                }
            }

            return response;
        }

        public override async Task<GetKServiceListResponse> GetKServiceList(GetKServiceListReuqest request, ServerCallContext context)
        {
            var response = new GetKServiceListResponse();

            var services = await client.ListNamespacedKServiceAsync(request.Namespace);

            if (services.Items != null)
            {
                foreach (var item in services.Items)
                {
                    response.Services.Add(item.Metadata.Name);
                }
            }

            return response;
        }
    }
}
