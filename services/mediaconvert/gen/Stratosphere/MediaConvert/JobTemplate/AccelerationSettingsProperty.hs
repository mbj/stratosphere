module Stratosphere.MediaConvert.JobTemplate.AccelerationSettingsProperty (
        AccelerationSettingsProperty(..), mkAccelerationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccelerationSettingsProperty
  = AccelerationSettingsProperty {mode :: (Value Prelude.Text)}
mkAccelerationSettingsProperty ::
  Value Prelude.Text -> AccelerationSettingsProperty
mkAccelerationSettingsProperty mode
  = AccelerationSettingsProperty {mode = mode}
instance ToResourceProperties AccelerationSettingsProperty where
  toResourceProperties AccelerationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConvert::JobTemplate.AccelerationSettings",
         supportsTags = Prelude.False, properties = ["Mode" JSON..= mode]}
instance JSON.ToJSON AccelerationSettingsProperty where
  toJSON AccelerationSettingsProperty {..}
    = JSON.object ["Mode" JSON..= mode]
instance Property "Mode" AccelerationSettingsProperty where
  type PropertyType "Mode" AccelerationSettingsProperty = Value Prelude.Text
  set newValue AccelerationSettingsProperty {}
    = AccelerationSettingsProperty {mode = newValue, ..}