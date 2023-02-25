module Stratosphere.Lex.Bot.ButtonProperty (
        ButtonProperty(..), mkButtonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ButtonProperty
  = ButtonProperty {text :: (Value Prelude.Text),
                    value :: (Value Prelude.Text)}
mkButtonProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ButtonProperty
mkButtonProperty text value
  = ButtonProperty {text = text, value = value}
instance ToResourceProperties ButtonProperty where
  toResourceProperties ButtonProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Button",
         properties = ["Text" JSON..= text, "Value" JSON..= value]}
instance JSON.ToJSON ButtonProperty where
  toJSON ButtonProperty {..}
    = JSON.object ["Text" JSON..= text, "Value" JSON..= value]
instance Property "Text" ButtonProperty where
  type PropertyType "Text" ButtonProperty = Value Prelude.Text
  set newValue ButtonProperty {..}
    = ButtonProperty {text = newValue, ..}
instance Property "Value" ButtonProperty where
  type PropertyType "Value" ButtonProperty = Value Prelude.Text
  set newValue ButtonProperty {..}
    = ButtonProperty {value = newValue, ..}