module Stratosphere.Lex.Bot.SlotValueOverrideMapProperty (
        module Exports, SlotValueOverrideMapProperty(..),
        mkSlotValueOverrideMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotValueOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotValueOverrideMapProperty
  = SlotValueOverrideMapProperty {slotName :: (Prelude.Maybe (Value Prelude.Text)),
                                  slotValueOverride :: (Prelude.Maybe SlotValueOverrideProperty)}
mkSlotValueOverrideMapProperty :: SlotValueOverrideMapProperty
mkSlotValueOverrideMapProperty
  = SlotValueOverrideMapProperty
      {slotName = Prelude.Nothing, slotValueOverride = Prelude.Nothing}
instance ToResourceProperties SlotValueOverrideMapProperty where
  toResourceProperties SlotValueOverrideMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotValueOverrideMap",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SlotName" Prelude.<$> slotName,
                            (JSON..=) "SlotValueOverride" Prelude.<$> slotValueOverride])}
instance JSON.ToJSON SlotValueOverrideMapProperty where
  toJSON SlotValueOverrideMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SlotName" Prelude.<$> slotName,
               (JSON..=) "SlotValueOverride" Prelude.<$> slotValueOverride]))
instance Property "SlotName" SlotValueOverrideMapProperty where
  type PropertyType "SlotName" SlotValueOverrideMapProperty = Value Prelude.Text
  set newValue SlotValueOverrideMapProperty {..}
    = SlotValueOverrideMapProperty
        {slotName = Prelude.pure newValue, ..}
instance Property "SlotValueOverride" SlotValueOverrideMapProperty where
  type PropertyType "SlotValueOverride" SlotValueOverrideMapProperty = SlotValueOverrideProperty
  set newValue SlotValueOverrideMapProperty {..}
    = SlotValueOverrideMapProperty
        {slotValueOverride = Prelude.pure newValue, ..}