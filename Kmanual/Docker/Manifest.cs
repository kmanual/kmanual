using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace Kmanual.Docker
{
    public class Manifest
    {
        public int SchemaVersion { get; set; }
        public string? MediaType { get; set; }
        public Config? Config { get; set; }
        public Layer[]? Layers { get; set; }
    }

    public class Config
    {
        public string? MediaType { get; set; }
        public int Size { get; set; }
        public string? Digest { get; set; }
    }

    public class Layer
    {
        public string? MediaType { get; set; }
        public int Size { get; set; }
        public string? Digest { get; set; }
    }


}
