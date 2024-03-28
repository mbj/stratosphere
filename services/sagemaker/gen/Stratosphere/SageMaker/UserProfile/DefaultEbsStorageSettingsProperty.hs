module Stratosphere.SageMaker.UserProfile.DefaultEbsStorageSettingsProperty (
        DefaultEbsStorageSettingsProperty(..),
        mkDefaultEbsStorageSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultEbsStorageSettingsProperty
  = DefaultEbsStorageSettingsProperty {defaultEbsVolumeSizeInGb :: (Value Prelude.Integer),
                                       maximumEbsVolumeSizeInGb :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultEbsStorageSettingsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> DefaultEbsStorageSettingsProperty
mkDefaultEbsStorageSettingsProperty
  defaultEbsVolumeSizeInGb
  maximumEbsVolumeSizeInGb
  = DefaultEbsStorageSettingsProperty
      {defaultEbsVolumeSizeInGb = defaultEbsVolumeSizeInGb,
       maximumEbsVolumeSizeInGb = maximumEbsVolumeSizeInGb}
instance ToResourceProperties DefaultEbsStorageSettingsProperty where
  toResourceProperties DefaultEbsStorageSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.DefaultEbsStorageSettings",
         supportsTags = Prelude.False,
         properties = ["DefaultEbsVolumeSizeInGb"
                         JSON..= defaultEbsVolumeSizeInGb,
                       "MaximumEbsVolumeSizeInGb" JSON..= maximumEbsVolumeSizeInGb]}
instance JSON.ToJSON DefaultEbsStorageSettingsProperty where
  toJSON DefaultEbsStorageSettingsProperty {..}
    = JSON.object
        ["DefaultEbsVolumeSizeInGb" JSON..= defaultEbsVolumeSizeInGb,
         "MaximumEbsVolumeSizeInGb" JSON..= maximumEbsVolumeSizeInGb]
instance Property "DefaultEbsVolumeSizeInGb" DefaultEbsStorageSettingsProperty where
  type PropertyType "DefaultEbsVolumeSizeInGb" DefaultEbsStorageSettingsProperty = Value Prelude.Integer
  set newValue DefaultEbsStorageSettingsProperty {..}
    = DefaultEbsStorageSettingsProperty
        {defaultEbsVolumeSizeInGb = newValue, ..}
instance Property "MaximumEbsVolumeSizeInGb" DefaultEbsStorageSettingsProperty where
  type PropertyType "MaximumEbsVolumeSizeInGb" DefaultEbsStorageSettingsProperty = Value Prelude.Integer
  set newValue DefaultEbsStorageSettingsProperty {..}
    = DefaultEbsStorageSettingsProperty
        {maximumEbsVolumeSizeInGb = newValue, ..}