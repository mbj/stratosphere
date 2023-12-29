module Stratosphere.DevOpsGuru.ResourceCollection.TagCollectionProperty (
        TagCollectionProperty(..), mkTagCollectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagCollectionProperty
  = TagCollectionProperty {appBoundaryKey :: (Prelude.Maybe (Value Prelude.Text)),
                           tagValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagCollectionProperty :: TagCollectionProperty
mkTagCollectionProperty
  = TagCollectionProperty
      {appBoundaryKey = Prelude.Nothing, tagValues = Prelude.Nothing}
instance ToResourceProperties TagCollectionProperty where
  toResourceProperties TagCollectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::ResourceCollection.TagCollection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppBoundaryKey" Prelude.<$> appBoundaryKey,
                            (JSON..=) "TagValues" Prelude.<$> tagValues])}
instance JSON.ToJSON TagCollectionProperty where
  toJSON TagCollectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppBoundaryKey" Prelude.<$> appBoundaryKey,
               (JSON..=) "TagValues" Prelude.<$> tagValues]))
instance Property "AppBoundaryKey" TagCollectionProperty where
  type PropertyType "AppBoundaryKey" TagCollectionProperty = Value Prelude.Text
  set newValue TagCollectionProperty {..}
    = TagCollectionProperty
        {appBoundaryKey = Prelude.pure newValue, ..}
instance Property "TagValues" TagCollectionProperty where
  type PropertyType "TagValues" TagCollectionProperty = ValueList Prelude.Text
  set newValue TagCollectionProperty {..}
    = TagCollectionProperty {tagValues = Prelude.pure newValue, ..}