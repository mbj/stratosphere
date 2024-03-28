module Stratosphere.ImageBuilder.LifecyclePolicy (
        module Exports, LifecyclePolicy(..), mkLifecyclePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.PolicyDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.ResourceSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecyclePolicy
  = LifecyclePolicy {description :: (Prelude.Maybe (Value Prelude.Text)),
                     executionRole :: (Value Prelude.Text),
                     name :: (Value Prelude.Text),
                     policyDetails :: [PolicyDetailProperty],
                     resourceSelection :: ResourceSelectionProperty,
                     resourceType :: (Value Prelude.Text),
                     status :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecyclePolicy ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [PolicyDetailProperty]
        -> ResourceSelectionProperty
           -> Value Prelude.Text -> LifecyclePolicy
mkLifecyclePolicy
  executionRole
  name
  policyDetails
  resourceSelection
  resourceType
  = LifecyclePolicy
      {executionRole = executionRole, name = name,
       policyDetails = policyDetails,
       resourceSelection = resourceSelection, resourceType = resourceType,
       description = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LifecyclePolicy where
  toResourceProperties LifecyclePolicy {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionRole" JSON..= executionRole, "Name" JSON..= name,
                            "PolicyDetails" JSON..= policyDetails,
                            "ResourceSelection" JSON..= resourceSelection,
                            "ResourceType" JSON..= resourceType]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LifecyclePolicy where
  toJSON LifecyclePolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionRole" JSON..= executionRole, "Name" JSON..= name,
               "PolicyDetails" JSON..= policyDetails,
               "ResourceSelection" JSON..= resourceSelection,
               "ResourceType" JSON..= resourceType]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" LifecyclePolicy where
  type PropertyType "Description" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {description = Prelude.pure newValue, ..}
instance Property "ExecutionRole" LifecyclePolicy where
  type PropertyType "ExecutionRole" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {executionRole = newValue, ..}
instance Property "Name" LifecyclePolicy where
  type PropertyType "Name" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {name = newValue, ..}
instance Property "PolicyDetails" LifecyclePolicy where
  type PropertyType "PolicyDetails" LifecyclePolicy = [PolicyDetailProperty]
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {policyDetails = newValue, ..}
instance Property "ResourceSelection" LifecyclePolicy where
  type PropertyType "ResourceSelection" LifecyclePolicy = ResourceSelectionProperty
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {resourceSelection = newValue, ..}
instance Property "ResourceType" LifecyclePolicy where
  type PropertyType "ResourceType" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {resourceType = newValue, ..}
instance Property "Status" LifecyclePolicy where
  type PropertyType "Status" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {status = Prelude.pure newValue, ..}
instance Property "Tags" LifecyclePolicy where
  type PropertyType "Tags" LifecyclePolicy = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {tags = Prelude.pure newValue, ..}