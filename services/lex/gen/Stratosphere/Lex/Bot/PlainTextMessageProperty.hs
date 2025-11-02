module Stratosphere.Lex.Bot.PlainTextMessageProperty (
        PlainTextMessageProperty(..), mkPlainTextMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlainTextMessageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-plaintextmessage.html>
    PlainTextMessageProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-plaintextmessage.html#cfn-lex-bot-plaintextmessage-value>
                              value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlainTextMessageProperty ::
  Value Prelude.Text -> PlainTextMessageProperty
mkPlainTextMessageProperty value
  = PlainTextMessageProperty
      {haddock_workaround_ = (), value = value}
instance ToResourceProperties PlainTextMessageProperty where
  toResourceProperties PlainTextMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.PlainTextMessage",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON PlainTextMessageProperty where
  toJSON PlainTextMessageProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" PlainTextMessageProperty where
  type PropertyType "Value" PlainTextMessageProperty = Value Prelude.Text
  set newValue PlainTextMessageProperty {..}
    = PlainTextMessageProperty {value = newValue, ..}