{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Integration is a property of the AWS::ApiGateway::Method resource that
-- specifies information about the target back end that an Amazon API Gateway
-- (API Gateway) method calls.

module Stratosphere.ResourceProperties.ApiGatewayIntegration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayIntegrationResponse
import Stratosphere.Types

-- | Full data type definition for ApiGatewayIntegration. See
-- 'apiGatewayIntegration' for a more convenient constructor.
data ApiGatewayIntegration =
  ApiGatewayIntegration
  { _apiGatewayIntegrationCacheKeyParameters :: Maybe [Val Text]
  , _apiGatewayIntegrationCacheNamespace :: Maybe (Val Text)
  , _apiGatewayIntegrationCredentials :: Maybe (Val Text)
  , _apiGatewayIntegrationIntegrationHttpMethod :: Maybe HttpMethod
  , _apiGatewayIntegrationIntegrationResponses :: Maybe [ApiGatewayIntegrationResponse]
  , _apiGatewayIntegrationPassthroughBehavior :: Maybe (Val Text)
  , _apiGatewayIntegrationRequestParameters :: Maybe Object
  , _apiGatewayIntegrationRequestTemplates :: Maybe Object
  , _apiGatewayIntegrationType :: ApiBackendType
  , _apiGatewayIntegrationUri :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayIntegration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON ApiGatewayIntegration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'ApiGatewayIntegration' containing required fields as
-- arguments.
apiGatewayIntegration
  :: ApiBackendType -- ^ 'agiType'
  -> ApiGatewayIntegration
apiGatewayIntegration typearg =
  ApiGatewayIntegration
  { _apiGatewayIntegrationCacheKeyParameters = Nothing
  , _apiGatewayIntegrationCacheNamespace = Nothing
  , _apiGatewayIntegrationCredentials = Nothing
  , _apiGatewayIntegrationIntegrationHttpMethod = Nothing
  , _apiGatewayIntegrationIntegrationResponses = Nothing
  , _apiGatewayIntegrationPassthroughBehavior = Nothing
  , _apiGatewayIntegrationRequestParameters = Nothing
  , _apiGatewayIntegrationRequestTemplates = Nothing
  , _apiGatewayIntegrationType = typearg
  , _apiGatewayIntegrationUri = Nothing
  }

-- | A list of request parameters whose values API Gateway will cache.
agiCacheKeyParameters :: Lens' ApiGatewayIntegration (Maybe [Val Text])
agiCacheKeyParameters = lens _apiGatewayIntegrationCacheKeyParameters (\s a -> s { _apiGatewayIntegrationCacheKeyParameters = a })

-- | An API-specific tag group of related cached parameters.
agiCacheNamespace :: Lens' ApiGatewayIntegration (Maybe (Val Text))
agiCacheNamespace = lens _apiGatewayIntegrationCacheNamespace (\s a -> s { _apiGatewayIntegrationCacheNamespace = a })

-- | The credentials required for the integration. To specify an AWS Identity
-- and Access Management (IAM) role that API Gateway assumes, specify the
-- role's Amazon Resource Name (ARN). To require that the caller's identity be
-- passed through from the request, specify arn:aws:iam::*:user/*. To use
-- resource-based permissions on the AWS Lambda (Lambda) function, don't
-- specify this property. Use the AWS::Lambda::Permission resource to permit
-- API Gateway to call the function. For more information, see Allow Amazon
-- API Gateway to Invoke a Lambda Function in the AWS Lambda Developer Guide.
agiCredentials :: Lens' ApiGatewayIntegration (Maybe (Val Text))
agiCredentials = lens _apiGatewayIntegrationCredentials (\s a -> s { _apiGatewayIntegrationCredentials = a })

-- | The integration's HTTP method type.
agiIntegrationHttpMethod :: Lens' ApiGatewayIntegration (Maybe HttpMethod)
agiIntegrationHttpMethod = lens _apiGatewayIntegrationIntegrationHttpMethod (\s a -> s { _apiGatewayIntegrationIntegrationHttpMethod = a })

-- | The response that API Gateway provides after a method's back end
-- completes processing a request. API Gateway intercepts the back end's
-- response so that you can control how API Gateway surfaces back-end
-- responses. For example, you can map the back-end status codes to codes that
-- you define.
agiIntegrationResponses :: Lens' ApiGatewayIntegration (Maybe [ApiGatewayIntegrationResponse])
agiIntegrationResponses = lens _apiGatewayIntegrationIntegrationResponses (\s a -> s { _apiGatewayIntegrationIntegrationResponses = a })

-- | Indicates when API Gateway passes requests to the targeted back end. This
-- behavior depends on the request's Content-Type header and whether you
-- defined a mapping template for it. For more information and valid values,
-- see the passthroughBehavior field in the API Gateway API Reference.
agiPassthroughBehavior :: Lens' ApiGatewayIntegration (Maybe (Val Text))
agiPassthroughBehavior = lens _apiGatewayIntegrationPassthroughBehavior (\s a -> s { _apiGatewayIntegrationPassthroughBehavior = a })

-- | The request parameters that API Gateway sends with the back-end request.
-- Specify request parameters as key-value pairs (string-to-string maps), with
-- a destination as the key and a source as the value. Specify the destination
-- using the following pattern integration.request.location.name, where
-- location is querystring, path, or header, and name is a valid, unique
-- parameter name. The source must be an existing method request parameter or
-- a static value. Static values must be enclosed in single quotation marks
-- and pre-encoded based on their destination in the request.
agiRequestParameters :: Lens' ApiGatewayIntegration (Maybe Object)
agiRequestParameters = lens _apiGatewayIntegrationRequestParameters (\s a -> s { _apiGatewayIntegrationRequestParameters = a })

-- | A map of Apache Velocity templates that are applied on the request
-- payload. The template that API Gateway uses is based on the value of the
-- Content-Type header sent by the client. The content type value is the key,
-- and the template is the value (specified as a string), such as the
-- following snippet: For more information about templates, see API Gateway
-- API Request and Response Payload-Mapping Template Reference in the API
-- Gateway Developer Guide.
agiRequestTemplates :: Lens' ApiGatewayIntegration (Maybe Object)
agiRequestTemplates = lens _apiGatewayIntegrationRequestTemplates (\s a -> s { _apiGatewayIntegrationRequestTemplates = a })

-- | The type of back end your method is running, such as HTTP, AWS, or MOCK.
-- For valid values, see the type property in the Amazon API Gateway REST API
-- Reference.
agiType :: Lens' ApiGatewayIntegration ApiBackendType
agiType = lens _apiGatewayIntegrationType (\s a -> s { _apiGatewayIntegrationType = a })

-- | The integration's Uniform Resource Identifier (URI). If you specify HTTP
-- for the Type property, specify the API endpoint URL. If you specify MOCK
-- for the Type property, don't specify this property. If you specify AWS for
-- the Type property, specify an AWS service that follows the form:
-- arn:aws:apigateway:region:subdomain.service|service:path|action/service_api.
-- For example, a Lambda function URI follows the form:
-- arn:aws:apigateway:region:lambda:path/path. The path is usually in the form
-- /2015-03-31/functions/LambdaFunctionARN/invocations. For more information,
-- see the uri property of the Integration resource in the Amazon API Gateway
-- REST API Reference.
agiUri :: Lens' ApiGatewayIntegration (Maybe (Val Text))
agiUri = lens _apiGatewayIntegrationUri (\s a -> s { _apiGatewayIntegrationUri = a })