{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html

module Stratosphere.ResourceProperties.ApiGatewayMethodIntegrationResponse where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayMethodIntegrationResponse. See
-- 'apiGatewayMethodIntegrationResponse' for a more convenient constructor.
data ApiGatewayMethodIntegrationResponse =
  ApiGatewayMethodIntegrationResponse
  { _apiGatewayMethodIntegrationResponseResponseParameters :: Maybe Object
  , _apiGatewayMethodIntegrationResponseResponseTemplates :: Maybe Object
  , _apiGatewayMethodIntegrationResponseSelectionPattern :: Maybe (Val Text)
  , _apiGatewayMethodIntegrationResponseStatusCode :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApiGatewayMethodIntegrationResponse where
  toJSON ApiGatewayMethodIntegrationResponse{..} =
    object $
    catMaybes
    [ fmap (("ResponseParameters",) . toJSON) _apiGatewayMethodIntegrationResponseResponseParameters
    , fmap (("ResponseTemplates",) . toJSON) _apiGatewayMethodIntegrationResponseResponseTemplates
    , fmap (("SelectionPattern",) . toJSON) _apiGatewayMethodIntegrationResponseSelectionPattern
    , (Just . ("StatusCode",) . toJSON) _apiGatewayMethodIntegrationResponseStatusCode
    ]

instance FromJSON ApiGatewayMethodIntegrationResponse where
  parseJSON (Object obj) =
    ApiGatewayMethodIntegrationResponse <$>
      (obj .:? "ResponseParameters") <*>
      (obj .:? "ResponseTemplates") <*>
      (obj .:? "SelectionPattern") <*>
      (obj .: "StatusCode")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayMethodIntegrationResponse' containing required
-- fields as arguments.
apiGatewayMethodIntegrationResponse
  :: Val Text -- ^ 'agmirStatusCode'
  -> ApiGatewayMethodIntegrationResponse
apiGatewayMethodIntegrationResponse statusCodearg =
  ApiGatewayMethodIntegrationResponse
  { _apiGatewayMethodIntegrationResponseResponseParameters = Nothing
  , _apiGatewayMethodIntegrationResponseResponseTemplates = Nothing
  , _apiGatewayMethodIntegrationResponseSelectionPattern = Nothing
  , _apiGatewayMethodIntegrationResponseStatusCode = statusCodearg
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
agmirStatusCode :: Lens' ApiGatewayMethodIntegrationResponse (Val Text)
agmirStatusCode = lens _apiGatewayMethodIntegrationResponseStatusCode (\s a -> s { _apiGatewayMethodIntegrationResponseStatusCode = a })
