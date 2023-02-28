module Stratosphere.Lex.Bot.IntentOverrideProperty (
        module Exports, IntentOverrideProperty(..),
        mkIntentOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotValueOverrideMapProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntentOverrideProperty
  = IntentOverrideProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                            slots :: (Prelude.Maybe [SlotValueOverrideMapProperty])}
mkIntentOverrideProperty :: IntentOverrideProperty
mkIntentOverrideProperty
  = IntentOverrideProperty
      {name = Prelude.Nothing, slots = Prelude.Nothing}
instance ToResourceProperties IntentOverrideProperty where
  toResourceProperties IntentOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.IntentOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Slots" Prelude.<$> slots])}
instance JSON.ToJSON IntentOverrideProperty where
  toJSON IntentOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Slots" Prelude.<$> slots]))
instance Property "Name" IntentOverrideProperty where
  type PropertyType "Name" IntentOverrideProperty = Value Prelude.Text
  set newValue IntentOverrideProperty {..}
    = IntentOverrideProperty {name = Prelude.pure newValue, ..}
instance Property "Slots" IntentOverrideProperty where
  type PropertyType "Slots" IntentOverrideProperty = [SlotValueOverrideMapProperty]
  set newValue IntentOverrideProperty {..}
    = IntentOverrideProperty {slots = Prelude.pure newValue, ..}