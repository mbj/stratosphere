{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::Method resource creates Amazon API Gateway (API
-- Gateway) methods that define the parameters and body that clients must send
-- in their requests.

module Stratosphere.Resources.ApiGatewayVerb where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayIntegration
import Stratosphere.ResourceProperties.ApiGatewayMethodResponse

-- | Full data type definition for ApiGatewayVerb. See 'apiGatewayVerb' for a
-- more convenient constructor.
data ApiGatewayVerb =
  ApiGatewayVerb
  { _apiGatewayVerbApiKeyRequired :: Maybe (Val Bool')
  , _apiGatewayVerbAuthorizationType :: Val Text
  , _apiGatewayVerbAuthorizerId :: Maybe (Val Text)
  , _apiGatewayVerbHttpMethod :: Val Text
  , _apiGatewayVerbIntegration :: Maybe ApiGatewayIntegration
  , _apiGatewayVerbMethodResponses :: Maybe [ApiGatewayMethodResponse]
  , _apiGatewayVerbRequestModels :: Maybe Object
  , _apiGatewayVerbRequestParameters :: Maybe Object
  , _apiGatewayVerbResourceId :: Val Text
  , _apiGatewayVerbRestApiId :: Val Text
  } deriving (Show, Generic)

instance ToJSON ApiGatewayVerb where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON ApiGatewayVerb where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'ApiGatewayVerb' containing required fields as arguments.
apiGatewayVerb
  :: Val Text -- ^ 'agvAuthorizationType'
  -> Val Text -- ^ 'agvHttpMethod'
  -> Val Text -- ^ 'agvResourceId'
  -> Val Text -- ^ 'agvRestApiId'
  -> ApiGatewayVerb
apiGatewayVerb authorizationTypearg httpMethodarg resourceIdarg restApiIdarg =
  ApiGatewayVerb
  { _apiGatewayVerbApiKeyRequired = Nothing
  , _apiGatewayVerbAuthorizationType = authorizationTypearg
  , _apiGatewayVerbAuthorizerId = Nothing
  , _apiGatewayVerbHttpMethod = httpMethodarg
  , _apiGatewayVerbIntegration = Nothing
  , _apiGatewayVerbMethodResponses = Nothing
  , _apiGatewayVerbRequestModels = Nothing
  , _apiGatewayVerbRequestParameters = Nothing
  , _apiGatewayVerbResourceId = resourceIdarg
  , _apiGatewayVerbRestApiId = restApiIdarg
  }

-- | Indicates whether the method requires clients to submit a valid API key.
agvApiKeyRequired :: Lens' ApiGatewayVerb (Maybe (Val Bool'))
agvApiKeyRequired = lens _apiGatewayVerbApiKeyRequired (\s a -> s { _apiGatewayVerbApiKeyRequired = a })

-- | The method's authorization type.
agvAuthorizationType :: Lens' ApiGatewayVerb (Val Text)
agvAuthorizationType = lens _apiGatewayVerbAuthorizationType (\s a -> s { _apiGatewayVerbAuthorizationType = a })

-- | The identifier of the authorizer to use on this method. If you specify
-- this property, specify CUSTOM for the AuthorizationType property.
agvAuthorizerId :: Lens' ApiGatewayVerb (Maybe (Val Text))
agvAuthorizerId = lens _apiGatewayVerbAuthorizerId (\s a -> s { _apiGatewayVerbAuthorizerId = a })

-- | The HTTP method that clients will use to call this method.
agvHttpMethod :: Lens' ApiGatewayVerb (Val Text)
agvHttpMethod = lens _apiGatewayVerbHttpMethod (\s a -> s { _apiGatewayVerbHttpMethod = a })

-- | The back-end system that the method calls when it receives a request.
agvIntegration :: Lens' ApiGatewayVerb (Maybe ApiGatewayIntegration)
agvIntegration = lens _apiGatewayVerbIntegration (\s a -> s { _apiGatewayVerbIntegration = a })

-- | The responses that can be sent to the client who calls the method.
agvMethodResponses :: Lens' ApiGatewayVerb (Maybe [ApiGatewayMethodResponse])
agvMethodResponses = lens _apiGatewayVerbMethodResponses (\s a -> s { _apiGatewayVerbMethodResponses = a })

-- | The resources used for the response's content type. Specify response
-- models as key-value pairs (string-to-string map), with a content type as
-- the key and a Model resource name as the value.
agvRequestModels :: Lens' ApiGatewayVerb (Maybe Object)
agvRequestModels = lens _apiGatewayVerbRequestModels (\s a -> s { _apiGatewayVerbRequestModels = a })

-- | Request parameters that API Gateway accepts. Specify request parameters
-- as key-value pairs (string-to-Boolean map), with a source as the key and a
-- Boolean as the value. The Boolean specifies whether a parameter is
-- required. A source must match the following format
-- method.request.location.name, where the location is querystring, path, or
-- header, and name is a valid, unique parameter name.
agvRequestParameters :: Lens' ApiGatewayVerb (Maybe Object)
agvRequestParameters = lens _apiGatewayVerbRequestParameters (\s a -> s { _apiGatewayVerbRequestParameters = a })

-- | The ID of an API Gateway resource. For root resource methods, specify the
-- RestApi root resource ID, such as { "Fn::GetAtt": ["MyRestApi",
-- "RootResourceId"] }.
agvResourceId :: Lens' ApiGatewayVerb (Val Text)
agvResourceId = lens _apiGatewayVerbResourceId (\s a -> s { _apiGatewayVerbResourceId = a })

-- | The ID of the RestApi resource in which API Gateway creates the method.
agvRestApiId :: Lens' ApiGatewayVerb (Val Text)
agvRestApiId = lens _apiGatewayVerbRestApiId (\s a -> s { _apiGatewayVerbRestApiId = a })