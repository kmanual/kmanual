using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;

namespace Kmanual
{
    public static class HttpClientExtensions
    {
        public static async Task<string> GetV2StringAsync(this HttpClient client, string uri)
        {
            var requestMessage = new HttpRequestMessage(HttpMethod.Get, uri);
            requestMessage.Headers.Accept.ParseAdd("application/vnd.docker.distribution.manifest.v2+json");

            var response = await client.SendAsync(requestMessage);

            var jsonText = await response.Content.ReadAsStringAsync();

            return jsonText;
        }

        public static async Task<T?> GetV2ObjectAsync<T>(this HttpClient client, string uri, JsonSerializerOptions? options = null)
        {
            options ??= new JsonSerializerOptions(JsonSerializerDefaults.Web);

            var jsonText = await client.GetV2StringAsync(uri);

            return JsonSerializer.Deserialize<T>(jsonText, options);
        }
    }
}
