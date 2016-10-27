{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::Method resource creates Amazon API Gateway (API
-- Gateway) methods that define the parameters and body that clients must send
-- in their requests.

module Stratosphere.Resources.ApiGatewayMethod where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayIntegration
import Stratosphere.ResourceProperties.ApiGatewayMethodResponse

-- | Full data type definition for ApiGatewayMethod. See 'apiGatewayMethod'
-- for a more convenient constructor.
data ApiGatewayMethod =
  ApiGatewayMethod
  { _apiGatewayMethodApiKeyRequired :: Maybe (Val Bool')
  , _apiGatewayMethodAuthorizationType :: Val Text
  , _apiGatewayMethodAuthorizerId :: Maybe (Val Text)
  , _apiGatewayMethodHttpMethod :: Val Text
  , _apiGatewayMethodIntegration :: Maybe ApiGatewayIntegration
  , _apiGatewayMethodMethodResponses :: Maybe [ApiGatewayMethodResponse]
  , _apiGatewayMethodRequestModels :: Maybe Object
  , _apiGatewayMethodRequestParameters :: Maybe Object
  , _apiGatewayMethodResourceId :: Val Text
  , _apiGatewayMethodRestApiId :: Val Text
  } deriving (Show, Generic)

instance ToJSON ApiGatewayMethod where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON ApiGatewayMethod where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'ApiGatewayMethod' containing required fields as
-- arguments.
apiGatewayMethod
  :: Val Text -- ^ 'agmeAuthorizationType'
  -> Val Text -- ^ 'agmeHttpMethod'
  -> Val Text -- ^ 'agmeResourceId'
  -> Val Text -- ^ 'agmeRestApiId'
  -> ApiGatewayMethod
apiGatewayMethod authorizationTypearg httpMethodarg resourceIdarg restApiIdarg =
  ApiGatewayMethod
  { _apiGatewayMethodApiKeyRequired = Nothing
  , _apiGatewayMethodAuthorizationType = authorizationTypearg
  , _apiGatewayMethodAuthorizerId = Nothing
  , _apiGatewayMethodHttpMethod = httpMethodarg
  , _apiGatewayMethodIntegration = Nothing
  , _apiGatewayMethodMethodResponses = Nothing
  , _apiGatewayMethodRequestModels = Nothing
  , _apiGatewayMethodRequestParameters = Nothing
  , _apiGatewayMethodResourceId = resourceIdarg
  , _apiGatewayMethodRestApiId = restApiIdarg
  }

-- | Indicates whether the method requires clients to submit a valid API key.
agmeApiKeyRequired :: Lens' ApiGatewayMethod (Maybe (Val Bool'))
agmeApiKeyRequired = lens _apiGatewayMethodApiKeyRequired (\s a -> s { _apiGatewayMethodApiKeyRequired = a })

-- | The method's authorization type.
agmeAuthorizationType :: Lens' ApiGatewayMethod (Val Text)
agmeAuthorizationType = lens _apiGatewayMethodAuthorizationType (\s a -> s { _apiGatewayMethodAuthorizationType = a })

-- | The identifier of the authorizer to use on this method. If you specify
-- this property, specify CUSTOM for the AuthorizationType property.
agmeAuthorizerId :: Lens' ApiGatewayMethod (Maybe (Val Text))
agmeAuthorizerId = lens _apiGatewayMethodAuthorizerId (\s a -> s { _apiGatewayMethodAuthorizerId = a })

-- | The HTTP method that clients will use to call this method.
agmeHttpMethod :: Lens' ApiGatewayMethod (Val Text)
agmeHttpMethod = lens _apiGatewayMethodHttpMethod (\s a -> s { _apiGatewayMethodHttpMethod = a })

-- | The back-end system that the method calls when it receives a request.
agmeIntegration :: Lens' ApiGatewayMethod (Maybe ApiGatewayIntegration)
agmeIntegration = lens _apiGatewayMethodIntegration (\s a -> s { _apiGatewayMethodIntegration = a })

-- | The responses that can be sent to the client who calls the method.
agmeMethodResponses :: Lens' ApiGatewayMethod (Maybe [ApiGatewayMethodResponse])
agmeMethodResponses = lens _apiGatewayMethodMethodResponses (\s a -> s { _apiGatewayMethodMethodResponses = a })

-- | The resources used for the response's content type. Specify response
-- models as key-value pairs (string-to-string map), with a content type as
-- the key and a Model resource name as the value.
agmeRequestModels :: Lens' ApiGatewayMethod (Maybe Object)
agmeRequestModels = lens _apiGatewayMethodRequestModels (\s a -> s { _apiGatewayMethodRequestModels = a })

-- | Request parameters that API Gateway accepts. Specify request parameters
-- as key-value pairs (string-to-Boolean map), with a source as the key and a
-- Boolean as the value. The Boolean specifies whether a parameter is
-- required. A source must match the following format
-- method.request.location.name, where the location is querystring, path, or
-- header, and name is a valid, unique parameter name.
agmeRequestParameters :: Lens' ApiGatewayMethod (Maybe Object)
agmeRequestParameters = lens _apiGatewayMethodRequestParameters (\s a -> s { _apiGatewayMethodRequestParameters = a })

-- | The ID of an API Gateway resource. For root resource methods, specify the
-- RestApi root resource ID, such as { "Fn::GetAtt": ["MyRestApi",
-- "RootResourceId"] }.
agmeResourceId :: Lens' ApiGatewayMethod (Val Text)
agmeResourceId = lens _apiGatewayMethodResourceId (\s a -> s { _apiGatewayMethodResourceId = a })

-- | The ID of the RestApi resource in which API Gateway creates the method.
agmeRestApiId :: Lens' ApiGatewayMethod (Val Text)
agmeRestApiId = lens _apiGatewayMethodRestApiId (\s a -> s { _apiGatewayMethodRestApiId = a })