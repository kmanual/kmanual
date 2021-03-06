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

        public override async Task<GetTagListResponse> GetTagList(GetTagListReuqest request, ServerCallContext context)
        {
            var tags = await _catalog.GetTagsAsync(request.Name);
            var response = new GetTagListResponse();

            if (tags?.Tags != null)
            {
                response.Tags.AddRange(tags!.Tags!);
            }

            return response;
        }

        public override async Task<GetManifestResponse> GetManifest(GetManifestReuqest request, ServerCallContext context)
        {
            var manifest = await _catalog.GetManifestAsync(request.Name, request.Tag);

            if (manifest == null)
            {
                throw new RpcException(new Status(StatusCode.NotFound, $"{request.Name}:{request.Tag} Not Found"));
            }

            var response = new GetManifestResponse
            {
                SchemaVersion = manifest.SchemaVersion,
                MediaType = manifest.MediaType
            };

            if (manifest.Config != null)
            {
                response.Config = new Config
                {
                    MediaType = manifest.Config.MediaType,
                    Size = manifest.Config.Size,
                    Digest = manifest.Config.Digest
                };
            }

            if (manifest.Layers != null)
            {
                foreach (var layer in manifest.Layers)
                {
                    var l = new Layer
                    {
                        Size = layer.Size,
                        Digest = layer.Digest,
                        MediaType = layer.MediaType
                    };

                    response.Layers.Add(l);
                }
            }

            return response;
        }
    }
}
