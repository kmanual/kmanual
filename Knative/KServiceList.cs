using k8s;
using k8s.Models;
using Microsoft.Rest;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Knative
{
    [KubernetesEntity(Group = "serving.knative.dev", Kind = "ServiceList", ApiVersion = "v1", PluralName = "services")]
    public partial class KServiceList : IKubernetesObject<V1ListMeta>, IItems<KService>, IValidate
    {
        public const string KubeApiVersion = "v1";
        public const string KubeKind = "ServiceList";
        public const string KubeGroup = "";

        /// <summary>
        /// Initializes a new instance of the V1PodList class.
        /// </summary>
        public KServiceList()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the V1PodList class.
        /// </summary>
        /// <param name="items">List of pods. More info:
        /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md</param>
        /// <param name="apiVersion">APIVersion defines the versioned schema of
        /// this representation of an object. Servers should convert recognized
        /// schemas to the latest internal value, and may reject unrecognized
        /// values. More info:
        /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources</param>
        /// <param name="kind">Kind is a string value representing the REST
        /// resource this object represents. Servers may infer this from the
        /// endpoint the client submits requests to. Cannot be updated. In
        /// CamelCase. More info:
        /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds</param>
        /// <param name="metadata">Standard list metadata. More info:
        /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds</param>
        public KServiceList(IList<KService> items, string apiVersion = default(string), string kind = default(string), V1ListMeta metadata = default(V1ListMeta))
        {
            ApiVersion = apiVersion;
            Items = items;
            Kind = kind;
            Metadata = metadata;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets aPIVersion defines the versioned schema of this
        /// representation of an object. Servers should convert recognized
        /// schemas to the latest internal value, and may reject unrecognized
        /// values. More info:
        /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
        /// </summary>
        [JsonProperty(PropertyName = "apiVersion")]
        public string ApiVersion { get; set; }

        /// <summary>
        /// Gets or sets list of pods. More info:
        /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md
        /// </summary>
        [JsonProperty(PropertyName = "items")]
        public IList<KService> Items { get; set; }

        /// <summary>
        /// Gets or sets kind is a string value representing the REST resource
        /// this object represents. Servers may infer this from the endpoint
        /// the client submits requests to. Cannot be updated. In CamelCase.
        /// More info:
        /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
        /// </summary>
        [JsonProperty(PropertyName = "kind")]
        public string Kind { get; set; }

        /// <summary>
        /// Gets or sets standard list metadata. More info:
        /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
        /// </summary>
        [JsonProperty(PropertyName = "metadata")]
        public V1ListMeta Metadata { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (Items == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Items");
            }
            if (Items != null)
            {
                foreach (var element in Items)
                {
                    if (element != null)
                    {
                        element.Validate();
                    }
                }
            }
        }
    }
}
