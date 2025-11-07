module Stratosphere.Bedrock.Agent.OrchestrationExecutorProperty (
        OrchestrationExecutorProperty(..), mkOrchestrationExecutorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrchestrationExecutorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-orchestrationexecutor.html>
    OrchestrationExecutorProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-orchestrationexecutor.html#cfn-bedrock-agent-orchestrationexecutor-lambda>
                                   lambda :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrchestrationExecutorProperty ::
  Value Prelude.Text -> OrchestrationExecutorProperty
mkOrchestrationExecutorProperty lambda
  = OrchestrationExecutorProperty
      {haddock_workaround_ = (), lambda = lambda}
instance ToResourceProperties OrchestrationExecutorProperty where
  toResourceProperties OrchestrationExecutorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.OrchestrationExecutor",
         supportsTags = Prelude.False,
         properties = ["Lambda" JSON..= lambda]}
instance JSON.ToJSON OrchestrationExecutorProperty where
  toJSON OrchestrationExecutorProperty {..}
    = JSON.object ["Lambda" JSON..= lambda]
instance Property "Lambda" OrchestrationExecutorProperty where
  type PropertyType "Lambda" OrchestrationExecutorProperty = Value Prelude.Text
  set newValue OrchestrationExecutorProperty {..}
    = OrchestrationExecutorProperty {lambda = newValue, ..}