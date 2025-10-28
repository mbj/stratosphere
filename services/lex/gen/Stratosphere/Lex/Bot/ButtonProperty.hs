module Stratosphere.Lex.Bot.ButtonProperty (
        ButtonProperty(..), mkButtonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ButtonProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-button.html>
    ButtonProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-button.html#cfn-lex-bot-button-text>
                    text :: (Value Prelude.Text),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-button.html#cfn-lex-bot-button-value>
                    value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkButtonProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ButtonProperty
mkButtonProperty text value
  = ButtonProperty {text = text, value = value}
instance ToResourceProperties ButtonProperty where
  toResourceProperties ButtonProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Button", supportsTags = Prelude.False,
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