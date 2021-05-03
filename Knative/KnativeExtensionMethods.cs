using k8s;
using Microsoft.Rest;
using Microsoft.Rest.Serialization;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Knative
{
    public static class KnativeExtensionMethods
    {
        /// <summary>
        /// Creates a namespace scoped Custom object
        /// </summary>
        /// <param name='body'>
        /// The JSON schema of the Resource to create.
        /// </param>
        /// <param name='group'>
        /// The custom resource's group name
        /// </param>
        /// <param name='version'>
        /// The custom resource's version
        /// </param>
        /// <param name='namespaceParameter'>
        /// The custom resource's namespace
        /// </param>
        /// <param name='plural'>
        /// The custom resource's plural name. For TPRs this would be lowercase plural
        /// kind.
        /// </param>
        /// <param name='dryRun'>
        /// When present, indicates that modifications should not be persisted. An
        /// invalid or unrecognized dryRun directive will result in an error response
        /// and no further processing of the request. Valid values are: - All: all dry
        /// run stages will be processed
        /// </param>
        /// <param name='fieldManager'>
        /// fieldManager is a name associated with the actor or entity that is making
        /// these changes. The value must be less than or 128 characters long, and only
        /// contain printable characters, as defined by
        /// https://golang.org/pkg/unicode/#IsPrint.
        /// </param>
        /// <param name='pretty'>
        /// If 'true', then the output is pretty printed.
        /// </param>
        /// <param name='customHeaders'>
        /// Headers that will be added to request.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        /// <exception cref="HttpOperationException">
        /// Thrown when the operation returned an invalid status code
        /// </exception>
        /// <exception cref="SerializationException">
        /// Thrown when unable to deserialize the response
        /// </exception>
        /// <exception cref="ValidationException">
        /// Thrown when a required parameter is null
        /// </exception>
        /// <exception cref="System.ArgumentNullException">
        /// Thrown when a required parameter is null
        /// </exception>
        /// <return>
        /// A response object containing the response body and response headers.
        /// </return>
        public static async Task<HttpOperationResponse<T>> CreateNamespacedCustomObjectWithHttpMessagesAsync<T>(this IKubernetes kubernetes, T body, string group, string version, string namespaceParameter, string plural, string dryRun = default(string), string fieldManager = default(string), string pretty = default(string), Dictionary<string, List<string>> customHeaders = null, CancellationToken cancellationToken = default(CancellationToken))
        {
            if (body == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "body");
            }
            if (group == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "group");
            }
            if (version == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "version");
            }
            if (namespaceParameter == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "namespaceParameter");
            }
            if (plural == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "plural");
            }
            // Tracing
            bool _shouldTrace = ServiceClientTracing.IsEnabled;
            string _invocationId = null;
            if (_shouldTrace)
            {
                _invocationId = ServiceClientTracing.NextInvocationId.ToString();
                Dictionary<string, object> tracingParameters = new Dictionary<string, object>();
                tracingParameters.Add("body", body);
                tracingParameters.Add("dryRun", dryRun);
                tracingParameters.Add("fieldManager", fieldManager);
                tracingParameters.Add("pretty", pretty);
                tracingParameters.Add("group", group);
                tracingParameters.Add("version", version);
                tracingParameters.Add("namespaceParameter", namespaceParameter);
                tracingParameters.Add("plural", plural);
                tracingParameters.Add("cancellationToken", cancellationToken);
                ServiceClientTracing.Enter(_invocationId, kubernetes, "CreateNamespacedCustomObject", tracingParameters);
            }
            // Construct URL
            var _baseUrl = kubernetes.BaseUri.AbsoluteUri;
            var _url = new System.Uri(new System.Uri(_baseUrl + (_baseUrl.EndsWith("/") ? "" : "/")), "apis/{group}/{version}/namespaces/{namespace}/{plural}").ToString();
            _url = _url.Replace("{group}", System.Uri.EscapeDataString(group));
            _url = _url.Replace("{version}", System.Uri.EscapeDataString(version));
            _url = _url.Replace("{namespace}", System.Uri.EscapeDataString(namespaceParameter));
            _url = _url.Replace("{plural}", System.Uri.EscapeDataString(plural));
            List<string> _queryParameters = new List<string>();
            if (dryRun != null)
            {
                _queryParameters.Add(string.Format("dryRun={0}", System.Uri.EscapeDataString(dryRun)));
            }
            if (fieldManager != null)
            {
                _queryParameters.Add(string.Format("fieldManager={0}", System.Uri.EscapeDataString(fieldManager)));
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
            _httpRequest.Method = new HttpMethod("POST");
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
            if (body != null)
            {
                _requestContent = SafeJsonConvert.SerializeObject(body, kubernetes.SerializationSettings);
                _httpRequest.Content = new StringContent(_requestContent, System.Text.Encoding.UTF8);
                _httpRequest.Content.Headers.ContentType = MediaTypeHeaderValue.Parse("application/json; charset=utf-8");
            }
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
            if ((int)_statusCode != 201)
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
            var _result = new HttpOperationResponse<T>();
            _result.Request = _httpRequest;
            _result.Response = _httpResponse;
            // Deserialize Response
            if ((int)_statusCode == 201)
            {
                _responseContent = await _httpResponse.Content.ReadAsStringAsync().ConfigureAwait(false);
                try
                {
                    _result.Body = SafeJsonConvert.DeserializeObject<T>(_responseContent, kubernetes.DeserializationSettings);
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


        /// <summary>
        /// Creates a namespace scoped Custom object
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='body'>
        /// The JSON schema of the Resource to create.
        /// </param>
        /// <param name='group'>
        /// The custom resource's group name
        /// </param>
        /// <param name='version'>
        /// The custom resource's version
        /// </param>
        /// <param name='namespaceParameter'>
        /// The custom resource's namespace
        /// </param>
        /// <param name='plural'>
        /// The custom resource's plural name. For TPRs this would be lowercase plural
        /// kind.
        /// </param>
        /// <param name='dryRun'>
        /// When present, indicates that modifications should not be persisted. An
        /// invalid or unrecognized dryRun directive will result in an error response
        /// and no further processing of the request. Valid values are: - All: all dry
        /// run stages will be processed
        /// </param>
        /// <param name='fieldManager'>
        /// fieldManager is a name associated with the actor or entity that is making
        /// these changes. The value must be less than or 128 characters long, and only
        /// contain printable characters, as defined by
        /// https://golang.org/pkg/unicode/#IsPrint.
        /// </param>
        /// <param name='pretty'>
        /// If 'true', then the output is pretty printed.
        /// </param>
        public static T CreateNamespacedCustomObject<T>(this IKubernetes operations, T body, string group, string version, string namespaceParameter, string plural, string dryRun = default(string), string fieldManager = default(string), string pretty = default(string))
        {
            return operations.CreateNamespacedCustomObjectAsync<T>(body, group, version, namespaceParameter, plural, dryRun, fieldManager, pretty).GetAwaiter().GetResult();
        }

        /// <summary>
        /// Creates a namespace scoped Custom object
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='body'>
        /// The JSON schema of the Resource to create.
        /// </param>
        /// <param name='group'>
        /// The custom resource's group name
        /// </param>
        /// <param name='version'>
        /// The custom resource's version
        /// </param>
        /// <param name='namespaceParameter'>
        /// The custom resource's namespace
        /// </param>
        /// <param name='plural'>
        /// The custom resource's plural name. For TPRs this would be lowercase plural
        /// kind.
        /// </param>
        /// <param name='dryRun'>
        /// When present, indicates that modifications should not be persisted. An
        /// invalid or unrecognized dryRun directive will result in an error response
        /// and no further processing of the request. Valid values are: - All: all dry
        /// run stages will be processed
        /// </param>
        /// <param name='fieldManager'>
        /// fieldManager is a name associated with the actor or entity that is making
        /// these changes. The value must be less than or 128 characters long, and only
        /// contain printable characters, as defined by
        /// https://golang.org/pkg/unicode/#IsPrint.
        /// </param>
        /// <param name='pretty'>
        /// If 'true', then the output is pretty printed.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        public static async Task<T> CreateNamespacedCustomObjectAsync<T>(this IKubernetes operations, T body, string group, string version, string namespaceParameter, string plural, string dryRun = default(string), string fieldManager = default(string), string pretty = default(string), CancellationToken cancellationToken = default(CancellationToken))
        {
            using var _result = await operations.CreateNamespacedCustomObjectWithHttpMessagesAsync<T>(body, group, version, namespaceParameter, plural, dryRun, fieldManager, pretty, null, cancellationToken).ConfigureAwait(false);
            return _result.Body;
        }

        /// <summary>
        /// list or watch namespace scoped custom objects
        /// </summary>
        /// <param name='group'>
        /// The custom resource's group name
        /// </param>
        /// <param name='version'>
        /// The custom resource's version
        /// </param>
        /// <param name='namespaceParameter'>
        /// The custom resource's namespace
        /// </param>
        /// <param name='plural'>
        /// The custom resource's plural name. For TPRs this would be lowercase plural
        /// kind.
        /// </param>
        /// <param name='allowWatchBookmarks'>
        /// allowWatchBookmarks requests watch events with type "BOOKMARK". Servers
        /// that do not implement bookmarks may ignore this flag and bookmarks are sent
        /// at the server's discretion. Clients should not assume bookmarks are
        /// returned at any specific interval, nor may they assume the server will send
        /// any BOOKMARK event during a session. If this is not a watch, this field is
        /// ignored. If the feature gate WatchBookmarks is not enabled in apiserver,
        /// this field is ignored.
        /// </param>
        /// <param name='continueParameter'>
        /// The continue option should be set when retrieving more results from the
        /// server. Since this value is server defined, clients may only use the
        /// continue value from a previous query result with identical query parameters
        /// (except for the value of continue) and the server may reject a continue
        /// value it does not recognize. If the specified continue value is no longer
        /// valid whether due to expiration (generally five to fifteen minutes) or a
        /// configuration change on the server, the server will respond with a 410
        /// ResourceExpired error together with a continue token. If the client needs a
        /// consistent list, it must restart their list without the continue field.
        /// Otherwise, the client may send another list request with the token received
        /// with the 410 error, the server will respond with a list starting from the
        /// next key, but from the latest snapshot, which is inconsistent from the
        /// previous list results - objects that are created, modified, or deleted
        /// after the first list request will be included in the response, as long as
        /// their keys are after the "next key".
        ///
        /// This field is not supported when watch is true. Clients may start a watch
        /// from the last resourceVersion value returned by the server and not miss any
        /// modifications.
        /// </param>
        /// <param name='fieldSelector'>
        /// A selector to restrict the list of returned objects by their fields.
        /// Defaults to everything.
        /// </param>
        /// <param name='labelSelector'>
        /// A selector to restrict the list of returned objects by their labels.
        /// Defaults to everything.
        /// </param>
        /// <param name='limit'>
        /// limit is a maximum number of responses to return for a list call. If more
        /// items exist, the server will set the `continue` field on the list metadata
        /// to a value that can be used with the same initial query to retrieve the
        /// next set of results. Setting a limit may return fewer than the requested
        /// amount of items (up to zero items) in the event all requested objects are
        /// filtered out and clients should only use the presence of the continue field
        /// to determine whether more results are available. Servers may choose not to
        /// support the limit argument and will return all of the available results. If
        /// limit is specified and the continue field is empty, clients may assume that
        /// no more results are available. This field is not supported if watch is
        /// true.
        ///
        /// The server guarantees that the objects returned when using continue will be
        /// identical to issuing a single list call without a limit - that is, no
        /// objects created, modified, or deleted after the first request is issued
        /// will be included in any subsequent continued requests. This is sometimes
        /// referred to as a consistent snapshot, and ensures that a client that is
        /// using limit to receive smaller chunks of a very large result can ensure
        /// they see all possible objects. If objects are updated during a chunked list
        /// the version of the object that was present at the time the first list
        /// result was calculated is returned.
        /// </param>
        /// <param name='resourceVersion'>
        /// When specified with a watch call, shows changes that occur after that
        /// particular version of a resource. Defaults to changes from the beginning of
        /// history. When specified for list: - if unset, then the result is returned
        /// from remote storage based on quorum-read flag; - if it's 0, then we simply
        /// return what we currently have in cache, no guarantee; - if set to non zero,
        /// then the result is at least as fresh as given rv.
        /// </param>
        /// <param name='resourceVersionMatch'>
        /// resourceVersionMatch determines how resourceVersion is applied to list
        /// calls. It is highly recommended that resourceVersionMatch be set for list
        /// calls where resourceVersion is set See
        /// https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions
        /// for details.
        ///
        /// Defaults to unset
        /// </param>
        /// <param name='timeoutSeconds'>
        /// Timeout for the list/watch call. This limits the duration of the call,
        /// regardless of any activity or inactivity.
        /// </param>
        /// <param name='watch'>
        /// Watch for changes to the described resources and return them as a stream of
        /// add, update, and remove notifications.
        /// </param>
        /// <param name='pretty'>
        /// If 'true', then the output is pretty printed.
        /// </param>
        /// <param name='customHeaders'>
        /// Headers that will be added to request.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        /// <exception cref="HttpOperationException">
        /// Thrown when the operation returned an invalid status code
        /// </exception>
        /// <exception cref="SerializationException">
        /// Thrown when unable to deserialize the response
        /// </exception>
        /// <exception cref="ValidationException">
        /// Thrown when a required parameter is null
        /// </exception>
        /// <exception cref="System.ArgumentNullException">
        /// Thrown when a required parameter is null
        /// </exception>
        /// <return>
        /// A response object containing the response body and response headers.
        /// </return>
        public static async Task<HttpOperationResponse<T>> ListNamespacedCustomObjectWithHttpMessagesAsync<T>(this IKubernetes kubernetes, string group, string version, string namespaceParameter, string plural, bool? allowWatchBookmarks = default, string continueParameter = default, string fieldSelector = default, string labelSelector = default, int? limit = default, string resourceVersion = default, string resourceVersionMatch = default, int? timeoutSeconds = default, bool? watch = default, string pretty = default, Dictionary<string, List<string>> customHeaders = null, CancellationToken cancellationToken = default)
        {
            if (group == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "group");
            }
            if (version == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "version");
            }
            if (namespaceParameter == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "namespaceParameter");
            }
            if (plural == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "plural");
            }
            // Tracing
            bool _shouldTrace = ServiceClientTracing.IsEnabled;
            string _invocationId = null;
            if (_shouldTrace)
            {
                _invocationId = ServiceClientTracing.NextInvocationId.ToString();
                var tracingParameters = new Dictionary<string, object>
                {
                    { "allowWatchBookmarks", allowWatchBookmarks },
                    { "continueParameter", continueParameter },
                    { "fieldSelector", fieldSelector },
                    { "labelSelector", labelSelector },
                    { "limit", limit },
                    { "resourceVersion", resourceVersion },
                    { "resourceVersionMatch", resourceVersionMatch },
                    { "timeoutSeconds", timeoutSeconds },
                    { "watch", watch },
                    { "pretty", pretty },
                    { "group", group },
                    { "version", version },
                    { "namespaceParameter", namespaceParameter },
                    { "plural", plural },
                    { "cancellationToken", cancellationToken }
                };
                ServiceClientTracing.Enter(_invocationId, kubernetes, $"ListNamespaced{typeof(T).Name}", tracingParameters);
            }
            // Construct URL
            var _baseUrl = kubernetes.BaseUri.AbsoluteUri;
            var _url = new System.Uri(new System.Uri(_baseUrl + (_baseUrl.EndsWith("/") ? "" : "/")), "apis/{group}/{version}/namespaces/{namespace}/{plural}").ToString();
            _url = _url.Replace("{group}", System.Uri.EscapeDataString(group));
            _url = _url.Replace("{version}", System.Uri.EscapeDataString(version));
            _url = _url.Replace("{namespace}", System.Uri.EscapeDataString(namespaceParameter));
            _url = _url.Replace("{plural}", System.Uri.EscapeDataString(plural));
            var _queryParameters = new List<string>();
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
            var _httpRequest = new HttpRequestMessage
            {
                Method = new HttpMethod("GET"),
                RequestUri = new System.Uri(_url)
            };
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
            HttpResponseMessage _httpResponse = await kubernetes.HttpClient.SendAsync(_httpRequest, cancellationToken).ConfigureAwait(false);
            if (_shouldTrace)
            {
                ServiceClientTracing.ReceiveResponse(_invocationId, _httpResponse);
            }
            HttpStatusCode _statusCode = _httpResponse.StatusCode;
            cancellationToken.ThrowIfCancellationRequested();
            string _responseContent;
            if ((int)_statusCode != 200)
            {
                var ex = new HttpOperationException(string.Format("Operation returned an invalid status code '{0}'", _statusCode));
                if (_httpResponse.Content != null)
                {
                    _responseContent = await _httpResponse.Content.ReadAsStringAsync(cancellationToken).ConfigureAwait(false);
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
            var _result = new HttpOperationResponse<T>
            {
                Request = _httpRequest,
                Response = _httpResponse
            };
            // Deserialize Response
            if ((int)_statusCode == 200)
            {
                _responseContent = await _httpResponse.Content.ReadAsStringAsync(cancellationToken).ConfigureAwait(false);
                try
                {
                    _result.Body = SafeJsonConvert.DeserializeObject<T>(_responseContent, kubernetes.DeserializationSettings);
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

        public static async Task<HttpOperationResponse<KServiceList>> ListNamespacedKServiceWithHttpMessagesAsync(this IKubernetes kubernetes, string @namespace, bool? allowWatchBookmarks = default, string continueParameter = default, string fieldSelector = default, string labelSelector = default, int? limit = default, string resourceVersion = default, string resourceVersionMatch = default, int? timeoutSeconds = default, bool? watch = default, string pretty = default, Dictionary<string, List<string>> customHeaders = null, CancellationToken cancellationToken = default)
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
                var tracingParameters = new Dictionary<string, object>
                {
                    { "allowWatchBookmarks", allowWatchBookmarks },
                    { "continueParameter", continueParameter },
                    { "fieldSelector", fieldSelector },
                    { "labelSelector", labelSelector },
                    { "limit", limit },
                    { "resourceVersion", resourceVersion },
                    { "resourceVersionMatch", resourceVersionMatch },
                    { "timeoutSeconds", timeoutSeconds },
                    { "watch", watch },
                    { "pretty", pretty },
                    { "group", group },
                    { "version", version },
                    { "namespaceParameter", @namespace },
                    { "plural", plural },
                    { "cancellationToken", cancellationToken }
                };
                ServiceClientTracing.Enter(_invocationId, kubernetes, "ListNamespacedKService", tracingParameters);
            }
            // Construct URL
            var _baseUrl = kubernetes.BaseUri.AbsoluteUri;
            var _url = new System.Uri(new System.Uri(_baseUrl + (_baseUrl.EndsWith("/") ? "" : "/")), "apis/{group}/{version}/namespaces/{namespace}/{plural}").ToString();
            _url = _url.Replace("{group}", System.Uri.EscapeDataString(group));
            _url = _url.Replace("{version}", System.Uri.EscapeDataString(version));
            _url = _url.Replace("{namespace}", System.Uri.EscapeDataString(@namespace));
            _url = _url.Replace("{plural}", System.Uri.EscapeDataString(plural));
            var _queryParameters = new List<string>();
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
            var _httpRequest = new HttpRequestMessage
            {
                Method = new HttpMethod("GET"),
                RequestUri = new System.Uri(_url)
            };

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
            HttpResponseMessage _httpResponse = await kubernetes.HttpClient.SendAsync(_httpRequest, cancellationToken).ConfigureAwait(false);
            if (_shouldTrace)
            {
                ServiceClientTracing.ReceiveResponse(_invocationId, _httpResponse);
            }
            HttpStatusCode _statusCode = _httpResponse.StatusCode;
            cancellationToken.ThrowIfCancellationRequested();
            string _responseContent;
            if ((int)_statusCode != 200)
            {
                var ex = new HttpOperationException(string.Format("Operation returned an invalid status code '{0}'", _statusCode));
                if (_httpResponse.Content != null)
                {
                    _responseContent = await _httpResponse.Content.ReadAsStringAsync(cancellationToken).ConfigureAwait(false);
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
            var _result = new HttpOperationResponse<KServiceList>
            {
                Request = _httpRequest,
                Response = _httpResponse
            };

            // Deserialize Response
            if ((int)_statusCode == 200)
            {
                _responseContent = await _httpResponse.Content.ReadAsStringAsync(cancellationToken).ConfigureAwait(false);
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

        public static async Task<KService> CreateNamespacedKServiceAsync(this IKubernetes operations, KService body, string namespaceParameter, string dryRun = default(string), string fieldManager = default(string), string pretty = default(string), CancellationToken cancellationToken = default(CancellationToken))
        {
            var group = "serving.knative.dev";
            var version = "v1";
            var plural = "services";

            body.ApiVersion = $"{group}/{version}";

            using var _result = await operations.CreateNamespacedCustomObjectWithHttpMessagesAsync<KService>(body, group, version, namespaceParameter, plural, dryRun, fieldManager, pretty, null, cancellationToken).ConfigureAwait(false);
            return _result.Body;
        }
    }
}
