module Stratosphere.Lex.Bot.DialogStateProperty (
        module Exports, DialogStateProperty(..), mkDialogStateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.IntentOverrideProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SessionAttributeProperty as Exports
import Stratosphere.ResourceProperties
data DialogStateProperty
  = DialogStateProperty {dialogAction :: (Prelude.Maybe DialogActionProperty),
                         intent :: (Prelude.Maybe IntentOverrideProperty),
                         sessionAttributes :: (Prelude.Maybe [SessionAttributeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDialogStateProperty :: DialogStateProperty
mkDialogStateProperty
  = DialogStateProperty
      {dialogAction = Prelude.Nothing, intent = Prelude.Nothing,
       sessionAttributes = Prelude.Nothing}
instance ToResourceProperties DialogStateProperty where
  toResourceProperties DialogStateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DialogState",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DialogAction" Prelude.<$> dialogAction,
                            (JSON..=) "Intent" Prelude.<$> intent,
                            (JSON..=) "SessionAttributes" Prelude.<$> sessionAttributes])}
instance JSON.ToJSON DialogStateProperty where
  toJSON DialogStateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DialogAction" Prelude.<$> dialogAction,
               (JSON..=) "Intent" Prelude.<$> intent,
               (JSON..=) "SessionAttributes" Prelude.<$> sessionAttributes]))
instance Property "DialogAction" DialogStateProperty where
  type PropertyType "DialogAction" DialogStateProperty = DialogActionProperty
  set newValue DialogStateProperty {..}
    = DialogStateProperty {dialogAction = Prelude.pure newValue, ..}
instance Property "Intent" DialogStateProperty where
  type PropertyType "Intent" DialogStateProperty = IntentOverrideProperty
  set newValue DialogStateProperty {..}
    = DialogStateProperty {intent = Prelude.pure newValue, ..}
instance Property "SessionAttributes" DialogStateProperty where
  type PropertyType "SessionAttributes" DialogStateProperty = [SessionAttributeProperty]
  set newValue DialogStateProperty {..}
    = DialogStateProperty
        {sessionAttributes = Prelude.pure newValue, ..}