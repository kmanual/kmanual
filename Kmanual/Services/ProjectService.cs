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
    public class ProjectService : Projects.ProjectsBase
    {
        private readonly ILogger<ProjectService> _logger;
        private readonly k8s.Kubernetes client;

        public ProjectService(ILogger<ProjectService> logger)
        {
            _logger = logger;

            //var config = KubernetesClientConfiguration.InClusterConfig();
            var config = KubernetesClientConfiguration.BuildConfigFromConfigFile(@"C:\Users\Mahdi\Desktop\config");
            client = new k8s.Kubernetes(config);
        }

        public override async Task<CreateResponse> Create(CreateReuqest request, ServerCallContext context)
        {
            string image = request.Image;

            if (!string.IsNullOrWhiteSpace(request.Tag))
            {
                image = $"{image}:{request.Tag}";
            }

            var container = new V1Container
            {
                Image = image,
            };

            var body = new KService
            {
                Kind = "Service",
                Metadata = new V1ObjectMeta
                {
                    Name = request.Name,
                    NamespaceProperty = request.Namespace
                },
                Spec = new KServiceSpec
                {
                    Template = new V1PodTemplateSpec
                    {
                        Spec = new V1PodSpec
                        {
                            Containers = new List<V1Container> { container },
                        },
                    },
                },
            };

            var result = await client.CreateNamespacedKServiceAsync(body, request.Namespace);

            var response = new CreateResponse
            {
                Project = new Project
                {
                    Id = result.Uid(),
                    Image = request.Image,
                    Name = result.Name(),
                    Namespace = result.Namespace(),
                    DisplayName = result.Name(),
                    Tag = request.Tag,
                },
            };

            return response;
        }

        public override Task<GetListResponse> GetList(GetListRequest request, ServerCallContext context)
        {
            var response = new GetListResponse();

            return Task.FromResult(response);
        }

        public override async Task<DeployResponse> Deploy(DeployRequest request, ServerCallContext context)
        {
            var response = new DeployResponse();

            await Task.Delay(10);

            return response;
        }
    }
}
