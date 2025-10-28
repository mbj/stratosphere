module Stratosphere.SageMaker.Space.SpaceSharingSettingsProperty (
        SpaceSharingSettingsProperty(..), mkSpaceSharingSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpaceSharingSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesharingsettings.html>
    SpaceSharingSettingsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesharingsettings.html#cfn-sagemaker-space-spacesharingsettings-sharingtype>
                                  sharingType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpaceSharingSettingsProperty ::
  Value Prelude.Text -> SpaceSharingSettingsProperty
mkSpaceSharingSettingsProperty sharingType
  = SpaceSharingSettingsProperty
      {haddock_workaround_ = (), sharingType = sharingType}
instance ToResourceProperties SpaceSharingSettingsProperty where
  toResourceProperties SpaceSharingSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.SpaceSharingSettings",
         supportsTags = Prelude.False,
         properties = ["SharingType" JSON..= sharingType]}
instance JSON.ToJSON SpaceSharingSettingsProperty where
  toJSON SpaceSharingSettingsProperty {..}
    = JSON.object ["SharingType" JSON..= sharingType]
instance Property "SharingType" SpaceSharingSettingsProperty where
  type PropertyType "SharingType" SpaceSharingSettingsProperty = Value Prelude.Text
  set newValue SpaceSharingSettingsProperty {..}
    = SpaceSharingSettingsProperty {sharingType = newValue, ..}