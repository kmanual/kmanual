using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace Kmanual.Docker
{
    public class Repository
    {
        [JsonPropertyName("name")]
        public string? Name { get; set; }

        [JsonPropertyName("tags")]
        public List<string>? Tags { get; set; }
    }
}
