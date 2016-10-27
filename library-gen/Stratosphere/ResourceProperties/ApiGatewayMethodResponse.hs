{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | MethodResponse is a property of the AWS::ApiGateway::Method resource that
-- defines the responses that can be sent to the client who calls an Amazon
-- API Gateway (API Gateway) method.

module Stratosphere.ResourceProperties.ApiGatewayMethodResponse where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayMethodResponse. See
-- 'apiGatewayMethodResponse' for a more convenient constructor.
data ApiGatewayMethodResponse =
  ApiGatewayMethodResponse
  { _apiGatewayMethodResponseResponseModels :: Maybe Object
  , _apiGatewayMethodResponseResponseParameters :: Maybe Object
  , _apiGatewayMethodResponseStatusCode :: Val Text
  } deriving (Show, Generic)

instance ToJSON ApiGatewayMethodResponse where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON ApiGatewayMethodResponse where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'ApiGatewayMethodResponse' containing required fields as
-- arguments.
apiGatewayMethodResponse
  :: Val Text -- ^ 'agmrStatusCode'
  -> ApiGatewayMethodResponse
apiGatewayMethodResponse statusCodearg =
  ApiGatewayMethodResponse
  { _apiGatewayMethodResponseResponseModels = Nothing
  , _apiGatewayMethodResponseResponseParameters = Nothing
  , _apiGatewayMethodResponseStatusCode = statusCodearg
  }

-- | The resources used for the response's content type. Specify response
-- models as key-value pairs (string-to-string maps), with a content type as
-- the key and a Model resource name as the value.
agmrResponseModels :: Lens' ApiGatewayMethodResponse (Maybe Object)
agmrResponseModels = lens _apiGatewayMethodResponseResponseModels (\s a -> s { _apiGatewayMethodResponseResponseModels = a })

-- | Response parameters that API Gateway sends to the client that called a
-- method. Specify response parameters as key-value pairs (string-to-Boolean
-- maps), with a destination as the key and a Boolean as the value. Specify
-- the destination using the following pattern: method.response.header.name,
-- where the name is a valid, unique header name. The Boolean specifies
-- whether a parameter is required.
agmrResponseParameters :: Lens' ApiGatewayMethodResponse (Maybe Object)
agmrResponseParameters = lens _apiGatewayMethodResponseResponseParameters (\s a -> s { _apiGatewayMethodResponseResponseParameters = a })

-- | The method response's status code, which you map to an
-- IntegrationResponse.
agmrStatusCode :: Lens' ApiGatewayMethodResponse (Val Text)
agmrStatusCode = lens _apiGatewayMethodResponseStatusCode (\s a -> s { _apiGatewayMethodResponseStatusCode = a })