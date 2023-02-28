module Stratosphere.IoTAnalytics.Dataset.ResourceConfigurationProperty (
        ResourceConfigurationProperty(..), mkResourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceConfigurationProperty
  = ResourceConfigurationProperty {computeType :: (Value Prelude.Text),
                                   volumeSizeInGB :: (Value Prelude.Integer)}
mkResourceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ResourceConfigurationProperty
mkResourceConfigurationProperty computeType volumeSizeInGB
  = ResourceConfigurationProperty
      {computeType = computeType, volumeSizeInGB = volumeSizeInGB}
instance ToResourceProperties ResourceConfigurationProperty where
  toResourceProperties ResourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.ResourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["ComputeType" JSON..= computeType,
                       "VolumeSizeInGB" JSON..= volumeSizeInGB]}
instance JSON.ToJSON ResourceConfigurationProperty where
  toJSON ResourceConfigurationProperty {..}
    = JSON.object
        ["ComputeType" JSON..= computeType,
         "VolumeSizeInGB" JSON..= volumeSizeInGB]
instance Property "ComputeType" ResourceConfigurationProperty where
  type PropertyType "ComputeType" ResourceConfigurationProperty = Value Prelude.Text
  set newValue ResourceConfigurationProperty {..}
    = ResourceConfigurationProperty {computeType = newValue, ..}
instance Property "VolumeSizeInGB" ResourceConfigurationProperty where
  type PropertyType "VolumeSizeInGB" ResourceConfigurationProperty = Value Prelude.Integer
  set newValue ResourceConfigurationProperty {..}
    = ResourceConfigurationProperty {volumeSizeInGB = newValue, ..}