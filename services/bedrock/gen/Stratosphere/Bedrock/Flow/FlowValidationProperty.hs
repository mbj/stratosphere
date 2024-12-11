module Stratosphere.Bedrock.Flow.FlowValidationProperty (
        FlowValidationProperty(..), mkFlowValidationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowValidationProperty
  = FlowValidationProperty {message :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowValidationProperty ::
  Value Prelude.Text -> FlowValidationProperty
mkFlowValidationProperty message
  = FlowValidationProperty {message = message}
instance ToResourceProperties FlowValidationProperty where
  toResourceProperties FlowValidationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowValidation",
         supportsTags = Prelude.False,
         properties = ["Message" JSON..= message]}
instance JSON.ToJSON FlowValidationProperty where
  toJSON FlowValidationProperty {..}
    = JSON.object ["Message" JSON..= message]
instance Property "Message" FlowValidationProperty where
  type PropertyType "Message" FlowValidationProperty = Value Prelude.Text
  set newValue FlowValidationProperty {}
    = FlowValidationProperty {message = newValue, ..}