module Stratosphere.DLM.LifecyclePolicy (
        module Exports, LifecyclePolicy(..), mkLifecyclePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.PolicyDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LifecyclePolicy
  = LifecyclePolicy {description :: (Prelude.Maybe (Value Prelude.Text)),
                     executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                     policyDetails :: (Prelude.Maybe PolicyDetailsProperty),
                     state :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecyclePolicy :: LifecyclePolicy
mkLifecyclePolicy
  = LifecyclePolicy
      {description = Prelude.Nothing, executionRoleArn = Prelude.Nothing,
       policyDetails = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LifecyclePolicy where
  toResourceProperties LifecyclePolicy {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "PolicyDetails" Prelude.<$> policyDetails,
                            (JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON LifecyclePolicy where
  toJSON LifecyclePolicy {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "PolicyDetails" Prelude.<$> policyDetails,
               (JSON..=) "State" Prelude.<$> state,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" LifecyclePolicy where
  type PropertyType "Description" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {description = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" LifecyclePolicy where
  type PropertyType "ExecutionRoleArn" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {executionRoleArn = Prelude.pure newValue, ..}
instance Property "PolicyDetails" LifecyclePolicy where
  type PropertyType "PolicyDetails" LifecyclePolicy = PolicyDetailsProperty
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {policyDetails = Prelude.pure newValue, ..}
instance Property "State" LifecyclePolicy where
  type PropertyType "State" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {state = Prelude.pure newValue, ..}
instance Property "Tags" LifecyclePolicy where
  type PropertyType "Tags" LifecyclePolicy = [Tag]
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {tags = Prelude.pure newValue, ..}