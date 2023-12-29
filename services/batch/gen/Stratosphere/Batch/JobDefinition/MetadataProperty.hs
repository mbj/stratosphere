module Stratosphere.Batch.JobDefinition.MetadataProperty (
        MetadataProperty(..), mkMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data MetadataProperty
  = MetadataProperty {labels :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataProperty :: MetadataProperty
mkMetadataProperty = MetadataProperty {labels = Prelude.Nothing}
instance ToResourceProperties MetadataProperty where
  toResourceProperties MetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Metadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Labels" Prelude.<$> labels])}
instance JSON.ToJSON MetadataProperty where
  toJSON MetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Labels" Prelude.<$> labels]))
instance Property "Labels" MetadataProperty where
  type PropertyType "Labels" MetadataProperty = JSON.Object
  set newValue MetadataProperty {}
    = MetadataProperty {labels = Prelude.pure newValue, ..}