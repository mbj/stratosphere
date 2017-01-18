{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html

module Stratosphere.ResourceProperties.ApiGatewayMethodIntegrationResponse where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayMethodIntegrationResponse. See
-- | 'apiGatewayMethodIntegrationResponse' for a more convenient constructor.
data ApiGatewayMethodIntegrationResponse =
  ApiGatewayMethodIntegrationResponse
  { _apiGatewayMethodIntegrationResponseResponseParameters :: Maybe Object
  , _apiGatewayMethodIntegrationResponseResponseTemplates :: Maybe Object
  , _apiGatewayMethodIntegrationResponseSelectionPattern :: Maybe (Val Text)
  , _apiGatewayMethodIntegrationResponseStatusCode :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayMethodIntegrationResponse where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

instance FromJSON ApiGatewayMethodIntegrationResponse where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

-- | Constructor for 'ApiGatewayMethodIntegrationResponse' containing required
-- | fields as arguments.
apiGatewayMethodIntegrationResponse
  :: ApiGatewayMethodIntegrationResponse
apiGatewayMethodIntegrationResponse  =
  ApiGatewayMethodIntegrationResponse
  { _apiGatewayMethodIntegrationResponseResponseParameters = Nothing
  , _apiGatewayMethodIntegrationResponseResponseTemplates = Nothing
  , _apiGatewayMethodIntegrationResponseSelectionPattern = Nothing
  , _apiGatewayMethodIntegrationResponseStatusCode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-responseparameters
agmirResponseParameters :: Lens' ApiGatewayMethodIntegrationResponse (Maybe Object)
agmirResponseParameters = lens _apiGatewayMethodIntegrationResponseResponseParameters (\s a -> s { _apiGatewayMethodIntegrationResponseResponseParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-responsetemplates
agmirResponseTemplates :: Lens' ApiGatewayMethodIntegrationResponse (Maybe Object)
agmirResponseTemplates = lens _apiGatewayMethodIntegrationResponseResponseTemplates (\s a -> s { _apiGatewayMethodIntegrationResponseResponseTemplates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-selectionpattern
agmirSelectionPattern :: Lens' ApiGatewayMethodIntegrationResponse (Maybe (Val Text))
agmirSelectionPattern = lens _apiGatewayMethodIntegrationResponseSelectionPattern (\s a -> s { _apiGatewayMethodIntegrationResponseSelectionPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-statuscode
agmirStatusCode :: Lens' ApiGatewayMethodIntegrationResponse (Maybe (Val Text))
agmirStatusCode = lens _apiGatewayMethodIntegrationResponseStatusCode (\s a -> s { _apiGatewayMethodIntegrationResponseStatusCode = a })
