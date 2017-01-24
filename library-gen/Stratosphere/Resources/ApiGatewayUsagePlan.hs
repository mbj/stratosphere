{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html

module Stratosphere.Resources.ApiGatewayUsagePlan where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanQuotaSettings
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanThrottleSettings

-- | Full data type definition for ApiGatewayUsagePlan. See
-- | 'apiGatewayUsagePlan' for a more convenient constructor.
data ApiGatewayUsagePlan =
  ApiGatewayUsagePlan
  { _apiGatewayUsagePlanApiStages :: Maybe [ApiGatewayUsagePlanApiStage]
  , _apiGatewayUsagePlanDescription :: Maybe (Val Text)
  , _apiGatewayUsagePlanQuota :: Maybe ApiGatewayUsagePlanQuotaSettings
  , _apiGatewayUsagePlanThrottle :: Maybe ApiGatewayUsagePlanThrottleSettings
  , _apiGatewayUsagePlanUsagePlanName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayUsagePlan where
  toJSON ApiGatewayUsagePlan{..} =
    object
    [ "ApiStages" .= _apiGatewayUsagePlanApiStages
    , "Description" .= _apiGatewayUsagePlanDescription
    , "Quota" .= _apiGatewayUsagePlanQuota
    , "Throttle" .= _apiGatewayUsagePlanThrottle
    , "UsagePlanName" .= _apiGatewayUsagePlanUsagePlanName
    ]

instance FromJSON ApiGatewayUsagePlan where
  parseJSON (Object obj) =
    ApiGatewayUsagePlan <$>
      obj .: "ApiStages" <*>
      obj .: "Description" <*>
      obj .: "Quota" <*>
      obj .: "Throttle" <*>
      obj .: "UsagePlanName"
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayUsagePlan' containing required fields as
-- | arguments.
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-apistages
agupApiStages :: Lens' ApiGatewayUsagePlan (Maybe [ApiGatewayUsagePlanApiStage])
agupApiStages = lens _apiGatewayUsagePlanApiStages (\s a -> s { _apiGatewayUsagePlanApiStages = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-description
agupDescription :: Lens' ApiGatewayUsagePlan (Maybe (Val Text))
agupDescription = lens _apiGatewayUsagePlanDescription (\s a -> s { _apiGatewayUsagePlanDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-quota
agupQuota :: Lens' ApiGatewayUsagePlan (Maybe ApiGatewayUsagePlanQuotaSettings)
agupQuota = lens _apiGatewayUsagePlanQuota (\s a -> s { _apiGatewayUsagePlanQuota = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-throttle
agupThrottle :: Lens' ApiGatewayUsagePlan (Maybe ApiGatewayUsagePlanThrottleSettings)
agupThrottle = lens _apiGatewayUsagePlanThrottle (\s a -> s { _apiGatewayUsagePlanThrottle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-usageplanname
agupUsagePlanName :: Lens' ApiGatewayUsagePlan (Maybe (Val Text))
agupUsagePlanName = lens _apiGatewayUsagePlanUsagePlanName (\s a -> s { _apiGatewayUsagePlanUsagePlanName = a })
