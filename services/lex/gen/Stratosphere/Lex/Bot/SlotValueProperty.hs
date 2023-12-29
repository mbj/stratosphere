module Stratosphere.Lex.Bot.SlotValueProperty (
        SlotValueProperty(..), mkSlotValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotValueProperty
  = SlotValueProperty {interpretedValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotValueProperty :: SlotValueProperty
mkSlotValueProperty
  = SlotValueProperty {interpretedValue = Prelude.Nothing}
instance ToResourceProperties SlotValueProperty where
  toResourceProperties SlotValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotValue", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InterpretedValue" Prelude.<$> interpretedValue])}
instance JSON.ToJSON SlotValueProperty where
  toJSON SlotValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InterpretedValue" Prelude.<$> interpretedValue]))
instance Property "InterpretedValue" SlotValueProperty where
  type PropertyType "InterpretedValue" SlotValueProperty = Value Prelude.Text
  set newValue SlotValueProperty {}
    = SlotValueProperty {interpretedValue = Prelude.pure newValue, ..}