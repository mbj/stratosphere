module Stratosphere.QuickSight.DataSource.ManifestFileLocationProperty (
        ManifestFileLocationProperty(..), mkManifestFileLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManifestFileLocationProperty
  = ManifestFileLocationProperty {bucket :: (Value Prelude.Text),
                                  key :: (Value Prelude.Text)}
mkManifestFileLocationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ManifestFileLocationProperty
mkManifestFileLocationProperty bucket key
  = ManifestFileLocationProperty {bucket = bucket, key = key}
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