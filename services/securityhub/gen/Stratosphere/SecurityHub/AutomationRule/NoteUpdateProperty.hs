module Stratosphere.SecurityHub.AutomationRule.NoteUpdateProperty (
        NoteUpdateProperty(..), mkNoteUpdateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NoteUpdateProperty
  = NoteUpdateProperty {text :: (Value Prelude.Text),
                        updatedBy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNoteUpdateProperty ::
  Value Prelude.Text -> JSON.Object -> NoteUpdateProperty
mkNoteUpdateProperty text updatedBy
  = NoteUpdateProperty {text = text, updatedBy = updatedBy}
instance ToResourceProperties NoteUpdateProperty where
  toResourceProperties NoteUpdateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.NoteUpdate",
         supportsTags = Prelude.False,
         properties = ["Text" JSON..= text, "UpdatedBy" JSON..= updatedBy]}
instance JSON.ToJSON NoteUpdateProperty where
  toJSON NoteUpdateProperty {..}
    = JSON.object ["Text" JSON..= text, "UpdatedBy" JSON..= updatedBy]
instance Property "Text" NoteUpdateProperty where
  type PropertyType "Text" NoteUpdateProperty = Value Prelude.Text
  set newValue NoteUpdateProperty {..}
    = NoteUpdateProperty {text = newValue, ..}
instance Property "UpdatedBy" NoteUpdateProperty where
  type PropertyType "UpdatedBy" NoteUpdateProperty = JSON.Object
  set newValue NoteUpdateProperty {..}
    = NoteUpdateProperty {updatedBy = newValue, ..}