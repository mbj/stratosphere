module Stratosphere.CloudFormation.LambdaHook.HookTargetProperty (
        HookTargetProperty(..), mkHookTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HookTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-hooktarget.html>
    HookTargetProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-hooktarget.html#cfn-cloudformation-lambdahook-hooktarget-action>
                        action :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-hooktarget.html#cfn-cloudformation-lambdahook-hooktarget-invocationpoint>
                        invocationPoint :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-hooktarget.html#cfn-cloudformation-lambdahook-hooktarget-targetname>
                        targetName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHookTargetProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> HookTargetProperty
mkHookTargetProperty action invocationPoint targetName
  = HookTargetProperty
      {haddock_workaround_ = (), action = action,
       invocationPoint = invocationPoint, targetName = targetName}
instance ToResourceProperties HookTargetProperty where
  toResourceProperties HookTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::LambdaHook.HookTarget",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action,
                       "InvocationPoint" JSON..= invocationPoint,
                       "TargetName" JSON..= targetName]}
instance JSON.ToJSON HookTargetProperty where
  toJSON HookTargetProperty {..}
    = JSON.object
        ["Action" JSON..= action,
         "InvocationPoint" JSON..= invocationPoint,
         "TargetName" JSON..= targetName]
instance Property "Action" HookTargetProperty where
  type PropertyType "Action" HookTargetProperty = Value Prelude.Text
  set newValue HookTargetProperty {..}
    = HookTargetProperty {action = newValue, ..}
instance Property "InvocationPoint" HookTargetProperty where
  type PropertyType "InvocationPoint" HookTargetProperty = Value Prelude.Text
  set newValue HookTargetProperty {..}
    = HookTargetProperty {invocationPoint = newValue, ..}
instance Property "TargetName" HookTargetProperty where
  type PropertyType "TargetName" HookTargetProperty = Value Prelude.Text
  set newValue HookTargetProperty {..}
    = HookTargetProperty {targetName = newValue, ..}