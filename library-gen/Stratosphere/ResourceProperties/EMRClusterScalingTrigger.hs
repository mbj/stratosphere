{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html

module Stratosphere.ResourceProperties.EMRClusterScalingTrigger where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterCloudWatchAlarmDefinition

-- | Full data type definition for EMRClusterScalingTrigger. See
-- 'emrClusterScalingTrigger' for a more convenient constructor.
data EMRClusterScalingTrigger =
  EMRClusterScalingTrigger
  { _eMRClusterScalingTriggerCloudWatchAlarmDefinition :: EMRClusterCloudWatchAlarmDefinition
  } deriving (Show, Eq)

instance ToJSON EMRClusterScalingTrigger where
  toJSON EMRClusterScalingTrigger{..} =
    object $
    catMaybes
    [ Just ("CloudWatchAlarmDefinition" .= _eMRClusterScalingTriggerCloudWatchAlarmDefinition)
    ]

instance FromJSON EMRClusterScalingTrigger where
  parseJSON (Object obj) =
    EMRClusterScalingTrigger <$>
      obj .: "CloudWatchAlarmDefinition"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterScalingTrigger' containing required fields as
-- arguments.
emrClusterScalingTrigger
  :: EMRClusterCloudWatchAlarmDefinition -- ^ 'emrcstCloudWatchAlarmDefinition'
  -> EMRClusterScalingTrigger
emrClusterScalingTrigger cloudWatchAlarmDefinitionarg =
  EMRClusterScalingTrigger
  { _eMRClusterScalingTriggerCloudWatchAlarmDefinition = cloudWatchAlarmDefinitionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html#cfn-elasticmapreduce-cluster-scalingtrigger-cloudwatchalarmdefinition
emrcstCloudWatchAlarmDefinition :: Lens' EMRClusterScalingTrigger EMRClusterCloudWatchAlarmDefinition
emrcstCloudWatchAlarmDefinition = lens _eMRClusterScalingTriggerCloudWatchAlarmDefinition (\s a -> s { _eMRClusterScalingTriggerCloudWatchAlarmDefinition = a })
