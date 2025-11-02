module Stratosphere.DLM.LifecyclePolicy (
        module Exports, LifecyclePolicy(..), mkLifecyclePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyTargetsProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ExclusionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.PolicyDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LifecyclePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html>
    LifecyclePolicy {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-copytags>
                     copyTags :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-createinterval>
                     createInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-crossregioncopytargets>
                     crossRegionCopyTargets :: (Prelude.Maybe CrossRegionCopyTargetsProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-defaultpolicy>
                     defaultPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-exclusions>
                     exclusions :: (Prelude.Maybe ExclusionsProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-executionrolearn>
                     executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-extenddeletion>
                     extendDeletion :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-policydetails>
                     policyDetails :: (Prelude.Maybe PolicyDetailsProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-retaininterval>
                     retainInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-state>
                     state :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecyclePolicy :: LifecyclePolicy
mkLifecyclePolicy
  = LifecyclePolicy
      {haddock_workaround_ = (), copyTags = Prelude.Nothing,
       createInterval = Prelude.Nothing,
       crossRegionCopyTargets = Prelude.Nothing,
       defaultPolicy = Prelude.Nothing, description = Prelude.Nothing,
       exclusions = Prelude.Nothing, executionRoleArn = Prelude.Nothing,
       extendDeletion = Prelude.Nothing, policyDetails = Prelude.Nothing,
       retainInterval = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LifecyclePolicy where
  toResourceProperties LifecyclePolicy {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CopyTags" Prelude.<$> copyTags,
                            (JSON..=) "CreateInterval" Prelude.<$> createInterval,
                            (JSON..=) "CrossRegionCopyTargets"
                              Prelude.<$> crossRegionCopyTargets,
                            (JSON..=) "DefaultPolicy" Prelude.<$> defaultPolicy,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Exclusions" Prelude.<$> exclusions,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "ExtendDeletion" Prelude.<$> extendDeletion,
                            (JSON..=) "PolicyDetails" Prelude.<$> policyDetails,
                            (JSON..=) "RetainInterval" Prelude.<$> retainInterval,
                            (JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON LifecyclePolicy where
  toJSON LifecyclePolicy {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CopyTags" Prelude.<$> copyTags,
               (JSON..=) "CreateInterval" Prelude.<$> createInterval,
               (JSON..=) "CrossRegionCopyTargets"
                 Prelude.<$> crossRegionCopyTargets,
               (JSON..=) "DefaultPolicy" Prelude.<$> defaultPolicy,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Exclusions" Prelude.<$> exclusions,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "ExtendDeletion" Prelude.<$> extendDeletion,
               (JSON..=) "PolicyDetails" Prelude.<$> policyDetails,
               (JSON..=) "RetainInterval" Prelude.<$> retainInterval,
               (JSON..=) "State" Prelude.<$> state,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CopyTags" LifecyclePolicy where
  type PropertyType "CopyTags" LifecyclePolicy = Value Prelude.Bool
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {copyTags = Prelude.pure newValue, ..}
instance Property "CreateInterval" LifecyclePolicy where
  type PropertyType "CreateInterval" LifecyclePolicy = Value Prelude.Integer
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {createInterval = Prelude.pure newValue, ..}
instance Property "CrossRegionCopyTargets" LifecyclePolicy where
  type PropertyType "CrossRegionCopyTargets" LifecyclePolicy = CrossRegionCopyTargetsProperty
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy
        {crossRegionCopyTargets = Prelude.pure newValue, ..}
instance Property "DefaultPolicy" LifecyclePolicy where
  type PropertyType "DefaultPolicy" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {defaultPolicy = Prelude.pure newValue, ..}
instance Property "Description" LifecyclePolicy where
  type PropertyType "Description" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {description = Prelude.pure newValue, ..}
instance Property "Exclusions" LifecyclePolicy where
  type PropertyType "Exclusions" LifecyclePolicy = ExclusionsProperty
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {exclusions = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" LifecyclePolicy where
  type PropertyType "ExecutionRoleArn" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {executionRoleArn = Prelude.pure newValue, ..}
instance Property "ExtendDeletion" LifecyclePolicy where
  type PropertyType "ExtendDeletion" LifecyclePolicy = Value Prelude.Bool
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {extendDeletion = Prelude.pure newValue, ..}
instance Property "PolicyDetails" LifecyclePolicy where
  type PropertyType "PolicyDetails" LifecyclePolicy = PolicyDetailsProperty
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {policyDetails = Prelude.pure newValue, ..}
instance Property "RetainInterval" LifecyclePolicy where
  type PropertyType "RetainInterval" LifecyclePolicy = Value Prelude.Integer
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {retainInterval = Prelude.pure newValue, ..}
instance Property "State" LifecyclePolicy where
  type PropertyType "State" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {state = Prelude.pure newValue, ..}
instance Property "Tags" LifecyclePolicy where
  type PropertyType "Tags" LifecyclePolicy = [Tag]
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {tags = Prelude.pure newValue, ..}