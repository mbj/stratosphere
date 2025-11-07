module Stratosphere.ImageBuilder.Image.DeletionSettingsProperty (
        DeletionSettingsProperty(..), mkDeletionSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeletionSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-deletionsettings.html>
    DeletionSettingsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-deletionsettings.html#cfn-imagebuilder-image-deletionsettings-executionrole>
                              executionRole :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeletionSettingsProperty ::
  Value Prelude.Text -> DeletionSettingsProperty
mkDeletionSettingsProperty executionRole
  = DeletionSettingsProperty
      {haddock_workaround_ = (), executionRole = executionRole}
instance ToResourceProperties DeletionSettingsProperty where
  toResourceProperties DeletionSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Image.DeletionSettings",
         supportsTags = Prelude.False,
         properties = ["ExecutionRole" JSON..= executionRole]}
instance JSON.ToJSON DeletionSettingsProperty where
  toJSON DeletionSettingsProperty {..}
    = JSON.object ["ExecutionRole" JSON..= executionRole]
instance Property "ExecutionRole" DeletionSettingsProperty where
  type PropertyType "ExecutionRole" DeletionSettingsProperty = Value Prelude.Text
  set newValue DeletionSettingsProperty {..}
    = DeletionSettingsProperty {executionRole = newValue, ..}