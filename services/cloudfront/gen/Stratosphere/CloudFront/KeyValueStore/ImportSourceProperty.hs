module Stratosphere.CloudFront.KeyValueStore.ImportSourceProperty (
        ImportSourceProperty(..), mkImportSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImportSourceProperty
  = ImportSourceProperty {sourceArn :: (Value Prelude.Text),
                          sourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImportSourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ImportSourceProperty
mkImportSourceProperty sourceArn sourceType
  = ImportSourceProperty
      {sourceArn = sourceArn, sourceType = sourceType}
instance ToResourceProperties ImportSourceProperty where
  toResourceProperties ImportSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::KeyValueStore.ImportSource",
         supportsTags = Prelude.False,
         properties = ["SourceArn" JSON..= sourceArn,
                       "SourceType" JSON..= sourceType]}
instance JSON.ToJSON ImportSourceProperty where
  toJSON ImportSourceProperty {..}
    = JSON.object
        ["SourceArn" JSON..= sourceArn, "SourceType" JSON..= sourceType]
instance Property "SourceArn" ImportSourceProperty where
  type PropertyType "SourceArn" ImportSourceProperty = Value Prelude.Text
  set newValue ImportSourceProperty {..}
    = ImportSourceProperty {sourceArn = newValue, ..}
instance Property "SourceType" ImportSourceProperty where
  type PropertyType "SourceType" ImportSourceProperty = Value Prelude.Text
  set newValue ImportSourceProperty {..}
    = ImportSourceProperty {sourceType = newValue, ..}