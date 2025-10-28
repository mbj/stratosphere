module Stratosphere.SageMaker.Space.EbsStorageSettingsProperty (
        EbsStorageSettingsProperty(..), mkEbsStorageSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsStorageSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-ebsstoragesettings.html>
    EbsStorageSettingsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-ebsstoragesettings.html#cfn-sagemaker-space-ebsstoragesettings-ebsvolumesizeingb>
                                ebsVolumeSizeInGb :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbsStorageSettingsProperty ::
  Value Prelude.Integer -> EbsStorageSettingsProperty
mkEbsStorageSettingsProperty ebsVolumeSizeInGb
  = EbsStorageSettingsProperty
      {haddock_workaround_ = (), ebsVolumeSizeInGb = ebsVolumeSizeInGb}
instance ToResourceProperties EbsStorageSettingsProperty where
  toResourceProperties EbsStorageSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.EbsStorageSettings",
         supportsTags = Prelude.False,
         properties = ["EbsVolumeSizeInGb" JSON..= ebsVolumeSizeInGb]}
instance JSON.ToJSON EbsStorageSettingsProperty where
  toJSON EbsStorageSettingsProperty {..}
    = JSON.object ["EbsVolumeSizeInGb" JSON..= ebsVolumeSizeInGb]
instance Property "EbsVolumeSizeInGb" EbsStorageSettingsProperty where
  type PropertyType "EbsVolumeSizeInGb" EbsStorageSettingsProperty = Value Prelude.Integer
  set newValue EbsStorageSettingsProperty {..}
    = EbsStorageSettingsProperty {ebsVolumeSizeInGb = newValue, ..}