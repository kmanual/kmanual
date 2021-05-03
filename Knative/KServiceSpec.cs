using k8s.Models;
using Microsoft.Rest;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Knative
{
    public class KServiceSpec
    {
        /// <summary>
        /// Gets or sets template describes the pods that will be created.
        /// </summary>
        [JsonProperty(PropertyName = "template")]
        public V1PodTemplateSpec Template { get; set; }

        public void Validate()
        {
            if (Template == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Template");
            }

            if (Template != null)
            {
                Template.Validate();
            }
        }
    }
}
