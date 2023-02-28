module Stratosphere.DLM.LifecyclePolicy.PolicyDetailsProperty (
        module Exports, PolicyDetailsProperty(..), mkPolicyDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.EventSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ScheduleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PolicyDetailsProperty
  = PolicyDetailsProperty {actions :: (Prelude.Maybe [ActionProperty]),
                           eventSource :: (Prelude.Maybe EventSourceProperty),
                           parameters :: (Prelude.Maybe ParametersProperty),
                           policyType :: (Prelude.Maybe (Value Prelude.Text)),
                           resourceLocations :: (Prelude.Maybe (ValueList Prelude.Text)),
                           resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                           schedules :: (Prelude.Maybe [ScheduleProperty]),
                           targetTags :: (Prelude.Maybe [Tag])}
mkPolicyDetailsProperty :: PolicyDetailsProperty
mkPolicyDetailsProperty
  = PolicyDetailsProperty
      {actions = Prelude.Nothing, eventSource = Prelude.Nothing,
       parameters = Prelude.Nothing, policyType = Prelude.Nothing,
       resourceLocations = Prelude.Nothing,
       resourceTypes = Prelude.Nothing, schedules = Prelude.Nothing,
       targetTags = Prelude.Nothing}
instance ToResourceProperties PolicyDetailsProperty where
  toResourceProperties PolicyDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.PolicyDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Actions" Prelude.<$> actions,
                            (JSON..=) "EventSource" Prelude.<$> eventSource,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "PolicyType" Prelude.<$> policyType,
                            (JSON..=) "ResourceLocations" Prelude.<$> resourceLocations,
                            (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes,
                            (JSON..=) "Schedules" Prelude.<$> schedules,
                            (JSON..=) "TargetTags" Prelude.<$> targetTags])}
instance JSON.ToJSON PolicyDetailsProperty where
  toJSON PolicyDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Actions" Prelude.<$> actions,
               (JSON..=) "EventSource" Prelude.<$> eventSource,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "PolicyType" Prelude.<$> policyType,
               (JSON..=) "ResourceLocations" Prelude.<$> resourceLocations,
               (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes,
               (JSON..=) "Schedules" Prelude.<$> schedules,
               (JSON..=) "TargetTags" Prelude.<$> targetTags]))
instance Property "Actions" PolicyDetailsProperty where
  type PropertyType "Actions" PolicyDetailsProperty = [ActionProperty]
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {actions = Prelude.pure newValue, ..}
instance Property "EventSource" PolicyDetailsProperty where
  type PropertyType "EventSource" PolicyDetailsProperty = EventSourceProperty
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {eventSource = Prelude.pure newValue, ..}
instance Property "Parameters" PolicyDetailsProperty where
  type PropertyType "Parameters" PolicyDetailsProperty = ParametersProperty
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {parameters = Prelude.pure newValue, ..}
instance Property "PolicyType" PolicyDetailsProperty where
  type PropertyType "PolicyType" PolicyDetailsProperty = Value Prelude.Text
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {policyType = Prelude.pure newValue, ..}
instance Property "ResourceLocations" PolicyDetailsProperty where
  type PropertyType "ResourceLocations" PolicyDetailsProperty = ValueList Prelude.Text
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty
        {resourceLocations = Prelude.pure newValue, ..}
instance Property "ResourceTypes" PolicyDetailsProperty where
  type PropertyType "ResourceTypes" PolicyDetailsProperty = ValueList Prelude.Text
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {resourceTypes = Prelude.pure newValue, ..}
instance Property "Schedules" PolicyDetailsProperty where
  type PropertyType "Schedules" PolicyDetailsProperty = [ScheduleProperty]
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {schedules = Prelude.pure newValue, ..}
instance Property "TargetTags" PolicyDetailsProperty where
  type PropertyType "TargetTags" PolicyDetailsProperty = [Tag]
  set newValue PolicyDetailsProperty {..}
    = PolicyDetailsProperty {targetTags = Prelude.pure newValue, ..}