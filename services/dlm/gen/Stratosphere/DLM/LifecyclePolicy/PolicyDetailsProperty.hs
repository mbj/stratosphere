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
  = PolicyDetailsProperty {actions :: (Prelude.Maybe [ActionProperty]),
                           copyTags :: (Prelude.Maybe (Value Prelude.Bool)),
                           createInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                           crossRegionCopyTargets :: (Prelude.Maybe CrossRegionCopyTargetsProperty),
                           eventSource :: (Prelude.Maybe EventSourceProperty),
                           exclusions :: (Prelude.Maybe ExclusionsProperty),
                           extendDeletion :: (Prelude.Maybe (Value Prelude.Bool)),
                           parameters :: (Prelude.Maybe ParametersProperty),
                           policyLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                           policyType :: (Prelude.Maybe (Value Prelude.Text)),
                           resourceLocations :: (Prelude.Maybe (ValueList Prelude.Text)),
                           resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                           resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                           retainInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                           schedules :: (Prelude.Maybe [ScheduleProperty]),
                           targetTags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDetailsProperty :: PolicyDetailsProperty
mkPolicyDetailsProperty
  = PolicyDetailsProperty
      {actions = Prelude.Nothing, copyTags = Prelude.Nothing,
       createInterval = Prelude.Nothing,
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