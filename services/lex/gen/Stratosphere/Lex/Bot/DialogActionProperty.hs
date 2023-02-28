module Stratosphere.Lex.Bot.DialogActionProperty (
        DialogActionProperty(..), mkDialogActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DialogActionProperty
  = DialogActionProperty {slotToElicit :: (Prelude.Maybe (Value Prelude.Text)),
                          suppressNextMessage :: (Prelude.Maybe (Value Prelude.Bool)),
                          type' :: (Value Prelude.Text)}
mkDialogActionProperty ::
  Value Prelude.Text -> DialogActionProperty
mkDialogActionProperty type'
  = DialogActionProperty
      {type' = type', slotToElicit = Prelude.Nothing,
       suppressNextMessage = Prelude.Nothing}
instance ToResourceProperties DialogActionProperty where
  toResourceProperties DialogActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DialogAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "SlotToElicit" Prelude.<$> slotToElicit,
                               (JSON..=) "SuppressNextMessage" Prelude.<$> suppressNextMessage]))}
instance JSON.ToJSON DialogActionProperty where
  toJSON DialogActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "SlotToElicit" Prelude.<$> slotToElicit,
                  (JSON..=) "SuppressNextMessage" Prelude.<$> suppressNextMessage])))
instance Property "SlotToElicit" DialogActionProperty where
  type PropertyType "SlotToElicit" DialogActionProperty = Value Prelude.Text
  set newValue DialogActionProperty {..}
    = DialogActionProperty {slotToElicit = Prelude.pure newValue, ..}
instance Property "SuppressNextMessage" DialogActionProperty where
  type PropertyType "SuppressNextMessage" DialogActionProperty = Value Prelude.Bool
  set newValue DialogActionProperty {..}
    = DialogActionProperty
        {suppressNextMessage = Prelude.pure newValue, ..}
instance Property "Type" DialogActionProperty where
  type PropertyType "Type" DialogActionProperty = Value Prelude.Text
  set newValue DialogActionProperty {..}
    = DialogActionProperty {type' = newValue, ..}