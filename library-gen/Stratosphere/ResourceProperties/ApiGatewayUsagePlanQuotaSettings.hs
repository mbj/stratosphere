{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanQuotaSettings where

import Stratosphere.ResourceImports
import Stratosphere.Types

-- | Full data type definition for ApiGatewayUsagePlanQuotaSettings. See
-- 'apiGatewayUsagePlanQuotaSettings' for a more convenient constructor.
data ApiGatewayUsagePlanQuotaSettings =
  ApiGatewayUsagePlanQuotaSettings
  { _apiGatewayUsagePlanQuotaSettingsLimit :: Maybe (Val Integer)
  , _apiGatewayUsagePlanQuotaSettingsOffset :: Maybe (Val Integer)
  , _apiGatewayUsagePlanQuotaSettingsPeriod :: Maybe (Val Period)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayUsagePlanQuotaSettings where
  toJSON ApiGatewayUsagePlanQuotaSettings{..} =
    object $
    catMaybes
    [ fmap (("Limit",) . toJSON . fmap Integer') _apiGatewayUsagePlanQuotaSettingsLimit
    , fmap (("Offset",) . toJSON . fmap Integer') _apiGatewayUsagePlanQuotaSettingsOffset
    , fmap (("Period",) . toJSON) _apiGatewayUsagePlanQuotaSettingsPeriod
    ]

instance FromJSON ApiGatewayUsagePlanQuotaSettings where
  parseJSON (Object obj) =
    ApiGatewayUsagePlanQuotaSettings <$>
      fmap (fmap (fmap unInteger')) (obj .:? "Limit") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Offset") <*>
      (obj .:? "Period")
  parseJSON _ = mempty

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-limit
agupqsLimit :: Lens' ApiGatewayUsagePlanQuotaSettings (Maybe (Val Integer))
agupqsLimit = lens _apiGatewayUsagePlanQuotaSettingsLimit (\s a -> s { _apiGatewayUsagePlanQuotaSettingsLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-offset
agupqsOffset :: Lens' ApiGatewayUsagePlanQuotaSettings (Maybe (Val Integer))
agupqsOffset = lens _apiGatewayUsagePlanQuotaSettingsOffset (\s a -> s { _apiGatewayUsagePlanQuotaSettingsOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-period
agupqsPeriod :: Lens' ApiGatewayUsagePlanQuotaSettings (Maybe (Val Period))
agupqsPeriod = lens _apiGatewayUsagePlanQuotaSettingsPeriod (\s a -> s { _apiGatewayUsagePlanQuotaSettingsPeriod = a })
