module Stratosphere.EMR.Cluster.ScalingTriggerProperty (
        module Exports, ScalingTriggerProperty(..),
        mkScalingTriggerProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.CloudWatchAlarmDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data ScalingTriggerProperty
  = ScalingTriggerProperty {cloudWatchAlarmDefinition :: CloudWatchAlarmDefinitionProperty}
mkScalingTriggerProperty ::
  CloudWatchAlarmDefinitionProperty -> ScalingTriggerProperty
mkScalingTriggerProperty cloudWatchAlarmDefinition
  = ScalingTriggerProperty
      {cloudWatchAlarmDefinition = cloudWatchAlarmDefinition}
instance ToResourceProperties ScalingTriggerProperty where
  toResourceProperties ScalingTriggerProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ScalingTrigger",
         properties = ["CloudWatchAlarmDefinition"
                         JSON..= cloudWatchAlarmDefinition]}
instance JSON.ToJSON ScalingTriggerProperty where
  toJSON ScalingTriggerProperty {..}
    = JSON.object
        ["CloudWatchAlarmDefinition" JSON..= cloudWatchAlarmDefinition]
instance Property "CloudWatchAlarmDefinition" ScalingTriggerProperty where
  type PropertyType "CloudWatchAlarmDefinition" ScalingTriggerProperty = CloudWatchAlarmDefinitionProperty
  set newValue ScalingTriggerProperty {}
    = ScalingTriggerProperty {cloudWatchAlarmDefinition = newValue, ..}