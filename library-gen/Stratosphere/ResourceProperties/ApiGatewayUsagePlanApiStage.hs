{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanThrottleSettings

-- | Full data type definition for ApiGatewayUsagePlanApiStage. See
-- 'apiGatewayUsagePlanApiStage' for a more convenient constructor.
data ApiGatewayUsagePlanApiStage =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId :: Maybe (Val Text)
  , _apiGatewayUsagePlanApiStageStage :: Maybe (Val Text)
  , _apiGatewayUsagePlanApiStageThrottle :: Maybe (Map Text ApiGatewayUsagePlanThrottleSettings)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayUsagePlanApiStage where
  toJSON ApiGatewayUsagePlanApiStage{..} =
    object $
    catMaybes
    [ fmap (("ApiId",) . toJSON) _apiGatewayUsagePlanApiStageApiId
    , fmap (("Stage",) . toJSON) _apiGatewayUsagePlanApiStageStage
    , fmap (("Throttle",) . toJSON) _apiGatewayUsagePlanApiStageThrottle
    ]

-- | Constructor for 'ApiGatewayUsagePlanApiStage' containing required fields
-- as arguments.
apiGatewayUsagePlanApiStage
  :: ApiGatewayUsagePlanApiStage
apiGatewayUsagePlanApiStage  =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId = Nothing
  , _apiGatewayUsagePlanApiStageStage = Nothing
  , _apiGatewayUsagePlanApiStageThrottle = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-apiid
agupasApiId :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Val Text))
agupasApiId = lens _apiGatewayUsagePlanApiStageApiId (\s a -> s { _apiGatewayUsagePlanApiStageApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-stage
agupasStage :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Val Text))
agupasStage = lens _apiGatewayUsagePlanApiStageStage (\s a -> s { _apiGatewayUsagePlanApiStageStage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-throttle
agupasThrottle :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Map Text ApiGatewayUsagePlanThrottleSettings))
agupasThrottle = lens _apiGatewayUsagePlanApiStageThrottle (\s a -> s { _apiGatewayUsagePlanApiStageThrottle = a })
