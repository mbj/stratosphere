module Stratosphere.Lex.Bot.SessionAttributeProperty (
        SessionAttributeProperty(..), mkSessionAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SessionAttributeProperty
  = SessionAttributeProperty {key :: (Value Prelude.Text),
                              value :: (Prelude.Maybe (Value Prelude.Text))}
mkSessionAttributeProperty ::
  Value Prelude.Text -> SessionAttributeProperty
mkSessionAttributeProperty key
  = SessionAttributeProperty {key = key, value = Prelude.Nothing}
instance ToResourceProperties SessionAttributeProperty where
  toResourceProperties SessionAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SessionAttribute",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON SessionAttributeProperty where
  toJSON SessionAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Key" SessionAttributeProperty where
  type PropertyType "Key" SessionAttributeProperty = Value Prelude.Text
  set newValue SessionAttributeProperty {..}
    = SessionAttributeProperty {key = newValue, ..}
instance Property "Value" SessionAttributeProperty where
  type PropertyType "Value" SessionAttributeProperty = Value Prelude.Text
  set newValue SessionAttributeProperty {..}
    = SessionAttributeProperty {value = Prelude.pure newValue, ..}