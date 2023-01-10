
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html

module Stratosphere.ResourceProperties.ApiGatewayDeploymentDeploymentCanarySettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayDeploymentDeploymentCanarySettings. See
-- 'apiGatewayDeploymentDeploymentCanarySettings' for a more convenient
-- constructor.
data ApiGatewayDeploymentDeploymentCanarySettings =
  ApiGatewayDeploymentDeploymentCanarySettings
  { _apiGatewayDeploymentDeploymentCanarySettingsPercentTraffic :: Maybe (Val Double)
  , _apiGatewayDeploymentDeploymentCanarySettingsStageVariableOverrides :: Maybe Object
  , _apiGatewayDeploymentDeploymentCanarySettingsUseStageCache :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDeploymentDeploymentCanarySettings where
  toJSON ApiGatewayDeploymentDeploymentCanarySettings{..} =
    object $
    catMaybes
    [ fmap (("PercentTraffic",) . toJSON) _apiGatewayDeploymentDeploymentCanarySettingsPercentTraffic
    , fmap (("StageVariableOverrides",) . toJSON) _apiGatewayDeploymentDeploymentCanarySettingsStageVariableOverrides
    , fmap (("UseStageCache",) . toJSON) _apiGatewayDeploymentDeploymentCanarySettingsUseStageCache
    ]

-- | Constructor for 'ApiGatewayDeploymentDeploymentCanarySettings' containing
-- required fields as arguments.
apiGatewayDeploymentDeploymentCanarySettings
  :: ApiGatewayDeploymentDeploymentCanarySettings
apiGatewayDeploymentDeploymentCanarySettings  =
  ApiGatewayDeploymentDeploymentCanarySettings
  { _apiGatewayDeploymentDeploymentCanarySettingsPercentTraffic = Nothing
  , _apiGatewayDeploymentDeploymentCanarySettingsStageVariableOverrides = Nothing
  , _apiGatewayDeploymentDeploymentCanarySettingsUseStageCache = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-percenttraffic
agddcsPercentTraffic :: Lens' ApiGatewayDeploymentDeploymentCanarySettings (Maybe (Val Double))
agddcsPercentTraffic = lens _apiGatewayDeploymentDeploymentCanarySettingsPercentTraffic (\s a -> s { _apiGatewayDeploymentDeploymentCanarySettingsPercentTraffic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-stagevariableoverrides
agddcsStageVariableOverrides :: Lens' ApiGatewayDeploymentDeploymentCanarySettings (Maybe Object)
agddcsStageVariableOverrides = lens _apiGatewayDeploymentDeploymentCanarySettingsStageVariableOverrides (\s a -> s { _apiGatewayDeploymentDeploymentCanarySettingsStageVariableOverrides = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-usestagecache
agddcsUseStageCache :: Lens' ApiGatewayDeploymentDeploymentCanarySettings (Maybe (Val Bool))
agddcsUseStageCache = lens _apiGatewayDeploymentDeploymentCanarySettingsUseStageCache (\s a -> s { _apiGatewayDeploymentDeploymentCanarySettingsUseStageCache = a })
