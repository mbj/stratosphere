module Stratosphere.Lex.Bot.CustomPayloadProperty (
        CustomPayloadProperty(..), mkCustomPayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomPayloadProperty
  = CustomPayloadProperty {value :: (Value Prelude.Text)}
mkCustomPayloadProperty ::
  Value Prelude.Text -> CustomPayloadProperty
mkCustomPayloadProperty value
  = CustomPayloadProperty {value = value}
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
  set newValue CustomPayloadProperty {}
    = CustomPayloadProperty {value = newValue, ..}