module Stratosphere.CloudFront.KeyValueStore (
        module Exports, KeyValueStore(..), mkKeyValueStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.KeyValueStore.ImportSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyValueStore
  = KeyValueStore {comment :: (Prelude.Maybe (Value Prelude.Text)),
                   importSource :: (Prelude.Maybe ImportSourceProperty),
                   name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyValueStore :: Value Prelude.Text -> KeyValueStore
mkKeyValueStore name
  = KeyValueStore
      {name = name, comment = Prelude.Nothing,
       importSource = Prelude.Nothing}
instance ToResourceProperties KeyValueStore where
  toResourceProperties KeyValueStore {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::KeyValueStore",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Comment" Prelude.<$> comment,
                               (JSON..=) "ImportSource" Prelude.<$> importSource]))}
instance JSON.ToJSON KeyValueStore where
  toJSON KeyValueStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Comment" Prelude.<$> comment,
                  (JSON..=) "ImportSource" Prelude.<$> importSource])))
instance Property "Comment" KeyValueStore where
  type PropertyType "Comment" KeyValueStore = Value Prelude.Text
  set newValue KeyValueStore {..}
    = KeyValueStore {comment = Prelude.pure newValue, ..}
instance Property "ImportSource" KeyValueStore where
  type PropertyType "ImportSource" KeyValueStore = ImportSourceProperty
  set newValue KeyValueStore {..}
    = KeyValueStore {importSource = Prelude.pure newValue, ..}
instance Property "Name" KeyValueStore where
  type PropertyType "Name" KeyValueStore = Value Prelude.Text
  set newValue KeyValueStore {..}
    = KeyValueStore {name = newValue, ..}