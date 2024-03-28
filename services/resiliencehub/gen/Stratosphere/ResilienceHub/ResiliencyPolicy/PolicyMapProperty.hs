module Stratosphere.ResilienceHub.ResiliencyPolicy.PolicyMapProperty (
        module Exports, PolicyMapProperty(..), mkPolicyMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResilienceHub.ResiliencyPolicy.FailurePolicyProperty as Exports
import Stratosphere.ResourceProperties
data PolicyMapProperty
  = PolicyMapProperty {aZ :: FailurePolicyProperty,
                       hardware :: FailurePolicyProperty,
                       region :: (Prelude.Maybe FailurePolicyProperty),
                       software :: FailurePolicyProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyMapProperty ::
  FailurePolicyProperty
  -> FailurePolicyProperty
     -> FailurePolicyProperty -> PolicyMapProperty
mkPolicyMapProperty aZ hardware software
  = PolicyMapProperty
      {aZ = aZ, hardware = hardware, software = software,
       region = Prelude.Nothing}
instance ToResourceProperties PolicyMapProperty where
  toResourceProperties PolicyMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::ResiliencyPolicy.PolicyMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AZ" JSON..= aZ, "Hardware" JSON..= hardware,
                            "Software" JSON..= software]
                           (Prelude.catMaybes [(JSON..=) "Region" Prelude.<$> region]))}
instance JSON.ToJSON PolicyMapProperty where
  toJSON PolicyMapProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AZ" JSON..= aZ, "Hardware" JSON..= hardware,
               "Software" JSON..= software]
              (Prelude.catMaybes [(JSON..=) "Region" Prelude.<$> region])))
instance Property "AZ" PolicyMapProperty where
  type PropertyType "AZ" PolicyMapProperty = FailurePolicyProperty
  set newValue PolicyMapProperty {..}
    = PolicyMapProperty {aZ = newValue, ..}
instance Property "Hardware" PolicyMapProperty where
  type PropertyType "Hardware" PolicyMapProperty = FailurePolicyProperty
  set newValue PolicyMapProperty {..}
    = PolicyMapProperty {hardware = newValue, ..}
instance Property "Region" PolicyMapProperty where
  type PropertyType "Region" PolicyMapProperty = FailurePolicyProperty
  set newValue PolicyMapProperty {..}
    = PolicyMapProperty {region = Prelude.pure newValue, ..}
instance Property "Software" PolicyMapProperty where
  type PropertyType "Software" PolicyMapProperty = FailurePolicyProperty
  set newValue PolicyMapProperty {..}
    = PolicyMapProperty {software = newValue, ..}