module Stratosphere.EMR.Cluster.InstanceGroupConfigProperty (
        module Exports, InstanceGroupConfigProperty(..),
        mkInstanceGroupConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.AutoScalingPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.EbsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceGroupConfigProperty
  = InstanceGroupConfigProperty {autoScalingPolicy :: (Prelude.Maybe AutoScalingPolicyProperty),
                                 bidPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                 configurations :: (Prelude.Maybe [ConfigurationProperty]),
                                 customAmiId :: (Prelude.Maybe (Value Prelude.Text)),
                                 ebsConfiguration :: (Prelude.Maybe EbsConfigurationProperty),
                                 instanceCount :: (Value Prelude.Integer),
                                 instanceType :: (Value Prelude.Text),
                                 market :: (Prelude.Maybe (Value Prelude.Text)),
                                 name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceGroupConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> InstanceGroupConfigProperty
mkInstanceGroupConfigProperty instanceCount instanceType
  = InstanceGroupConfigProperty
      {instanceCount = instanceCount, instanceType = instanceType,
       autoScalingPolicy = Prelude.Nothing, bidPrice = Prelude.Nothing,
       configurations = Prelude.Nothing, customAmiId = Prelude.Nothing,
       ebsConfiguration = Prelude.Nothing, market = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties InstanceGroupConfigProperty where
  toResourceProperties InstanceGroupConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.InstanceGroupConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceCount" JSON..= instanceCount,
                            "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoScalingPolicy" Prelude.<$> autoScalingPolicy,
                               (JSON..=) "BidPrice" Prelude.<$> bidPrice,
                               (JSON..=) "Configurations" Prelude.<$> configurations,
                               (JSON..=) "CustomAmiId" Prelude.<$> customAmiId,
                               (JSON..=) "EbsConfiguration" Prelude.<$> ebsConfiguration,
                               (JSON..=) "Market" Prelude.<$> market,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON InstanceGroupConfigProperty where
  toJSON InstanceGroupConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceCount" JSON..= instanceCount,
               "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "AutoScalingPolicy" Prelude.<$> autoScalingPolicy,
                  (JSON..=) "BidPrice" Prelude.<$> bidPrice,
                  (JSON..=) "Configurations" Prelude.<$> configurations,
                  (JSON..=) "CustomAmiId" Prelude.<$> customAmiId,
                  (JSON..=) "EbsConfiguration" Prelude.<$> ebsConfiguration,
                  (JSON..=) "Market" Prelude.<$> market,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "AutoScalingPolicy" InstanceGroupConfigProperty where
  type PropertyType "AutoScalingPolicy" InstanceGroupConfigProperty = AutoScalingPolicyProperty
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty
        {autoScalingPolicy = Prelude.pure newValue, ..}
instance Property "BidPrice" InstanceGroupConfigProperty where
  type PropertyType "BidPrice" InstanceGroupConfigProperty = Value Prelude.Text
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty
        {bidPrice = Prelude.pure newValue, ..}
instance Property "Configurations" InstanceGroupConfigProperty where
  type PropertyType "Configurations" InstanceGroupConfigProperty = [ConfigurationProperty]
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty
        {configurations = Prelude.pure newValue, ..}
instance Property "CustomAmiId" InstanceGroupConfigProperty where
  type PropertyType "CustomAmiId" InstanceGroupConfigProperty = Value Prelude.Text
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty
        {customAmiId = Prelude.pure newValue, ..}
instance Property "EbsConfiguration" InstanceGroupConfigProperty where
  type PropertyType "EbsConfiguration" InstanceGroupConfigProperty = EbsConfigurationProperty
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty
        {ebsConfiguration = Prelude.pure newValue, ..}
instance Property "InstanceCount" InstanceGroupConfigProperty where
  type PropertyType "InstanceCount" InstanceGroupConfigProperty = Value Prelude.Integer
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty {instanceCount = newValue, ..}
instance Property "InstanceType" InstanceGroupConfigProperty where
  type PropertyType "InstanceType" InstanceGroupConfigProperty = Value Prelude.Text
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty {instanceType = newValue, ..}
instance Property "Market" InstanceGroupConfigProperty where
  type PropertyType "Market" InstanceGroupConfigProperty = Value Prelude.Text
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty {market = Prelude.pure newValue, ..}
instance Property "Name" InstanceGroupConfigProperty where
  type PropertyType "Name" InstanceGroupConfigProperty = Value Prelude.Text
  set newValue InstanceGroupConfigProperty {..}
    = InstanceGroupConfigProperty {name = Prelude.pure newValue, ..}