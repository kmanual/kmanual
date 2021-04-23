using System;
using System.Linq;
using System.Net.Http;
using System.Runtime.ConstrainedExecution;
using System.Text.Json;
using System.Threading.Tasks;

namespace Kmanual.Docker
{
    public class CatalogService
    {
        private readonly HttpClient client;

        public CatalogService(DockerHostConfig config)
        {
            client = new HttpClient { BaseAddress = new Uri($"{config.Url}/v2/") };
        }

        public async Task<Catalog?> GetCatalogAsync()
        {
            var result = await client.GetV2StringAsync("_catalog");

            //var x = await dockerClient.Images.ListImagesAsync(new Docker.DotNet.Models.ImagesListParameters { All = true });

            return JsonSerializer.Deserialize<Catalog>(result);
        }
        public Task<Repository?> GetTagsAsync(string name)
        {
            var uri = $"{name}/tags/list";
            return client.GetV2ObjectAsync<Repository>(uri);
        }

        public Task<Manifest?> GetManifestAsync(string name, string reference)
        {
            var uri = $"{name}/manifests/{reference}";
            return client.GetV2ObjectAsync<Manifest>(uri);
        }


    }
}
