using k8s;
using Microsoft.Rest;
using Microsoft.Rest.Serialization;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Knative
{
    public static class KnativeExtensionMethods
    {
        public static async Task<HttpOperationResponse<KServiceList>> ListNamespacedKServiceWithHttpMessagesAsync(this IKubernetes kubernetes, string @namespace, bool? allowWatchBookmarks = default(bool?), string continueParameter = default(string), string fieldSelector = default(string), string labelSelector = default(string), int? limit = default(int?), string resourceVersion = default(string), string resourceVersionMatch = default(string), int? timeoutSeconds = default(int?), bool? watch = default(bool?), string pretty = default(string), Dictionary<string, List<string>> customHeaders = null, CancellationToken cancellationToken = default(CancellationToken))
        {
            var group = "serving.knative.dev";
            var version = "v1";
            var plural = "services";

            if (@namespace == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, nameof(@namespace));
            }

            // Tracing
            bool _shouldTrace = ServiceClientTracing.IsEnabled;
            string _invocationId = null;
            if (_shouldTrace)
            {
                _invocationId = ServiceClientTracing.NextInvocationId.ToString();
                Dictionary<string, object> tracingParameters = new Dictionary<string, object>();
                tracingParameters.Add("allowWatchBookmarks", allowWatchBookmarks);
                tracingParameters.Add("continueParameter", continueParameter);
                tracingParameters.Add("fieldSelector", fieldSelector);
                tracingParameters.Add("labelSelector", labelSelector);
                tracingParameters.Add("limit", limit);
                tracingParameters.Add("resourceVersion", resourceVersion);
                tracingParameters.Add("resourceVersionMatch", resourceVersionMatch);
                tracingParameters.Add("timeoutSeconds", timeoutSeconds);
                tracingParameters.Add("watch", watch);
                tracingParameters.Add("pretty", pretty);
                tracingParameters.Add("group", group);
                tracingParameters.Add("version", version);
                tracingParameters.Add("namespaceParameter", @namespace);
                tracingParameters.Add("plural", plural);
                tracingParameters.Add("cancellationToken", cancellationToken);
                ServiceClientTracing.Enter(_invocationId, kubernetes, "ListNamespacedKService", tracingParameters);
            }
            // Construct URL
            var _baseUrl = kubernetes.BaseUri.AbsoluteUri;
            var _url = new System.Uri(new System.Uri(_baseUrl + (_baseUrl.EndsWith("/") ? "" : "/")), "apis/{group}/{version}/namespaces/{namespace}/{plural}").ToString();
            _url = _url.Replace("{group}", System.Uri.EscapeDataString(group));
            _url = _url.Replace("{version}", System.Uri.EscapeDataString(version));
            _url = _url.Replace("{namespace}", System.Uri.EscapeDataString(@namespace));
            _url = _url.Replace("{plural}", System.Uri.EscapeDataString(plural));
            List<string> _queryParameters = new List<string>();
            if (allowWatchBookmarks != null)
            {
                _queryParameters.Add(string.Format("allowWatchBookmarks={0}", System.Uri.EscapeDataString(SafeJsonConvert.SerializeObject(allowWatchBookmarks, kubernetes.SerializationSettings).Trim('"'))));
            }
            if (continueParameter != null)
            {
                _queryParameters.Add(string.Format("continue={0}", System.Uri.EscapeDataString(continueParameter)));
            }
            if (fieldSelector != null)
            {
                _queryParameters.Add(string.Format("fieldSelector={0}", System.Uri.EscapeDataString(fieldSelector)));
            }
            if (labelSelector != null)
            {
                _queryParameters.Add(string.Format("labelSelector={0}", System.Uri.EscapeDataString(labelSelector)));
            }
            if (limit != null)
            {
                _queryParameters.Add(string.Format("limit={0}", System.Uri.EscapeDataString(SafeJsonConvert.SerializeObject(limit, kubernetes.SerializationSettings).Trim('"'))));
            }
            if (resourceVersion != null)
            {
                _queryParameters.Add(string.Format("resourceVersion={0}", System.Uri.EscapeDataString(resourceVersion)));
            }
            if (resourceVersionMatch != null)
            {
                _queryParameters.Add(string.Format("resourceVersionMatch={0}", System.Uri.EscapeDataString(resourceVersionMatch)));
            }
            if (timeoutSeconds != null)
            {
                _queryParameters.Add(string.Format("timeoutSeconds={0}", System.Uri.EscapeDataString(SafeJsonConvert.SerializeObject(timeoutSeconds, kubernetes.SerializationSettings).Trim('"'))));
            }
            if (watch != null)
            {
                _queryParameters.Add(string.Format("watch={0}", System.Uri.EscapeDataString(SafeJsonConvert.SerializeObject(watch, kubernetes.SerializationSettings).Trim('"'))));
            }
            if (pretty != null)
            {
                _queryParameters.Add(string.Format("pretty={0}", System.Uri.EscapeDataString(pretty)));
            }
            if (_queryParameters.Count > 0)
            {
                _url += "?" + string.Join("&", _queryParameters);
            }
            // Create HTTP transport objects
            var _httpRequest = new HttpRequestMessage();
            HttpResponseMessage _httpResponse = null;
            _httpRequest.Method = new HttpMethod("GET");
            _httpRequest.RequestUri = new System.Uri(_url);
            // Set Headers


            if (customHeaders != null)
            {
                foreach (var _header in customHeaders)
                {
                    if (_httpRequest.Headers.Contains(_header.Key))
                    {
                        _httpRequest.Headers.Remove(_header.Key);
                    }
                    _httpRequest.Headers.TryAddWithoutValidation(_header.Key, _header.Value);
                }
            }

            // Serialize Request
            string _requestContent = null;
            // Set Credentials
            if (kubernetes.Credentials != null)
            {
                cancellationToken.ThrowIfCancellationRequested();
                await kubernetes.Credentials.ProcessHttpRequestAsync(_httpRequest, cancellationToken).ConfigureAwait(false);
            }
            // Send Request
            if (_shouldTrace)
            {
                ServiceClientTracing.SendRequest(_invocationId, _httpRequest);
            }
            cancellationToken.ThrowIfCancellationRequested();
            _httpResponse = await kubernetes.HttpClient.SendAsync(_httpRequest, cancellationToken).ConfigureAwait(false);
            if (_shouldTrace)
            {
                ServiceClientTracing.ReceiveResponse(_invocationId, _httpResponse);
            }
            HttpStatusCode _statusCode = _httpResponse.StatusCode;
            cancellationToken.ThrowIfCancellationRequested();
            string _responseContent = null;
            if ((int)_statusCode != 200)
            {
                var ex = new HttpOperationException(string.Format("Operation returned an invalid status code '{0}'", _statusCode));
                if (_httpResponse.Content != null)
                {
                    _responseContent = await _httpResponse.Content.ReadAsStringAsync().ConfigureAwait(false);
                }
                else
                {
                    _responseContent = string.Empty;
                }
                ex.Request = new HttpRequestMessageWrapper(_httpRequest, _requestContent);
                ex.Response = new HttpResponseMessageWrapper(_httpResponse, _responseContent);
                if (_shouldTrace)
                {
                    ServiceClientTracing.Error(_invocationId, ex);
                }
                _httpRequest.Dispose();
                if (_httpResponse != null)
                {
                    _httpResponse.Dispose();
                }
                throw ex;
            }
            // Create Result
            var _result = new HttpOperationResponse<KServiceList>();
            _result.Request = _httpRequest;
            _result.Response = _httpResponse;
            // Deserialize Response
            if ((int)_statusCode == 200)
            {
                _responseContent = await _httpResponse.Content.ReadAsStringAsync().ConfigureAwait(false);
                try
                {
                    _result.Body = SafeJsonConvert.DeserializeObject<KServiceList>(_responseContent, kubernetes.DeserializationSettings);
                }
                catch (JsonException ex)
                {
                    _httpRequest.Dispose();
                    if (_httpResponse != null)
                    {
                        _httpResponse.Dispose();
                    }
                    throw new SerializationException("Unable to deserialize the response.", _responseContent, ex);
                }
            }
            if (_shouldTrace)
            {
                ServiceClientTracing.Exit(_invocationId, _result);
            }
            return _result;
        }


        public static async Task<KServiceList> ListNamespacedKServiceAsync(this IKubernetes operations, string namespaceParameter, bool? allowWatchBookmarks = default(bool?), string continueParameter = default(string), string fieldSelector = default(string), string labelSelector = default(string), int? limit = default(int?), string resourceVersion = default(string), string resourceVersionMatch = default(string), int? timeoutSeconds = default(int?), bool? watch = default(bool?), string pretty = default(string), CancellationToken cancellationToken = default(CancellationToken))
        {
            using var _result = await operations.ListNamespacedKServiceWithHttpMessagesAsync(namespaceParameter, allowWatchBookmarks, continueParameter, fieldSelector, labelSelector, limit, resourceVersion, resourceVersionMatch, timeoutSeconds, watch, pretty, null, cancellationToken).ConfigureAwait(false);
            return _result.Body;
        }
    }
}
