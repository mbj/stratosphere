{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html

module Stratosphere.ResourceProperties.ApiGatewayMethodMethodResponse where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayMethodMethodResponse. See
-- 'apiGatewayMethodMethodResponse' for a more convenient constructor.
data ApiGatewayMethodMethodResponse =
  ApiGatewayMethodMethodResponse
  { _apiGatewayMethodMethodResponseResponseModels :: Maybe Object
  , _apiGatewayMethodMethodResponseResponseParameters :: Maybe Object
  , _apiGatewayMethodMethodResponseStatusCode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayMethodMethodResponse where
  toJSON ApiGatewayMethodMethodResponse{..} =
    object $
    catMaybes
    [ fmap (("ResponseModels",) . toJSON) _apiGatewayMethodMethodResponseResponseModels
    , fmap (("ResponseParameters",) . toJSON) _apiGatewayMethodMethodResponseResponseParameters
    , fmap (("StatusCode",) . toJSON) _apiGatewayMethodMethodResponseStatusCode
    ]

instance FromJSON ApiGatewayMethodMethodResponse where
  parseJSON (Object obj) =
    ApiGatewayMethodMethodResponse <$>
      (obj .:? "ResponseModels") <*>
      (obj .:? "ResponseParameters") <*>
      (obj .:? "StatusCode")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayMethodMethodResponse' containing required
-- fields as arguments.
apiGatewayMethodMethodResponse
  :: ApiGatewayMethodMethodResponse
apiGatewayMethodMethodResponse  =
  ApiGatewayMethodMethodResponse
  { _apiGatewayMethodMethodResponseResponseModels = Nothing
  , _apiGatewayMethodMethodResponseResponseParameters = Nothing
  , _apiGatewayMethodMethodResponseStatusCode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responsemodels
agmmrResponseModels :: Lens' ApiGatewayMethodMethodResponse (Maybe Object)
agmmrResponseModels = lens _apiGatewayMethodMethodResponseResponseModels (\s a -> s { _apiGatewayMethodMethodResponseResponseModels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responseparameters
agmmrResponseParameters :: Lens' ApiGatewayMethodMethodResponse (Maybe Object)
agmmrResponseParameters = lens _apiGatewayMethodMethodResponseResponseParameters (\s a -> s { _apiGatewayMethodMethodResponseResponseParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-statuscode
agmmrStatusCode :: Lens' ApiGatewayMethodMethodResponse (Maybe (Val Text))
agmmrStatusCode = lens _apiGatewayMethodMethodResponseStatusCode (\s a -> s { _apiGatewayMethodMethodResponseStatusCode = a })
