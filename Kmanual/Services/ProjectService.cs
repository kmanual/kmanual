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

        public override Task<CreateResponse> Create(CreateReuqest request, ServerCallContext context)
        {
            return base.Create(request, context);
        }

        public override Task<GetListResponse> GetList(GetListRequest request, ServerCallContext context)
        {
            var response = new GetListResponse();

            return Task.FromResult(response);
        }
    }
}
