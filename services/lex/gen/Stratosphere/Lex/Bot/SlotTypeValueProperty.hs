module Stratosphere.Lex.Bot.SlotTypeValueProperty (
        module Exports, SlotTypeValueProperty(..), mkSlotTypeValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SampleValueProperty as Exports
import Stratosphere.ResourceProperties
data SlotTypeValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottypevalue.html>
    SlotTypeValueProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottypevalue.html#cfn-lex-bot-slottypevalue-samplevalue>
                           sampleValue :: SampleValueProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottypevalue.html#cfn-lex-bot-slottypevalue-synonyms>
                           synonyms :: (Prelude.Maybe [SampleValueProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotTypeValueProperty ::
  SampleValueProperty -> SlotTypeValueProperty
mkSlotTypeValueProperty sampleValue
  = SlotTypeValueProperty
      {haddock_workaround_ = (), sampleValue = sampleValue,
       synonyms = Prelude.Nothing}
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