{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanThrottleSettings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayUsagePlanThrottleSettings. See
-- | 'apiGatewayUsagePlanThrottleSettings' for a more convenient constructor.
data ApiGatewayUsagePlanThrottleSettings =
  ApiGatewayUsagePlanThrottleSettings
  { _apiGatewayUsagePlanThrottleSettingsBurstLimit :: Maybe (Val Integer')
  , _apiGatewayUsagePlanThrottleSettingsRateLimit :: Maybe (Val Double')
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayUsagePlanThrottleSettings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

instance FromJSON ApiGatewayUsagePlanThrottleSettings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

-- | Constructor for 'ApiGatewayUsagePlanThrottleSettings' containing required
-- | fields as arguments.
apiGatewayUsagePlanThrottleSettings
  :: ApiGatewayUsagePlanThrottleSettings
apiGatewayUsagePlanThrottleSettings  =
  ApiGatewayUsagePlanThrottleSettings
  { _apiGatewayUsagePlanThrottleSettingsBurstLimit = Nothing
  , _apiGatewayUsagePlanThrottleSettingsRateLimit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-burstlimit
aguptsBurstLimit :: Lens' ApiGatewayUsagePlanThrottleSettings (Maybe (Val Integer'))
aguptsBurstLimit = lens _apiGatewayUsagePlanThrottleSettingsBurstLimit (\s a -> s { _apiGatewayUsagePlanThrottleSettingsBurstLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-ratelimit
aguptsRateLimit :: Lens' ApiGatewayUsagePlanThrottleSettings (Maybe (Val Double'))
aguptsRateLimit = lens _apiGatewayUsagePlanThrottleSettingsRateLimit (\s a -> s { _apiGatewayUsagePlanThrottleSettingsRateLimit = a })
