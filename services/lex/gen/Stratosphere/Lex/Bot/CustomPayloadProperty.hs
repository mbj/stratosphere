module Stratosphere.Lex.Bot.CustomPayloadProperty (
        CustomPayloadProperty(..), mkCustomPayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomPayloadProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-custompayload.html>
    CustomPayloadProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-custompayload.html#cfn-lex-bot-custompayload-value>
                           value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPayloadProperty ::
  Value Prelude.Text -> CustomPayloadProperty
mkCustomPayloadProperty value
  = CustomPayloadProperty {haddock_workaround_ = (), value = value}
instance ToResourceProperties CustomPayloadProperty where
  toResourceProperties CustomPayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.CustomPayload",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON CustomPayloadProperty where
  toJSON CustomPayloadProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" CustomPayloadProperty where
  type PropertyType "Value" CustomPayloadProperty = Value Prelude.Text
  set newValue CustomPayloadProperty {..}
    = CustomPayloadProperty {value = newValue, ..}