module Stratosphere.Bedrock.Guardrail.WordConfigProperty (
        WordConfigProperty(..), mkWordConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WordConfigProperty
  = WordConfigProperty {text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWordConfigProperty :: Value Prelude.Text -> WordConfigProperty
mkWordConfigProperty text = WordConfigProperty {text = text}
instance ToResourceProperties WordConfigProperty where
  toResourceProperties WordConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.WordConfig",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON WordConfigProperty where
  toJSON WordConfigProperty {..} = JSON.object ["Text" JSON..= text]
instance Property "Text" WordConfigProperty where
  type PropertyType "Text" WordConfigProperty = Value Prelude.Text
  set newValue WordConfigProperty {}
    = WordConfigProperty {text = newValue, ..}