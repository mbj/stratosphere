module Stratosphere.Bedrock.IntelligentPromptRouter.PromptRouterTargetModelProperty (
        PromptRouterTargetModelProperty(..),
        mkPromptRouterTargetModelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptRouterTargetModelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-intelligentpromptrouter-promptroutertargetmodel.html>
    PromptRouterTargetModelProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-intelligentpromptrouter-promptroutertargetmodel.html#cfn-bedrock-intelligentpromptrouter-promptroutertargetmodel-modelarn>
                                     modelArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptRouterTargetModelProperty ::
  Value Prelude.Text -> PromptRouterTargetModelProperty
mkPromptRouterTargetModelProperty modelArn
  = PromptRouterTargetModelProperty
      {haddock_workaround_ = (), modelArn = modelArn}
instance ToResourceProperties PromptRouterTargetModelProperty where
  toResourceProperties PromptRouterTargetModelProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::IntelligentPromptRouter.PromptRouterTargetModel",
         supportsTags = Prelude.False,
         properties = ["ModelArn" JSON..= modelArn]}
instance JSON.ToJSON PromptRouterTargetModelProperty where
  toJSON PromptRouterTargetModelProperty {..}
    = JSON.object ["ModelArn" JSON..= modelArn]
instance Property "ModelArn" PromptRouterTargetModelProperty where
  type PropertyType "ModelArn" PromptRouterTargetModelProperty = Value Prelude.Text
  set newValue PromptRouterTargetModelProperty {..}
    = PromptRouterTargetModelProperty {modelArn = newValue, ..}