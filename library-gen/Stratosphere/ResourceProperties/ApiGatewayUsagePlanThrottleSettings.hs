{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | ThrottleSettings is a property of the AWS::ApiGateway::UsagePlan resource
-- that specifies the overall request rate (average requests per second) and
-- burst capacity when users call your Amazon API Gateway (API Gateway) APIs.

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanThrottleSettings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayUsagePlanThrottleSettings. See
-- 'apiGatewayUsagePlanThrottleSettings' for a more convenient constructor.
data ApiGatewayUsagePlanThrottleSettings =
  ApiGatewayUsagePlanThrottleSettings
  { _apiGatewayUsagePlanThrottleSettingsBurstLimit :: Maybe (Val Integer')
  , _apiGatewayUsagePlanThrottleSettingsRateLimit :: Maybe Double'
  } deriving (Show, Generic)

instance ToJSON ApiGatewayUsagePlanThrottleSettings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

instance FromJSON ApiGatewayUsagePlanThrottleSettings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

-- | Constructor for 'ApiGatewayUsagePlanThrottleSettings' containing required
-- fields as arguments.
apiGatewayUsagePlanThrottleSettings
  :: ApiGatewayUsagePlanThrottleSettings
apiGatewayUsagePlanThrottleSettings  =
  ApiGatewayUsagePlanThrottleSettings
  { _apiGatewayUsagePlanThrottleSettingsBurstLimit = Nothing
  , _apiGatewayUsagePlanThrottleSettingsRateLimit = Nothing
  }

-- | The maximum API request rate limit over a time ranging from one to a few
-- seconds. The maximum API request rate limit depends on whether the
-- underlying token bucket is at its full capacity. For more information about
-- request throttling, see Manage API Request Throttling in the API Gateway
-- Developer Guide.
aguptsBurstLimit :: Lens' ApiGatewayUsagePlanThrottleSettings (Maybe (Val Integer'))
aguptsBurstLimit = lens _apiGatewayUsagePlanThrottleSettingsBurstLimit (\s a -> s { _apiGatewayUsagePlanThrottleSettingsBurstLimit = a })

-- | The API request steady-state rate limit (average requests per second over
-- an extended period of time). For more information about request throttling,
-- see Manage API Request Throttling in the API Gateway Developer Guide.
aguptsRateLimit :: Lens' ApiGatewayUsagePlanThrottleSettings (Maybe Double')
aguptsRateLimit = lens _apiGatewayUsagePlanThrottleSettingsRateLimit (\s a -> s { _apiGatewayUsagePlanThrottleSettingsRateLimit = a })