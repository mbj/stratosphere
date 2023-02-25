module Stratosphere.ResilienceHub.ResiliencyPolicy.FailurePolicyProperty (
        FailurePolicyProperty(..), mkFailurePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FailurePolicyProperty
  = FailurePolicyProperty {rpoInSecs :: (Value Prelude.Integer),
                           rtoInSecs :: (Value Prelude.Integer)}
mkFailurePolicyProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> FailurePolicyProperty
mkFailurePolicyProperty rpoInSecs rtoInSecs
  = FailurePolicyProperty
      {rpoInSecs = rpoInSecs, rtoInSecs = rtoInSecs}
instance ToResourceProperties FailurePolicyProperty where
  toResourceProperties FailurePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::ResiliencyPolicy.FailurePolicy",
         properties = ["RpoInSecs" JSON..= rpoInSecs,
                       "RtoInSecs" JSON..= rtoInSecs]}
instance JSON.ToJSON FailurePolicyProperty where
  toJSON FailurePolicyProperty {..}
    = JSON.object
        ["RpoInSecs" JSON..= rpoInSecs, "RtoInSecs" JSON..= rtoInSecs]
instance Property "RpoInSecs" FailurePolicyProperty where
  type PropertyType "RpoInSecs" FailurePolicyProperty = Value Prelude.Integer
  set newValue FailurePolicyProperty {..}
    = FailurePolicyProperty {rpoInSecs = newValue, ..}
instance Property "RtoInSecs" FailurePolicyProperty where
  type PropertyType "RtoInSecs" FailurePolicyProperty = Value Prelude.Integer
  set newValue FailurePolicyProperty {..}
    = FailurePolicyProperty {rtoInSecs = newValue, ..}