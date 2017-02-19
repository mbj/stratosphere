{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayUsagePlanApiStage. See
-- | 'apiGatewayUsagePlanApiStage' for a more convenient constructor.
data ApiGatewayUsagePlanApiStage =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId :: Maybe (Val Text)
  , _apiGatewayUsagePlanApiStageStage :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayUsagePlanApiStage where
  toJSON ApiGatewayUsagePlanApiStage{..} =
    object $
    catMaybes
    [ ("ApiId" .=) <$> _apiGatewayUsagePlanApiStageApiId
    , ("Stage" .=) <$> _apiGatewayUsagePlanApiStageStage
    ]

instance FromJSON ApiGatewayUsagePlanApiStage where
  parseJSON (Object obj) =
    ApiGatewayUsagePlanApiStage <$>
      obj .:? "ApiId" <*>
      obj .:? "Stage"
  parseJSON _ = mempty

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
