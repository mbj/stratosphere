module Stratosphere.Rekognition.Collection (
        Collection(..), mkCollection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Collection
  = Collection {collectionId :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCollection :: Value Prelude.Text -> Collection
mkCollection collectionId
  = Collection {collectionId = collectionId, tags = Prelude.Nothing}
instance ToResourceProperties Collection where
  toResourceProperties Collection {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::Collection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CollectionId" JSON..= collectionId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Collection where
  toJSON Collection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CollectionId" JSON..= collectionId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CollectionId" Collection where
  type PropertyType "CollectionId" Collection = Value Prelude.Text
  set newValue Collection {..}
    = Collection {collectionId = newValue, ..}
instance Property "Tags" Collection where
  type PropertyType "Tags" Collection = [Tag]
  set newValue Collection {..}
    = Collection {tags = Prelude.pure newValue, ..}