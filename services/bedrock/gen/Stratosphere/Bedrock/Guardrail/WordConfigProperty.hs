module Stratosphere.Bedrock.Guardrail.WordConfigProperty (
        WordConfigProperty(..), mkWordConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WordConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordconfig.html>
    WordConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-wordconfig.html#cfn-bedrock-guardrail-wordconfig-text>
                        text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWordConfigProperty :: Value Prelude.Text -> WordConfigProperty
mkWordConfigProperty text
  = WordConfigProperty {haddock_workaround_ = (), text = text}
instance ToResourceProperties WordConfigProperty where
  toResourceProperties WordConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.WordConfig",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON WordConfigProperty where
  toJSON WordConfigProperty {..} = JSON.object ["Text" JSON..= text]
instance Property "Text" WordConfigProperty where
  type PropertyType "Text" WordConfigProperty = Value Prelude.Text
  set newValue WordConfigProperty {..}
    = WordConfigProperty {text = newValue, ..}