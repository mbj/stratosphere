module Stratosphere.LicenseManager.License.MetadataProperty (
        MetadataProperty(..), mkMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-metadata.html>
    MetadataProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-metadata.html#cfn-licensemanager-license-metadata-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-metadata.html#cfn-licensemanager-license-metadata-value>
                      value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetadataProperty
mkMetadataProperty name value
  = MetadataProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties MetadataProperty where
  toResourceProperties MetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License.Metadata",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON MetadataProperty where
  toJSON MetadataProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" MetadataProperty where
  type PropertyType "Name" MetadataProperty = Value Prelude.Text
  set newValue MetadataProperty {..}
    = MetadataProperty {name = newValue, ..}
instance Property "Value" MetadataProperty where
  type PropertyType "Value" MetadataProperty = Value Prelude.Text
  set newValue MetadataProperty {..}
    = MetadataProperty {value = newValue, ..}