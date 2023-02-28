module Stratosphere.EMR.InstanceGroupConfig (
        module Exports, InstanceGroupConfig(..), mkInstanceGroupConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.AutoScalingPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.ConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.EbsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceGroupConfig
  = InstanceGroupConfig {autoScalingPolicy :: (Prelude.Maybe AutoScalingPolicyProperty),
                         bidPrice :: (Prelude.Maybe (Value Prelude.Text)),
                         configurations :: (Prelude.Maybe [ConfigurationProperty]),
                         customAmiId :: (Prelude.Maybe (Value Prelude.Text)),
                         ebsConfiguration :: (Prelude.Maybe EbsConfigurationProperty),
                         instanceCount :: (Value Prelude.Integer),
                         instanceRole :: (Value Prelude.Text),
                         instanceType :: (Value Prelude.Text),
                         jobFlowId :: (Value Prelude.Text),
                         market :: (Prelude.Maybe (Value Prelude.Text)),
                         name :: (Prelude.Maybe (Value Prelude.Text))}
mkInstanceGroupConfig ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> InstanceGroupConfig
mkInstanceGroupConfig
  instanceCount
  instanceRole
  instanceType
  jobFlowId
  = InstanceGroupConfig
      {instanceCount = instanceCount, instanceRole = instanceRole,
       instanceType = instanceType, jobFlowId = jobFlowId,
       autoScalingPolicy = Prelude.Nothing, bidPrice = Prelude.Nothing,
       configurations = Prelude.Nothing, customAmiId = Prelude.Nothing,
       ebsConfiguration = Prelude.Nothing, market = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties InstanceGroupConfig where
  toResourceProperties InstanceGroupConfig {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceGroupConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceCount" JSON..= instanceCount,
                            "InstanceRole" JSON..= instanceRole,
                            "InstanceType" JSON..= instanceType, "JobFlowId" JSON..= jobFlowId]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoScalingPolicy" Prelude.<$> autoScalingPolicy,
                               (JSON..=) "BidPrice" Prelude.<$> bidPrice,
                               (JSON..=) "Configurations" Prelude.<$> configurations,
                               (JSON..=) "CustomAmiId" Prelude.<$> customAmiId,
                               (JSON..=) "EbsConfiguration" Prelude.<$> ebsConfiguration,
                               (JSON..=) "Market" Prelude.<$> market,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON InstanceGroupConfig where
  toJSON InstanceGroupConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceCount" JSON..= instanceCount,
               "InstanceRole" JSON..= instanceRole,
               "InstanceType" JSON..= instanceType, "JobFlowId" JSON..= jobFlowId]
              (Prelude.catMaybes
                 [(JSON..=) "AutoScalingPolicy" Prelude.<$> autoScalingPolicy,
                  (JSON..=) "BidPrice" Prelude.<$> bidPrice,
                  (JSON..=) "Configurations" Prelude.<$> configurations,
                  (JSON..=) "CustomAmiId" Prelude.<$> customAmiId,
                  (JSON..=) "EbsConfiguration" Prelude.<$> ebsConfiguration,
                  (JSON..=) "Market" Prelude.<$> market,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "AutoScalingPolicy" InstanceGroupConfig where
  type PropertyType "AutoScalingPolicy" InstanceGroupConfig = AutoScalingPolicyProperty
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig
        {autoScalingPolicy = Prelude.pure newValue, ..}
instance Property "BidPrice" InstanceGroupConfig where
  type PropertyType "BidPrice" InstanceGroupConfig = Value Prelude.Text
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {bidPrice = Prelude.pure newValue, ..}
instance Property "Configurations" InstanceGroupConfig where
  type PropertyType "Configurations" InstanceGroupConfig = [ConfigurationProperty]
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {configurations = Prelude.pure newValue, ..}
instance Property "CustomAmiId" InstanceGroupConfig where
  type PropertyType "CustomAmiId" InstanceGroupConfig = Value Prelude.Text
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {customAmiId = Prelude.pure newValue, ..}
instance Property "EbsConfiguration" InstanceGroupConfig where
  type PropertyType "EbsConfiguration" InstanceGroupConfig = EbsConfigurationProperty
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig
        {ebsConfiguration = Prelude.pure newValue, ..}
instance Property "InstanceCount" InstanceGroupConfig where
  type PropertyType "InstanceCount" InstanceGroupConfig = Value Prelude.Integer
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {instanceCount = newValue, ..}
instance Property "InstanceRole" InstanceGroupConfig where
  type PropertyType "InstanceRole" InstanceGroupConfig = Value Prelude.Text
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {instanceRole = newValue, ..}
instance Property "InstanceType" InstanceGroupConfig where
  type PropertyType "InstanceType" InstanceGroupConfig = Value Prelude.Text
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {instanceType = newValue, ..}
instance Property "JobFlowId" InstanceGroupConfig where
  type PropertyType "JobFlowId" InstanceGroupConfig = Value Prelude.Text
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {jobFlowId = newValue, ..}
instance Property "Market" InstanceGroupConfig where
  type PropertyType "Market" InstanceGroupConfig = Value Prelude.Text
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {market = Prelude.pure newValue, ..}
instance Property "Name" InstanceGroupConfig where
  type PropertyType "Name" InstanceGroupConfig = Value Prelude.Text
  set newValue InstanceGroupConfig {..}
    = InstanceGroupConfig {name = Prelude.pure newValue, ..}