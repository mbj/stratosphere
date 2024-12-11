module Stratosphere.CloudFormation.GuardHook.HookTargetProperty (
        HookTargetProperty(..), mkHookTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HookTargetProperty
  = HookTargetProperty {action :: (Value Prelude.Text),
                        invocationPoint :: (Value Prelude.Text),
                        targetName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHookTargetProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> HookTargetProperty
mkHookTargetProperty action invocationPoint targetName
  = HookTargetProperty
      {action = action, invocationPoint = invocationPoint,
       targetName = targetName}
instance ToResourceProperties HookTargetProperty where
  toResourceProperties HookTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::GuardHook.HookTarget",
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