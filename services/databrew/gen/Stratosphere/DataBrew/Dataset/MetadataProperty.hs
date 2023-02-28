module Stratosphere.DataBrew.Dataset.MetadataProperty (
        MetadataProperty(..), mkMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataProperty
  = MetadataProperty {sourceArn :: (Prelude.Maybe (Value Prelude.Text))}
mkMetadataProperty :: MetadataProperty
mkMetadataProperty = MetadataProperty {sourceArn = Prelude.Nothing}
instance ToResourceProperties MetadataProperty where
  toResourceProperties MetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.Metadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SourceArn" Prelude.<$> sourceArn])}
instance JSON.ToJSON MetadataProperty where
  toJSON MetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SourceArn" Prelude.<$> sourceArn]))
instance Property "SourceArn" MetadataProperty where
  type PropertyType "SourceArn" MetadataProperty = Value Prelude.Text
  set newValue MetadataProperty {}
    = MetadataProperty {sourceArn = Prelude.pure newValue, ..}