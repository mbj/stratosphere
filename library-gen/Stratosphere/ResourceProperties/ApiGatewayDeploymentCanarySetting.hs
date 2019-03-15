{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html

module Stratosphere.ResourceProperties.ApiGatewayDeploymentCanarySetting where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayDeploymentCanarySetting. See
-- 'apiGatewayDeploymentCanarySetting' for a more convenient constructor.
data ApiGatewayDeploymentCanarySetting =
  ApiGatewayDeploymentCanarySetting
  { _apiGatewayDeploymentCanarySettingPercentTraffic :: Maybe (Val Double)
  , _apiGatewayDeploymentCanarySettingStageVariableOverrides :: Maybe Object
  , _apiGatewayDeploymentCanarySettingUseStageCache :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDeploymentCanarySetting where
  toJSON ApiGatewayDeploymentCanarySetting{..} =
    object $
    catMaybes
    [ fmap (("PercentTraffic",) . toJSON) _apiGatewayDeploymentCanarySettingPercentTraffic
    , fmap (("StageVariableOverrides",) . toJSON) _apiGatewayDeploymentCanarySettingStageVariableOverrides
    , fmap (("UseStageCache",) . toJSON) _apiGatewayDeploymentCanarySettingUseStageCache
    ]

-- | Constructor for 'ApiGatewayDeploymentCanarySetting' containing required
-- fields as arguments.
apiGatewayDeploymentCanarySetting
  :: ApiGatewayDeploymentCanarySetting
apiGatewayDeploymentCanarySetting  =
  ApiGatewayDeploymentCanarySetting
  { _apiGatewayDeploymentCanarySettingPercentTraffic = Nothing
  , _apiGatewayDeploymentCanarySettingStageVariableOverrides = Nothing
  , _apiGatewayDeploymentCanarySettingUseStageCache = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-percenttraffic
agdcsPercentTraffic :: Lens' ApiGatewayDeploymentCanarySetting (Maybe (Val Double))
agdcsPercentTraffic = lens _apiGatewayDeploymentCanarySettingPercentTraffic (\s a -> s { _apiGatewayDeploymentCanarySettingPercentTraffic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-stagevariableoverrides
agdcsStageVariableOverrides :: Lens' ApiGatewayDeploymentCanarySetting (Maybe Object)
agdcsStageVariableOverrides = lens _apiGatewayDeploymentCanarySettingStageVariableOverrides (\s a -> s { _apiGatewayDeploymentCanarySettingStageVariableOverrides = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-usestagecache
agdcsUseStageCache :: Lens' ApiGatewayDeploymentCanarySetting (Maybe (Val Bool))
agdcsUseStageCache = lens _apiGatewayDeploymentCanarySettingUseStageCache (\s a -> s { _apiGatewayDeploymentCanarySettingUseStageCache = a })
