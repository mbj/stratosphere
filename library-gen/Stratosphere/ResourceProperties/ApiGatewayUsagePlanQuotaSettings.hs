{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | QuotaSettings is a property of the AWS::ApiGateway::UsagePlan resource
-- that specifies the maximum number of requests users can make to your Amazon
-- API Gateway (API Gateway) APIs.

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanQuotaSettings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayUsagePlanQuotaSettings. See
-- 'apiGatewayUsagePlanQuotaSettings' for a more convenient constructor.
data ApiGatewayUsagePlanQuotaSettings =
  ApiGatewayUsagePlanQuotaSettings
  { _apiGatewayUsagePlanQuotaSettingsLimit :: Maybe (Val Integer')
  , _apiGatewayUsagePlanQuotaSettingsOffset :: Maybe (Val Integer')
  , _apiGatewayUsagePlanQuotaSettingsPeriod :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayUsagePlanQuotaSettings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON ApiGatewayUsagePlanQuotaSettings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'ApiGatewayUsagePlanQuotaSettings' containing required
-- fields as arguments.
apiGatewayUsagePlanQuotaSettings
  :: ApiGatewayUsagePlanQuotaSettings
apiGatewayUsagePlanQuotaSettings  =
  ApiGatewayUsagePlanQuotaSettings
  { _apiGatewayUsagePlanQuotaSettingsLimit = Nothing
  , _apiGatewayUsagePlanQuotaSettingsOffset = Nothing
  , _apiGatewayUsagePlanQuotaSettingsPeriod = Nothing
  }

-- | The maximum number of requests that users can make within the specified
-- time period.
agupqsLimit :: Lens' ApiGatewayUsagePlanQuotaSettings (Maybe (Val Integer'))
agupqsLimit = lens _apiGatewayUsagePlanQuotaSettingsLimit (\s a -> s { _apiGatewayUsagePlanQuotaSettingsLimit = a })

-- | For the initial time period, the number of requests to subtract from the
-- specified limit. When you first implement a usage plan, the plan might
-- start in the middle of the week or month. With this property, you can
-- decrease the limit for this initial time period.
agupqsOffset :: Lens' ApiGatewayUsagePlanQuotaSettings (Maybe (Val Integer'))
agupqsOffset = lens _apiGatewayUsagePlanQuotaSettingsOffset (\s a -> s { _apiGatewayUsagePlanQuotaSettingsOffset = a })

-- | The time period for which the maximum limit of requests applies, such as
-- DAY or WEEK. For valid values, see the period property for the UsagePlan
-- resource in the Amazon API Gateway REST API Reference.
agupqsPeriod :: Lens' ApiGatewayUsagePlanQuotaSettings (Maybe (Val Text))
agupqsPeriod = lens _apiGatewayUsagePlanQuotaSettingsPeriod (\s a -> s { _apiGatewayUsagePlanQuotaSettingsPeriod = a })