module Stratosphere.Lex.Bot.SlotValueOverrideProperty (
        module Exports, SlotValueOverrideProperty(..),
        mkSlotValueOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotValueOverrideProperty
  = SlotValueOverrideProperty {shape :: (Prelude.Maybe (Value Prelude.Text)),
                               value :: (Prelude.Maybe SlotValueProperty),
                               values :: (Prelude.Maybe [SlotValueOverrideProperty])}
mkSlotValueOverrideProperty :: SlotValueOverrideProperty
mkSlotValueOverrideProperty
  = SlotValueOverrideProperty
      {shape = Prelude.Nothing, value = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties SlotValueOverrideProperty where
  toResourceProperties SlotValueOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotValueOverride",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Shape" Prelude.<$> shape,
                            (JSON..=) "Value" Prelude.<$> value,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON SlotValueOverrideProperty where
  toJSON SlotValueOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Shape" Prelude.<$> shape,
               (JSON..=) "Value" Prelude.<$> value,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Shape" SlotValueOverrideProperty where
  type PropertyType "Shape" SlotValueOverrideProperty = Value Prelude.Text
  set newValue SlotValueOverrideProperty {..}
    = SlotValueOverrideProperty {shape = Prelude.pure newValue, ..}
instance Property "Value" SlotValueOverrideProperty where
  type PropertyType "Value" SlotValueOverrideProperty = SlotValueProperty
  set newValue SlotValueOverrideProperty {..}
    = SlotValueOverrideProperty {value = Prelude.pure newValue, ..}
instance Property "Values" SlotValueOverrideProperty where
  type PropertyType "Values" SlotValueOverrideProperty = [SlotValueOverrideProperty]
  set newValue SlotValueOverrideProperty {..}
    = SlotValueOverrideProperty {values = Prelude.pure newValue, ..}