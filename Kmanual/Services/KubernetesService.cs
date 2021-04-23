using Grpc.Core;
using Kmanual;
using Kmanual.Docker;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Kmanual.Services
{
    public class KubernetesService : Kubernetes.KubernetesBase
    {
        private readonly ILogger<KubernetesService> _logger;

        public KubernetesService(ILogger<KubernetesService> logger)
        {
            _logger = logger;
        }

        public override Task<GetNamespaceListResponse> GetNamespaceList(GetNamespaceListReuqest request, ServerCallContext context)
        {
            var response = new GetNamespaceListResponse();

            response.Namespaces.Add("default");

            return Task.FromResult(response);
        }
    }
}
