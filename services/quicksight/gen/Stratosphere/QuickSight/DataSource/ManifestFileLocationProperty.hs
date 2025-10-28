module Stratosphere.QuickSight.DataSource.ManifestFileLocationProperty (
        ManifestFileLocationProperty(..), mkManifestFileLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManifestFileLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-manifestfilelocation.html>
    ManifestFileLocationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-manifestfilelocation.html#cfn-quicksight-datasource-manifestfilelocation-bucket>
                                  bucket :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-manifestfilelocation.html#cfn-quicksight-datasource-manifestfilelocation-key>
                                  key :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManifestFileLocationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ManifestFileLocationProperty
mkManifestFileLocationProperty bucket key
  = ManifestFileLocationProperty
      {haddock_workaround_ = (), bucket = bucket, key = key}
instance ToResourceProperties ManifestFileLocationProperty where
  toResourceProperties ManifestFileLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.ManifestFileLocation",
         supportsTags = Prelude.False,
         properties = ["Bucket" JSON..= bucket, "Key" JSON..= key]}
instance JSON.ToJSON ManifestFileLocationProperty where
  toJSON ManifestFileLocationProperty {..}
    = JSON.object ["Bucket" JSON..= bucket, "Key" JSON..= key]
instance Property "Bucket" ManifestFileLocationProperty where
  type PropertyType "Bucket" ManifestFileLocationProperty = Value Prelude.Text
  set newValue ManifestFileLocationProperty {..}
    = ManifestFileLocationProperty {bucket = newValue, ..}
instance Property "Key" ManifestFileLocationProperty where
  type PropertyType "Key" ManifestFileLocationProperty = Value Prelude.Text
  set newValue ManifestFileLocationProperty {..}
    = ManifestFileLocationProperty {key = newValue, ..}