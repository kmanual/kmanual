using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace Kmanual.Docker
{
    public class Catalog
    {
        [JsonPropertyName("repositories")]
        public List<string>? Repositories { get; set; }
    }
}
