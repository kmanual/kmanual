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
    public class RepositoryService : Repository.RepositoryBase
    {
        private readonly ILogger<RepositoryService> _logger;
        private readonly CatalogService _catalog;

        public RepositoryService(ILogger<RepositoryService> logger, CatalogService catalog)
        {
            _logger = logger;
            _catalog = catalog;
        }

        public override async Task<GetImageListResponse> GetImageList(GetImageListReuqest request, ServerCallContext context)
        {
            var catalog = await _catalog.GetCatalogAsync();
            var response = new GetImageListResponse();

            if (catalog?.Repositories != null)
            {
                response.Repositories.AddRange(catalog!.Repositories!);
            }

            return response;
        }
    }
}
