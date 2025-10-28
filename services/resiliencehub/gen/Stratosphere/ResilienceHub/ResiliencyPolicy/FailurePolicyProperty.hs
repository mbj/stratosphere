module Stratosphere.ResilienceHub.ResiliencyPolicy.FailurePolicyProperty (
        FailurePolicyProperty(..), mkFailurePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FailurePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-resiliencypolicy-failurepolicy.html>
    FailurePolicyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-resiliencypolicy-failurepolicy.html#cfn-resiliencehub-resiliencypolicy-failurepolicy-rpoinsecs>
                           rpoInSecs :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-resiliencypolicy-failurepolicy.html#cfn-resiliencehub-resiliencypolicy-failurepolicy-rtoinsecs>
                           rtoInSecs :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailurePolicyProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> FailurePolicyProperty
mkFailurePolicyProperty rpoInSecs rtoInSecs
  = FailurePolicyProperty
      {haddock_workaround_ = (), rpoInSecs = rpoInSecs,
       rtoInSecs = rtoInSecs}
instance ToResourceProperties FailurePolicyProperty where
  toResourceProperties FailurePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::ResiliencyPolicy.FailurePolicy",
         supportsTags = Prelude.False,
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