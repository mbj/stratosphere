{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanThrottleSettings where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayUsagePlanThrottleSettings. See
-- 'apiGatewayUsagePlanThrottleSettings' for a more convenient constructor.
data ApiGatewayUsagePlanThrottleSettings =
  ApiGatewayUsagePlanThrottleSettings
  { _apiGatewayUsagePlanThrottleSettingsBurstLimit :: Maybe (Val Integer)
  , _apiGatewayUsagePlanThrottleSettingsRateLimit :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayUsagePlanThrottleSettings where
  toJSON ApiGatewayUsagePlanThrottleSettings{..} =
    object $
    catMaybes
    [ fmap (("BurstLimit",) . toJSON . fmap Integer') _apiGatewayUsagePlanThrottleSettingsBurstLimit
    , fmap (("RateLimit",) . toJSON . fmap Double') _apiGatewayUsagePlanThrottleSettingsRateLimit
    ]

instance FromJSON ApiGatewayUsagePlanThrottleSettings where
  parseJSON (Object obj) =
    ApiGatewayUsagePlanThrottleSettings <$>
      fmap (fmap (fmap unInteger')) (obj .:? "BurstLimit") <*>
      fmap (fmap (fmap unDouble')) (obj .:? "RateLimit")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayUsagePlanThrottleSettings' containing required
-- fields as arguments.
apiGatewayUsagePlanThrottleSettings
  :: ApiGatewayUsagePlanThrottleSettings
apiGatewayUsagePlanThrottleSettings  =
  ApiGatewayUsagePlanThrottleSettings
  { _apiGatewayUsagePlanThrottleSettingsBurstLimit = Nothing
  , _apiGatewayUsagePlanThrottleSettingsRateLimit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-burstlimit
aguptsBurstLimit :: Lens' ApiGatewayUsagePlanThrottleSettings (Maybe (Val Integer))
aguptsBurstLimit = lens _apiGatewayUsagePlanThrottleSettingsBurstLimit (\s a -> s { _apiGatewayUsagePlanThrottleSettingsBurstLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-ratelimit
aguptsRateLimit :: Lens' ApiGatewayUsagePlanThrottleSettings (Maybe (Val Double))
aguptsRateLimit = lens _apiGatewayUsagePlanThrottleSettingsRateLimit (\s a -> s { _apiGatewayUsagePlanThrottleSettingsRateLimit = a })
