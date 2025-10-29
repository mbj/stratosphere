module Stratosphere.EMR.InstanceGroupConfig.ScalingTriggerProperty (
        module Exports, ScalingTriggerProperty(..),
        mkScalingTriggerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.CloudWatchAlarmDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data ScalingTriggerProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingtrigger.html>
    ScalingTriggerProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingtrigger.html#cfn-elasticmapreduce-instancegroupconfig-scalingtrigger-cloudwatchalarmdefinition>
                            cloudWatchAlarmDefinition :: CloudWatchAlarmDefinitionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingTriggerProperty ::
  CloudWatchAlarmDefinitionProperty -> ScalingTriggerProperty
mkScalingTriggerProperty cloudWatchAlarmDefinition
  = ScalingTriggerProperty
      {cloudWatchAlarmDefinition = cloudWatchAlarmDefinition}
instance ToResourceProperties ScalingTriggerProperty where
  toResourceProperties ScalingTriggerProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceGroupConfig.ScalingTrigger",
         supportsTags = Prelude.False,
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