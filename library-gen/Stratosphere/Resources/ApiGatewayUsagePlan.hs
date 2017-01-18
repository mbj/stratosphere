{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html

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
-- | 'apiGatewayUsagePlan' for a more convenient constructor.
data ApiGatewayUsagePlan =
  ApiGatewayUsagePlan
  { _apiGatewayUsagePlanApiStages :: Maybe [ApiGatewayUsagePlanApiStage]
  , _apiGatewayUsagePlanDescription :: Maybe (Val Text)
  , _apiGatewayUsagePlanQuota :: Maybe ApiGatewayUsagePlanQuotaSettings
  , _apiGatewayUsagePlanThrottle :: Maybe ApiGatewayUsagePlanThrottleSettings
  , _apiGatewayUsagePlanUsagePlanName :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayUsagePlan where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON ApiGatewayUsagePlan where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

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
