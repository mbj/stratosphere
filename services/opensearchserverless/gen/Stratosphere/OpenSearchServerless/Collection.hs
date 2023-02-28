module Stratosphere.OpenSearchServerless.Collection (
        Collection(..), mkCollection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Collection
  = Collection {description :: (Prelude.Maybe (Value Prelude.Text)),
                name :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag]),
                type' :: (Prelude.Maybe (Value Prelude.Text))}
mkCollection :: Value Prelude.Text -> Collection
mkCollection name
  = Collection
      {name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties Collection where
  toResourceProperties Collection {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::Collection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON Collection where
  toJSON Collection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "Description" Collection where
  type PropertyType "Description" Collection = Value Prelude.Text
  set newValue Collection {..}
    = Collection {description = Prelude.pure newValue, ..}
instance Property "Name" Collection where
  type PropertyType "Name" Collection = Value Prelude.Text
  set newValue Collection {..} = Collection {name = newValue, ..}
instance Property "Tags" Collection where
  type PropertyType "Tags" Collection = [Tag]
  set newValue Collection {..}
    = Collection {tags = Prelude.pure newValue, ..}
instance Property "Type" Collection where
  type PropertyType "Type" Collection = Value Prelude.Text
  set newValue Collection {..}
    = Collection {type' = Prelude.pure newValue, ..}