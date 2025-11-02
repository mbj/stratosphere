module Stratosphere.DLM.LifecyclePolicy.PolicyDetailsProperty (
        module Exports, PolicyDetailsProperty(..), mkPolicyDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyTargetsProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.EventSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ExclusionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ScheduleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PolicyDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html>
    PolicyDetailsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-actions>
                           actions :: (Prelude.Maybe [ActionProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-copytags>
                           copyTags :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-createinterval>
                           createInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-crossregioncopytargets>
                           crossRegionCopyTargets :: (Prelude.Maybe CrossRegionCopyTargetsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-eventsource>
                           eventSource :: (Prelude.Maybe EventSourceProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-exclusions>
                           exclusions :: (Prelude.Maybe ExclusionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-extenddeletion>
                           extendDeletion :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-parameters>
                           parameters :: (Prelude.Maybe ParametersProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-policylanguage>
                           policyLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-policytype>
                           policyType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-resourcelocations>
                           resourceLocations :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-resourcetype>
                           resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-resourcetypes>
                           resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-retaininterval>
                           retainInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-schedules>
                           schedules :: (Prelude.Maybe [ScheduleProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-targettags>
                           targetTags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDetailsProperty :: PolicyDetailsProperty
mkPolicyDetailsProperty
  = PolicyDetailsProperty
      {haddock_workaround_ = (), actions = Prelude.Nothing,
       copyTags = Prelude.Nothing, createInterval = Prelude.Nothing,
       crossRegionCopyTargets = Prelude.Nothing,
       eventSource = Prelude.Nothing, exclusions = Prelude.Nothing,
       extendDeletion = Prelude.Nothing, parameters = Prelude.Nothing,
       policyLanguage = Prelude.Nothing, policyType = Prelude.Nothing,
       resourceLocations = Prelude.Nothing,
       resourceType = Prelude.Nothing, resourceTypes = Prelude.Nothing,
       retainInterval = Prelude.Nothing, schedules = Prelude.Nothing,
       targetTags = Prelude.Nothing}
instance ToResourceProperties PolicyDetailsProperty where
  toResourceProperties PolicyDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.PolicyDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Actions" Prelude.<$> actions,
                            (JSON..=) "CopyTags" Prelude.<$> copyTags,
                            (JSON..=) "CreateInterval" Prelude.<$> createInterval,
                            (JSON..=) "CrossRegionCopyTargets"
                              Prelude.<$> crossRegionCopyTargets,
                            (JSON..=) "EventSource" Prelude.<$> eventSource,
                            (JSON..=) "Exclusions" Prelude.<$> exclusions,
                            (JSON..=) "ExtendDeletion" Prelude.<$> extendDeletion,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "PolicyLanguage" Prelude.<$> policyLanguage,
                            (JSON..=) "PolicyType" Prelude.<$> policyType,
                            (JSON..=) "ResourceLocations" Prelude.<$> resourceLocations,
                            (JSON..=) "ResourceType" Prelude.<$> resourceType,
                            (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes,
                            (JSON..=) "RetainInterval" Prelude.<$> retainInterval,
                            (JSON..=) "Schedules" Prelude.<$> schedules,
                            (JSON..=) "TargetTags" Prelude.<$> targetTags])}
instance JSON.ToJSON PolicyDetailsProperty where
  toJSON PolicyDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Actions" Prelude.<$> actions,
               (JSON..=) "CopyTags" Prelude.<$> copyTags,
               (JSON..=) "CreateInterval" Prelude.<$> createInterval,
               (JSON..=) "CrossRegionCopyTargets"
                 Prelude.<$> crossRegionCopyTargets,
               (JSON..=) "EventSource" Prelude.<$> eventSource,
               (JSON..=) "Exclusions" Prelude.<$> exclusions,
               (JSON..=) "ExtendDeletion" Prelude.<$> extendDeletion,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "PolicyLanguage" Prelude.<$> policyLanguage,
               (JSON..=) "PolicyType" Prelude.<$> policyType,
               (JSON..=) "ResourceLocations" Prelude.<$> resourceLocations,
               (JSON..=) "ResourceType" Prelude.<$> resourceType,
               (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes,
               (JSON..=) "RetainInterval" Prelude.<$> retainInterval,
               (JSON..=) "Schedules" Prelude.<$> schedules,
               (JSON..=) "TargetTags" Prelude.<$> targetTags]))
instance Property "Actions" PolicyDetailsProperty where
  type PropertyType "Actions" PolicyDetailsProperty = [ActionProperty]
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {actions = Prelude.pure newValue, ..}
instance Property "CopyTags" PolicyDetailsProperty where
  type PropertyType "CopyTags" PolicyDetailsProperty = Value Prelude.Bool
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {copyTags = Prelude.pure newValue, ..}
instance Property "CreateInterval" PolicyDetailsProperty where
  type PropertyType "CreateInterval" PolicyDetailsProperty = Value Prelude.Integer
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty
        {createInterval = Prelude.pure newValue, ..}
instance Property "CrossRegionCopyTargets" PolicyDetailsProperty where
  type PropertyType "CrossRegionCopyTargets" PolicyDetailsProperty = CrossRegionCopyTargetsProperty
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty
        {crossRegionCopyTargets = Prelude.pure newValue, ..}
instance Property "EventSource" PolicyDetailsProperty where
  type PropertyType "EventSource" PolicyDetailsProperty = EventSourceProperty
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {eventSource = Prelude.pure newValue, ..}
instance Property "Exclusions" PolicyDetailsProperty where
  type PropertyType "Exclusions" PolicyDetailsProperty = ExclusionsProperty
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {exclusions = Prelude.pure newValue, ..}
instance Property "ExtendDeletion" PolicyDetailsProperty where
  type PropertyType "ExtendDeletion" PolicyDetailsProperty = Value Prelude.Bool
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty
        {extendDeletion = Prelude.pure newValue, ..}
instance Property "Parameters" PolicyDetailsProperty where
  type PropertyType "Parameters" PolicyDetailsProperty = ParametersProperty
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {parameters = Prelude.pure newValue, ..}
instance Property "PolicyLanguage" PolicyDetailsProperty where
  type PropertyType "PolicyLanguage" PolicyDetailsProperty = Value Prelude.Text
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty
        {policyLanguage = Prelude.pure newValue, ..}
instance Property "PolicyType" PolicyDetailsProperty where
  type PropertyType "PolicyType" PolicyDetailsProperty = Value Prelude.Text
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {policyType = Prelude.pure newValue, ..}
instance Property "ResourceLocations" PolicyDetailsProperty where
  type PropertyType "ResourceLocations" PolicyDetailsProperty = ValueList Prelude.Text
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty
        {resourceLocations = Prelude.pure newValue, ..}
instance Property "ResourceType" PolicyDetailsProperty where
  type PropertyType "ResourceType" PolicyDetailsProperty = Value Prelude.Text
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {resourceType = Prelude.pure newValue, ..}
instance Property "ResourceTypes" PolicyDetailsProperty where
  type PropertyType "ResourceTypes" PolicyDetailsProperty = ValueList Prelude.Text
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {resourceTypes = Prelude.pure newValue, ..}
instance Property "RetainInterval" PolicyDetailsProperty where
  type PropertyType "RetainInterval" PolicyDetailsProperty = Value Prelude.Integer
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty
        {retainInterval = Prelude.pure newValue, ..}
instance Property "Schedules" PolicyDetailsProperty where
  type PropertyType "Schedules" PolicyDetailsProperty = [ScheduleProperty]
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {schedules = Prelude.pure newValue, ..}
instance Property "TargetTags" PolicyDetailsProperty where
  type PropertyType "TargetTags" PolicyDetailsProperty = [Tag]
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {targetTags = Prelude.pure newValue, ..}