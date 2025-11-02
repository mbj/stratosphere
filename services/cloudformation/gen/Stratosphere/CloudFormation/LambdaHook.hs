module Stratosphere.CloudFormation.LambdaHook (
        module Exports, LambdaHook(..), mkLambdaHook
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.LambdaHook.StackFiltersProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.LambdaHook.TargetFiltersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaHook
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html>
    LambdaHook {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html#cfn-cloudformation-lambdahook-alias>
                alias :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html#cfn-cloudformation-lambdahook-executionrole>
                executionRole :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html#cfn-cloudformation-lambdahook-failuremode>
                failureMode :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html#cfn-cloudformation-lambdahook-hookstatus>
                hookStatus :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html#cfn-cloudformation-lambdahook-lambdafunction>
                lambdaFunction :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html#cfn-cloudformation-lambdahook-stackfilters>
                stackFilters :: (Prelude.Maybe StackFiltersProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html#cfn-cloudformation-lambdahook-targetfilters>
                targetFilters :: (Prelude.Maybe TargetFiltersProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-lambdahook.html#cfn-cloudformation-lambdahook-targetoperations>
                targetOperations :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaHook ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> ValueList Prelude.Text -> LambdaHook
mkLambdaHook
  alias
  executionRole
  failureMode
  hookStatus
  lambdaFunction
  targetOperations
  = LambdaHook
      {haddock_workaround_ = (), alias = alias,
       executionRole = executionRole, failureMode = failureMode,
       hookStatus = hookStatus, lambdaFunction = lambdaFunction,
       targetOperations = targetOperations,
       stackFilters = Prelude.Nothing, targetFilters = Prelude.Nothing}
instance ToResourceProperties LambdaHook where
  toResourceProperties LambdaHook {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::LambdaHook",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Alias" JSON..= alias, "ExecutionRole" JSON..= executionRole,
                            "FailureMode" JSON..= failureMode, "HookStatus" JSON..= hookStatus,
                            "LambdaFunction" JSON..= lambdaFunction,
                            "TargetOperations" JSON..= targetOperations]
                           (Prelude.catMaybes
                              [(JSON..=) "StackFilters" Prelude.<$> stackFilters,
                               (JSON..=) "TargetFilters" Prelude.<$> targetFilters]))}
instance JSON.ToJSON LambdaHook where
  toJSON LambdaHook {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Alias" JSON..= alias, "ExecutionRole" JSON..= executionRole,
               "FailureMode" JSON..= failureMode, "HookStatus" JSON..= hookStatus,
               "LambdaFunction" JSON..= lambdaFunction,
               "TargetOperations" JSON..= targetOperations]
              (Prelude.catMaybes
                 [(JSON..=) "StackFilters" Prelude.<$> stackFilters,
                  (JSON..=) "TargetFilters" Prelude.<$> targetFilters])))
instance Property "Alias" LambdaHook where
  type PropertyType "Alias" LambdaHook = Value Prelude.Text
  set newValue LambdaHook {..} = LambdaHook {alias = newValue, ..}
instance Property "ExecutionRole" LambdaHook where
  type PropertyType "ExecutionRole" LambdaHook = Value Prelude.Text
  set newValue LambdaHook {..}
    = LambdaHook {executionRole = newValue, ..}
instance Property "FailureMode" LambdaHook where
  type PropertyType "FailureMode" LambdaHook = Value Prelude.Text
  set newValue LambdaHook {..}
    = LambdaHook {failureMode = newValue, ..}
instance Property "HookStatus" LambdaHook where
  type PropertyType "HookStatus" LambdaHook = Value Prelude.Text
  set newValue LambdaHook {..}
    = LambdaHook {hookStatus = newValue, ..}
instance Property "LambdaFunction" LambdaHook where
  type PropertyType "LambdaFunction" LambdaHook = Value Prelude.Text
  set newValue LambdaHook {..}
    = LambdaHook {lambdaFunction = newValue, ..}
instance Property "StackFilters" LambdaHook where
  type PropertyType "StackFilters" LambdaHook = StackFiltersProperty
  set newValue LambdaHook {..}
    = LambdaHook {stackFilters = Prelude.pure newValue, ..}
instance Property "TargetFilters" LambdaHook where
  type PropertyType "TargetFilters" LambdaHook = TargetFiltersProperty
  set newValue LambdaHook {..}
    = LambdaHook {targetFilters = Prelude.pure newValue, ..}
instance Property "TargetOperations" LambdaHook where
  type PropertyType "TargetOperations" LambdaHook = ValueList Prelude.Text
  set newValue LambdaHook {..}
    = LambdaHook {targetOperations = newValue, ..}