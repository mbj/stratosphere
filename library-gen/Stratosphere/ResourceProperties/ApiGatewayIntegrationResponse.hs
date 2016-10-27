{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | IntegrationResponse is a property of the Amazon API Gateway Method
-- Integration property that specifies the response that Amazon API Gateway
-- (API Gateway) sends after a method's back end finishes processing a
-- request.

module Stratosphere.ResourceProperties.ApiGatewayIntegrationResponse where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayIntegrationResponse. See
-- 'apiGatewayIntegrationResponse' for a more convenient constructor.
data ApiGatewayIntegrationResponse =
  ApiGatewayIntegrationResponse
  { _apiGatewayIntegrationResponseResponseParameters :: Maybe Object
  , _apiGatewayIntegrationResponseResponseTemplates :: Maybe Object
  , _apiGatewayIntegrationResponseSelectionPattern :: Maybe (Val Text)
  , _apiGatewayIntegrationResponseStatusCode :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayIntegrationResponse where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON ApiGatewayIntegrationResponse where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'ApiGatewayIntegrationResponse' containing required
-- fields as arguments.
apiGatewayIntegrationResponse
  :: ApiGatewayIntegrationResponse
apiGatewayIntegrationResponse  =
  ApiGatewayIntegrationResponse
  { _apiGatewayIntegrationResponseResponseParameters = Nothing
  , _apiGatewayIntegrationResponseResponseTemplates = Nothing
  , _apiGatewayIntegrationResponseSelectionPattern = Nothing
  , _apiGatewayIntegrationResponseStatusCode = Nothing
  }

-- | The response parameters from the back-end response that API Gateway sends
-- to the method response. Specify response parameters as key-value pairs
-- (string-to-string maps), with a destination as the key and a source as the
-- value. For more information, see API Gateway API Request and Response
-- Parameter-Mapping Reference in the API Gateway Developer Guide. The
-- destination must be an existing response parameter in the MethodResponse
-- property. The source must be an existing method request parameter or a
-- static value. Static values must be enclosed in single quotation marks and
-- pre-encoded based on their destination in the request.
agirResponseParameters :: Lens' ApiGatewayIntegrationResponse (Maybe Object)
agirResponseParameters = lens _apiGatewayIntegrationResponseResponseParameters (\s a -> s { _apiGatewayIntegrationResponseResponseParameters = a })

-- | The templates used to transform the integration response body. Specify
-- templates as key-value pairs (string-to-string maps), with a content type
-- as the key and a template as the value. For more information, see API
-- Gateway API Request and Response Payload-Mapping Template Reference in the
-- API Gateway Developer Guide.
agirResponseTemplates :: Lens' ApiGatewayIntegrationResponse (Maybe Object)
agirResponseTemplates = lens _apiGatewayIntegrationResponseResponseTemplates (\s a -> s { _apiGatewayIntegrationResponseResponseTemplates = a })

-- | A regular expression that specifies which error strings or status codes
-- from the back end map to the integration response.
agirSelectionPattern :: Lens' ApiGatewayIntegrationResponse (Maybe (Val Text))
agirSelectionPattern = lens _apiGatewayIntegrationResponseSelectionPattern (\s a -> s { _apiGatewayIntegrationResponseSelectionPattern = a })

-- | The status code that API Gateway uses to map the integration response to
-- a MethodResponse status code.
agirStatusCode :: Lens' ApiGatewayIntegrationResponse (Maybe (Val Text))
agirStatusCode = lens _apiGatewayIntegrationResponseStatusCode (\s a -> s { _apiGatewayIntegrationResponseStatusCode = a })