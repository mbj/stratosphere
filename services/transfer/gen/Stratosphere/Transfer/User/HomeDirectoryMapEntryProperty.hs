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
                                   target :: (Value Prelude.Text)}
mkHomeDirectoryMapEntryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> HomeDirectoryMapEntryProperty
mkHomeDirectoryMapEntryProperty entry target
  = HomeDirectoryMapEntryProperty {entry = entry, target = target}
instance ToResourceProperties HomeDirectoryMapEntryProperty where
  toResourceProperties HomeDirectoryMapEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::User.HomeDirectoryMapEntry",
         properties = ["Entry" JSON..= entry, "Target" JSON..= target]}
instance JSON.ToJSON HomeDirectoryMapEntryProperty where
  toJSON HomeDirectoryMapEntryProperty {..}
    = JSON.object ["Entry" JSON..= entry, "Target" JSON..= target]
instance Property "Entry" HomeDirectoryMapEntryProperty where
  type PropertyType "Entry" HomeDirectoryMapEntryProperty = Value Prelude.Text
  set newValue HomeDirectoryMapEntryProperty {..}
    = HomeDirectoryMapEntryProperty {entry = newValue, ..}
instance Property "Target" HomeDirectoryMapEntryProperty where
  type PropertyType "Target" HomeDirectoryMapEntryProperty = Value Prelude.Text
  set newValue HomeDirectoryMapEntryProperty {..}
    = HomeDirectoryMapEntryProperty {target = newValue, ..}