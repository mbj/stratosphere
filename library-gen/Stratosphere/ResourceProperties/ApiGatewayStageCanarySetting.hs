{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html

module Stratosphere.ResourceProperties.ApiGatewayStageCanarySetting where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayStageCanarySetting. See
-- 'apiGatewayStageCanarySetting' for a more convenient constructor.
data ApiGatewayStageCanarySetting =
  ApiGatewayStageCanarySetting
  { _apiGatewayStageCanarySettingDeploymentId :: Maybe (Val Text)
  , _apiGatewayStageCanarySettingPercentTraffic :: Maybe (Val Double)
  , _apiGatewayStageCanarySettingStageVariableOverrides :: Maybe Object
  , _apiGatewayStageCanarySettingUseStageCache :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayStageCanarySetting where
  toJSON ApiGatewayStageCanarySetting{..} =
    object $
    catMaybes
    [ fmap (("DeploymentId",) . toJSON) _apiGatewayStageCanarySettingDeploymentId
    , fmap (("PercentTraffic",) . toJSON . fmap Double') _apiGatewayStageCanarySettingPercentTraffic
    , fmap (("StageVariableOverrides",) . toJSON) _apiGatewayStageCanarySettingStageVariableOverrides
    , fmap (("UseStageCache",) . toJSON . fmap Bool') _apiGatewayStageCanarySettingUseStageCache
    ]

instance FromJSON ApiGatewayStageCanarySetting where
  parseJSON (Object obj) =
    ApiGatewayStageCanarySetting <$>
      (obj .:? "DeploymentId") <*>
      fmap (fmap (fmap unDouble')) (obj .:? "PercentTraffic") <*>
      (obj .:? "StageVariableOverrides") <*>
      fmap (fmap (fmap unBool')) (obj .:? "UseStageCache")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayStageCanarySetting' containing required fields
-- as arguments.
apiGatewayStageCanarySetting
  :: ApiGatewayStageCanarySetting
apiGatewayStageCanarySetting  =
  ApiGatewayStageCanarySetting
  { _apiGatewayStageCanarySettingDeploymentId = Nothing
  , _apiGatewayStageCanarySettingPercentTraffic = Nothing
  , _apiGatewayStageCanarySettingStageVariableOverrides = Nothing
  , _apiGatewayStageCanarySettingUseStageCache = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-deploymentid
agscsDeploymentId :: Lens' ApiGatewayStageCanarySetting (Maybe (Val Text))
agscsDeploymentId = lens _apiGatewayStageCanarySettingDeploymentId (\s a -> s { _apiGatewayStageCanarySettingDeploymentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-percenttraffic
agscsPercentTraffic :: Lens' ApiGatewayStageCanarySetting (Maybe (Val Double))
agscsPercentTraffic = lens _apiGatewayStageCanarySettingPercentTraffic (\s a -> s { _apiGatewayStageCanarySettingPercentTraffic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-stagevariableoverrides
agscsStageVariableOverrides :: Lens' ApiGatewayStageCanarySetting (Maybe Object)
agscsStageVariableOverrides = lens _apiGatewayStageCanarySettingStageVariableOverrides (\s a -> s { _apiGatewayStageCanarySettingStageVariableOverrides = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-usestagecache
agscsUseStageCache :: Lens' ApiGatewayStageCanarySetting (Maybe (Val Bool))
agscsUseStageCache = lens _apiGatewayStageCanarySettingUseStageCache (\s a -> s { _apiGatewayStageCanarySettingUseStageCache = a })
