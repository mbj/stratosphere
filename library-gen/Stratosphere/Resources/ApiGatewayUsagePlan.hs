{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::UsagePlan resource specifies a usage plan for
-- deployed Amazon API Gateway (API Gateway) APIs. A usage plan enforces
-- throttling and quota limits on individual client API keys. For more
-- information, see Creating and Using API Usage Plans in Amazon API Gateway
-- in the API Gateway Developer Guide.

module Stratosphere.Resources.ApiGatewayUsagePlan where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanQuotaSettings
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanThrottleSettings

-- | Full data type definition for ApiGatewayUsagePlan. See
-- 'apiGatewayUsagePlan' for a more convenient constructor.
data ApiGatewayUsagePlan =
  ApiGatewayUsagePlan
  { _apiGatewayUsagePlanApiStages :: Maybe [ApiGatewayUsagePlanApiStage]
  , _apiGatewayUsagePlanDescription :: Maybe (Val Text)
  , _apiGatewayUsagePlanQuota :: Maybe ApiGatewayUsagePlanQuotaSettings
  , _apiGatewayUsagePlanThrottle :: Maybe ApiGatewayUsagePlanThrottleSettings
  , _apiGatewayUsagePlanUsagePlanName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayUsagePlan where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON ApiGatewayUsagePlan where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'ApiGatewayUsagePlan' containing required fields as
-- arguments.
apiGatewayUsagePlan
  :: ApiGatewayUsagePlan
apiGatewayUsagePlan  =
  ApiGatewayUsagePlan
  { _apiGatewayUsagePlanApiStages = Nothing
  , _apiGatewayUsagePlanDescription = Nothing
  , _apiGatewayUsagePlanQuota = Nothing
  , _apiGatewayUsagePlanThrottle = Nothing
  , _apiGatewayUsagePlanUsagePlanName = Nothing
  }

-- | The APIs and API stages to associate with this usage plan.
agupApiStages :: Lens' ApiGatewayUsagePlan (Maybe [ApiGatewayUsagePlanApiStage])
agupApiStages = lens _apiGatewayUsagePlanApiStages (\s a -> s { _apiGatewayUsagePlanApiStages = a })

-- | The purpose of this usage plan.
agupDescription :: Lens' ApiGatewayUsagePlan (Maybe (Val Text))
agupDescription = lens _apiGatewayUsagePlanDescription (\s a -> s { _apiGatewayUsagePlanDescription = a })

-- | Configures the number of requests that users can make within a given
-- interval.
agupQuota :: Lens' ApiGatewayUsagePlan (Maybe ApiGatewayUsagePlanQuotaSettings)
agupQuota = lens _apiGatewayUsagePlanQuota (\s a -> s { _apiGatewayUsagePlanQuota = a })

-- | Configures the overall request rate (average requests per second) and
-- burst capacity.
agupThrottle :: Lens' ApiGatewayUsagePlan (Maybe ApiGatewayUsagePlanThrottleSettings)
agupThrottle = lens _apiGatewayUsagePlanThrottle (\s a -> s { _apiGatewayUsagePlanThrottle = a })

-- | A name for this usage plan.
agupUsagePlanName :: Lens' ApiGatewayUsagePlan (Maybe (Val Text))
agupUsagePlanName = lens _apiGatewayUsagePlanUsagePlanName (\s a -> s { _apiGatewayUsagePlanUsagePlanName = a })