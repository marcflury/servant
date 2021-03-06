module Servant.API (

  -- * Combinators
  module Servant.API.Sub,
  -- | Type-level combinator for expressing subrouting: @':>'@
  module Servant.API.Alternative,
  -- | Type-level combinator for alternative endpoints: @':<|>'@
  module Servant.API.Empty,
  -- | Type-level combinator for an empty API: @'EmptyAPI'@

  -- * Accessing information from the request
  module Servant.API.Capture,
  -- | Capturing parts of the url path as parsed values: @'Capture'@ and @'CaptureAll'@
  module Servant.API.Header,
  -- | Retrieving specific headers from the request
  module Servant.API.HttpVersion,
  -- | Retrieving the HTTP version of the request
  module Servant.API.QueryParam,
  -- | Retrieving parameters from the query string of the 'URI': @'QueryParam'@
  module Servant.API.ReqBody,
  -- | Accessing the request body as a JSON-encoded type: @'ReqBody'@
  module Servant.API.RemoteHost,
  -- | Retrieving the IP of the client
  module Servant.API.IsSecure,
  -- | Is the request made through HTTPS?
  module Servant.API.Vault,
  -- | Access the location for arbitrary data to be shared by applications and middleware
  module Servant.API.WithNamedContext,
  -- | Access context entries in combinators in servant-server

  -- * Actual endpoints, distinguished by HTTP method
  module Servant.API.Verbs,

  -- * Authentication
  module Servant.API.BasicAuth,

  -- * Endpoints description
  module Servant.API.Description,

  -- * Content Types
  module Servant.API.ContentTypes,
  -- | Serializing and deserializing types based on @Accept@ and
  -- @Content-Type@ headers.

  -- * Response Headers
  module Servant.API.ResponseHeaders,

  -- * Untyped endpoints
  module Servant.API.Raw,
  -- | Plugging in a wai 'Network.Wai.Application', serving directories

  -- * FromHttpApiData and ToHttpApiData
  module Web.HttpApiData,
  -- | Classes and instances for types that can be converted to and from HTTP API data.


  -- * Experimental modules
  module Servant.API.Experimental.Auth,
  -- | General Authentication

  -- * Utilities
  module Servant.Utils.Links,
  -- | Type-safe internal URIs
  ) where

import           Servant.API.Alternative     ((:<|>) (..))
import           Servant.API.BasicAuth       (BasicAuth,BasicAuthData(..))
import           Servant.API.Capture         (Capture, CaptureAll)
import           Servant.API.ContentTypes    (Accept (..), FormUrlEncoded,
                                              JSON,
                                              MimeRender (..), NoContent (NoContent),
                                              MimeUnrender (..), OctetStream,
                                              PlainText)
import           Servant.API.Description     (Description, Summary)
import           Servant.API.Empty           (EmptyAPI (..))
import           Servant.API.Experimental.Auth (AuthProtect)
import           Servant.API.Header          (Header (..))
import           Servant.API.HttpVersion     (HttpVersion (..))
import           Servant.API.IsSecure        (IsSecure (..))
import           Servant.API.QueryParam      (QueryFlag, QueryParam,
                                              QueryParams)
import           Servant.API.Raw             (Raw)
import           Servant.API.RemoteHost      (RemoteHost)
import           Servant.API.ReqBody         (ReqBody)
import           Servant.API.ResponseHeaders (AddHeader, addHeader, noHeader,
                                              BuildHeadersTo (buildHeadersTo),
                                              GetHeaders (getHeaders),
                                              HList (..), Headers (..),
                                              getHeadersHList, getResponse)
import           Servant.API.Sub             ((:>))
import           Servant.API.Vault           (Vault)
import           Servant.API.Verbs           (PostCreated, Delete, DeleteAccepted,
                                              DeleteNoContent,
                                              DeleteNonAuthoritative, Get,
                                              GetAccepted, GetNoContent,
                                              GetNonAuthoritative,
                                              GetPartialContent,
                                              GetResetContent,
                                              Patch,
                                              PatchAccepted, PatchNoContent,
                                              PatchNoContent,
                                              PatchNonAuthoritative, Post,
                                              PostAccepted, PostNoContent,
                                              PostNonAuthoritative,
                                              PostResetContent, Put,
                                              PutAccepted, PutNoContent,
                                              PutNoContent, PutNonAuthoritative,
                                              ReflectMethod (reflectMethod),
                                              Verb, StdMethod(..))
import           Servant.API.WithNamedContext (WithNamedContext)
import           Servant.Utils.Links         (HasLink (..), Link, IsElem, IsElem',
                                              URI (..), safeLink)
import           Web.HttpApiData             (FromHttpApiData (..),
                                              ToHttpApiData (..))
