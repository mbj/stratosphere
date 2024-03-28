module Stratosphere.Transfer.User.HomeDirectoryMapEntryProperty (
        HomeDirectoryMapEntryProperty(..), mkHomeDirectoryMapEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HomeDirectoryMapEntryProperty
  = HomeDirectoryMapEntryProperty {entry :: (Value Prelude.Text),
                                   target :: (Value Prelude.Text),
                                   type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHomeDirectoryMapEntryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> HomeDirectoryMapEntryProperty
mkHomeDirectoryMapEntryProperty entry target
  = HomeDirectoryMapEntryProperty
      {entry = entry, target = target, type' = Prelude.Nothing}
instance ToResourceProperties HomeDirectoryMapEntryProperty where
  toResourceProperties HomeDirectoryMapEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::User.HomeDirectoryMapEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Entry" JSON..= entry, "Target" JSON..= target]
                           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON HomeDirectoryMapEntryProperty where
  toJSON HomeDirectoryMapEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Entry" JSON..= entry, "Target" JSON..= target]
              (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])))
instance Property "Entry" HomeDirectoryMapEntryProperty where
  type PropertyType "Entry" HomeDirectoryMapEntryProperty = Value Prelude.Text
  set newValue HomeDirectoryMapEntryProperty {..}
    = HomeDirectoryMapEntryProperty {entry = newValue, ..}
instance Property "Target" HomeDirectoryMapEntryProperty where
  type PropertyType "Target" HomeDirectoryMapEntryProperty = Value Prelude.Text
  set newValue HomeDirectoryMapEntryProperty {..}
    = HomeDirectoryMapEntryProperty {target = newValue, ..}
instance Property "Type" HomeDirectoryMapEntryProperty where
  type PropertyType "Type" HomeDirectoryMapEntryProperty = Value Prelude.Text
  set newValue HomeDirectoryMapEntryProperty {..}
    = HomeDirectoryMapEntryProperty {type' = Prelude.pure newValue, ..}