module Stratosphere.CloudFormation.GuardHook (
        module Exports, GuardHook(..), mkGuardHook
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.GuardHook.OptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.GuardHook.S3LocationProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.GuardHook.StackFiltersProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.GuardHook.TargetFiltersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardHook
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html>
    GuardHook {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-alias>
               alias :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-executionrole>
               executionRole :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-failuremode>
               failureMode :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-hookstatus>
               hookStatus :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-logbucket>
               logBucket :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-options>
               options :: (Prelude.Maybe OptionsProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-rulelocation>
               ruleLocation :: S3LocationProperty,
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-stackfilters>
               stackFilters :: (Prelude.Maybe StackFiltersProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-targetfilters>
               targetFilters :: (Prelude.Maybe TargetFiltersProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-guardhook.html#cfn-cloudformation-guardhook-targetoperations>
               targetOperations :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardHook ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> S3LocationProperty -> ValueList Prelude.Text -> GuardHook
mkGuardHook
  alias
  executionRole
  failureMode
  hookStatus
  ruleLocation
  targetOperations
  = GuardHook
      {haddock_workaround_ = (), alias = alias,
       executionRole = executionRole, failureMode = failureMode,
       hookStatus = hookStatus, ruleLocation = ruleLocation,
       targetOperations = targetOperations, logBucket = Prelude.Nothing,
       options = Prelude.Nothing, stackFilters = Prelude.Nothing,
       targetFilters = Prelude.Nothing}
instance ToResourceProperties GuardHook where
  toResourceProperties GuardHook {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::GuardHook",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Alias" JSON..= alias, "ExecutionRole" JSON..= executionRole,
                            "FailureMode" JSON..= failureMode, "HookStatus" JSON..= hookStatus,
                            "RuleLocation" JSON..= ruleLocation,
                            "TargetOperations" JSON..= targetOperations]
                           (Prelude.catMaybes
                              [(JSON..=) "LogBucket" Prelude.<$> logBucket,
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "StackFilters" Prelude.<$> stackFilters,
                               (JSON..=) "TargetFilters" Prelude.<$> targetFilters]))}
instance JSON.ToJSON GuardHook where
  toJSON GuardHook {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Alias" JSON..= alias, "ExecutionRole" JSON..= executionRole,
               "FailureMode" JSON..= failureMode, "HookStatus" JSON..= hookStatus,
               "RuleLocation" JSON..= ruleLocation,
               "TargetOperations" JSON..= targetOperations]
              (Prelude.catMaybes
                 [(JSON..=) "LogBucket" Prelude.<$> logBucket,
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "StackFilters" Prelude.<$> stackFilters,
                  (JSON..=) "TargetFilters" Prelude.<$> targetFilters])))
instance Property "Alias" GuardHook where
  type PropertyType "Alias" GuardHook = Value Prelude.Text
  set newValue GuardHook {..} = GuardHook {alias = newValue, ..}
instance Property "ExecutionRole" GuardHook where
  type PropertyType "ExecutionRole" GuardHook = Value Prelude.Text
  set newValue GuardHook {..}
    = GuardHook {executionRole = newValue, ..}
instance Property "FailureMode" GuardHook where
  type PropertyType "FailureMode" GuardHook = Value Prelude.Text
  set newValue GuardHook {..}
    = GuardHook {failureMode = newValue, ..}
instance Property "HookStatus" GuardHook where
  type PropertyType "HookStatus" GuardHook = Value Prelude.Text
  set newValue GuardHook {..} = GuardHook {hookStatus = newValue, ..}
instance Property "LogBucket" GuardHook where
  type PropertyType "LogBucket" GuardHook = Value Prelude.Text
  set newValue GuardHook {..}
    = GuardHook {logBucket = Prelude.pure newValue, ..}
instance Property "Options" GuardHook where
  type PropertyType "Options" GuardHook = OptionsProperty
  set newValue GuardHook {..}
    = GuardHook {options = Prelude.pure newValue, ..}
instance Property "RuleLocation" GuardHook where
  type PropertyType "RuleLocation" GuardHook = S3LocationProperty
  set newValue GuardHook {..}
    = GuardHook {ruleLocation = newValue, ..}
instance Property "StackFilters" GuardHook where
  type PropertyType "StackFilters" GuardHook = StackFiltersProperty
  set newValue GuardHook {..}
    = GuardHook {stackFilters = Prelude.pure newValue, ..}
instance Property "TargetFilters" GuardHook where
  type PropertyType "TargetFilters" GuardHook = TargetFiltersProperty
  set newValue GuardHook {..}
    = GuardHook {targetFilters = Prelude.pure newValue, ..}
instance Property "TargetOperations" GuardHook where
  type PropertyType "TargetOperations" GuardHook = ValueList Prelude.Text
  set newValue GuardHook {..}
    = GuardHook {targetOperations = newValue, ..}