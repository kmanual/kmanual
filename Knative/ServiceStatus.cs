using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Knative
{
    public class ServiceStatus
    {
        public StatusAddress Address { get; set; }
        public Condition[] Conditions { get; set; }
        public string LatestCreatedRevisionName { get; set; }
        public string LatestReadyRevisionName { get; set; }
        public int ObservedGeneration { get; set; }
        public StatusTraffic[] Traffic { get; set; }
        public string Url { get; set; }

        public class StatusAddress
        {
            public string Url { get; set; }
        }

        public class Condition
        {
            public DateTime LastTransitionTime { get; set; }
            public string Status { get; set; }
            public string Type { get; set; }
        }

        public class StatusTraffic
        {
            public bool LatestRevision { get; set; }
            public int Percent { get; set; }
            public string RevisionName { get; set; }
        }

    }
}
