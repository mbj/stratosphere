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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentoverride.html>
    IntentOverrideProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentoverride.html#cfn-lex-bot-intentoverride-name>
                            name :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentoverride.html#cfn-lex-bot-intentoverride-slots>
                            slots :: (Prelude.Maybe [SlotValueOverrideMapProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntentOverrideProperty :: IntentOverrideProperty
mkIntentOverrideProperty
  = IntentOverrideProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       slots = Prelude.Nothing}
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