module Stratosphere.EMR.Cluster.EbsConfigurationProperty (
        module Exports, EbsConfigurationProperty(..),
        mkEbsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.EbsBlockDeviceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsConfigurationProperty
  = EbsConfigurationProperty {ebsBlockDeviceConfigs :: (Prelude.Maybe [EbsBlockDeviceConfigProperty]),
                              ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool))}
mkEbsConfigurationProperty :: EbsConfigurationProperty
mkEbsConfigurationProperty
  = EbsConfigurationProperty
      {ebsBlockDeviceConfigs = Prelude.Nothing,
       ebsOptimized = Prelude.Nothing}
instance ToResourceProperties EbsConfigurationProperty where
  toResourceProperties EbsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.EbsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EbsBlockDeviceConfigs"
                              Prelude.<$> ebsBlockDeviceConfigs,
                            (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized])}
instance JSON.ToJSON EbsConfigurationProperty where
  toJSON EbsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EbsBlockDeviceConfigs"
                 Prelude.<$> ebsBlockDeviceConfigs,
               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized]))
instance Property "EbsBlockDeviceConfigs" EbsConfigurationProperty where
  type PropertyType "EbsBlockDeviceConfigs" EbsConfigurationProperty = [EbsBlockDeviceConfigProperty]
  set newValue EbsConfigurationProperty {..}
    = EbsConfigurationProperty
        {ebsBlockDeviceConfigs = Prelude.pure newValue, ..}
instance Property "EbsOptimized" EbsConfigurationProperty where
  type PropertyType "EbsOptimized" EbsConfigurationProperty = Value Prelude.Bool
  set newValue EbsConfigurationProperty {..}
    = EbsConfigurationProperty
        {ebsOptimized = Prelude.pure newValue, ..}