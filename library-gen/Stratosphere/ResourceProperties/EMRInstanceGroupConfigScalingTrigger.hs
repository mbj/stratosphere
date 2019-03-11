{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingtrigger.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigScalingTrigger where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigCloudWatchAlarmDefinition

-- | Full data type definition for EMRInstanceGroupConfigScalingTrigger. See
-- 'emrInstanceGroupConfigScalingTrigger' for a more convenient constructor.
data EMRInstanceGroupConfigScalingTrigger =
  EMRInstanceGroupConfigScalingTrigger
  { _eMRInstanceGroupConfigScalingTriggerCloudWatchAlarmDefinition :: EMRInstanceGroupConfigCloudWatchAlarmDefinition
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigScalingTrigger where
  toJSON EMRInstanceGroupConfigScalingTrigger{..} =
    object $
    catMaybes
    [ (Just . ("CloudWatchAlarmDefinition",) . toJSON) _eMRInstanceGroupConfigScalingTriggerCloudWatchAlarmDefinition
    ]

-- | Constructor for 'EMRInstanceGroupConfigScalingTrigger' containing
-- required fields as arguments.
emrInstanceGroupConfigScalingTrigger
  :: EMRInstanceGroupConfigCloudWatchAlarmDefinition -- ^ 'emrigcstCloudWatchAlarmDefinition'
  -> EMRInstanceGroupConfigScalingTrigger
emrInstanceGroupConfigScalingTrigger cloudWatchAlarmDefinitionarg =
  EMRInstanceGroupConfigScalingTrigger
  { _eMRInstanceGroupConfigScalingTriggerCloudWatchAlarmDefinition = cloudWatchAlarmDefinitionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingtrigger.html#cfn-elasticmapreduce-instancegroupconfig-scalingtrigger-cloudwatchalarmdefinition
emrigcstCloudWatchAlarmDefinition :: Lens' EMRInstanceGroupConfigScalingTrigger EMRInstanceGroupConfigCloudWatchAlarmDefinition
emrigcstCloudWatchAlarmDefinition = lens _eMRInstanceGroupConfigScalingTriggerCloudWatchAlarmDefinition (\s a -> s { _eMRInstanceGroupConfigScalingTriggerCloudWatchAlarmDefinition = a })
