{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayUsagePlanApiStage. See
-- | 'apiGatewayUsagePlanApiStage' for a more convenient constructor.
data ApiGatewayUsagePlanApiStage =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId :: Maybe (Val Text)
  , _apiGatewayUsagePlanApiStageStage :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayUsagePlanApiStage where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON ApiGatewayUsagePlanApiStage where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'ApiGatewayUsagePlanApiStage' containing required fields
-- | as arguments.
apiGatewayUsagePlanApiStage
  :: ApiGatewayUsagePlanApiStage
apiGatewayUsagePlanApiStage  =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId = Nothing
  , _apiGatewayUsagePlanApiStageStage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-apiid
agupasApiId :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Val Text))
agupasApiId = lens _apiGatewayUsagePlanApiStageApiId (\s a -> s { _apiGatewayUsagePlanApiStageApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-stage
agupasStage :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Val Text))
agupasStage = lens _apiGatewayUsagePlanApiStageStage (\s a -> s { _apiGatewayUsagePlanApiStageStage = a })
