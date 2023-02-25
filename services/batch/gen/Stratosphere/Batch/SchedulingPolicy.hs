module Stratosphere.Batch.SchedulingPolicy (
        module Exports, SchedulingPolicy(..), mkSchedulingPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.SchedulingPolicy.FairsharePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchedulingPolicy
  = SchedulingPolicy {fairsharePolicy :: (Prelude.Maybe FairsharePolicyProperty),
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkSchedulingPolicy :: SchedulingPolicy
mkSchedulingPolicy
  = SchedulingPolicy
      {fairsharePolicy = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SchedulingPolicy where
  toResourceProperties SchedulingPolicy {..}
    = ResourceProperties
        {awsType = "AWS::Batch::SchedulingPolicy",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FairsharePolicy" Prelude.<$> fairsharePolicy,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON SchedulingPolicy where
  toJSON SchedulingPolicy {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FairsharePolicy" Prelude.<$> fairsharePolicy,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "FairsharePolicy" SchedulingPolicy where
  type PropertyType "FairsharePolicy" SchedulingPolicy = FairsharePolicyProperty
  set newValue SchedulingPolicy {..}
    = SchedulingPolicy {fairsharePolicy = Prelude.pure newValue, ..}
instance Property "Name" SchedulingPolicy where
  type PropertyType "Name" SchedulingPolicy = Value Prelude.Text
  set newValue SchedulingPolicy {..}
    = SchedulingPolicy {name = Prelude.pure newValue, ..}
instance Property "Tags" SchedulingPolicy where
  type PropertyType "Tags" SchedulingPolicy = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SchedulingPolicy {..}
    = SchedulingPolicy {tags = Prelude.pure newValue, ..}