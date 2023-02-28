module Stratosphere.Lex.Bot.SlotTypeValueProperty (
        module Exports, SlotTypeValueProperty(..), mkSlotTypeValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SampleValueProperty as Exports
import Stratosphere.ResourceProperties
data SlotTypeValueProperty
  = SlotTypeValueProperty {sampleValue :: SampleValueProperty,
                           synonyms :: (Prelude.Maybe [SampleValueProperty])}
mkSlotTypeValueProperty ::
  SampleValueProperty -> SlotTypeValueProperty
mkSlotTypeValueProperty sampleValue
  = SlotTypeValueProperty
      {sampleValue = sampleValue, synonyms = Prelude.Nothing}
instance ToResourceProperties SlotTypeValueProperty where
  toResourceProperties SlotTypeValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotTypeValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SampleValue" JSON..= sampleValue]
                           (Prelude.catMaybes [(JSON..=) "Synonyms" Prelude.<$> synonyms]))}
instance JSON.ToJSON SlotTypeValueProperty where
  toJSON SlotTypeValueProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SampleValue" JSON..= sampleValue]
              (Prelude.catMaybes [(JSON..=) "Synonyms" Prelude.<$> synonyms])))
instance Property "SampleValue" SlotTypeValueProperty where
  type PropertyType "SampleValue" SlotTypeValueProperty = SampleValueProperty
  set newValue SlotTypeValueProperty {..}
    = SlotTypeValueProperty {sampleValue = newValue, ..}
instance Property "Synonyms" SlotTypeValueProperty where
  type PropertyType "Synonyms" SlotTypeValueProperty = [SampleValueProperty]
  set newValue SlotTypeValueProperty {..}
    = SlotTypeValueProperty {synonyms = Prelude.pure newValue, ..}