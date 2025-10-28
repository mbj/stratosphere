module Stratosphere.AutoScaling.WarmPool.InstanceReusePolicyProperty (
        InstanceReusePolicyProperty(..), mkInstanceReusePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceReusePolicyProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-warmpool-instancereusepolicy.html>
    InstanceReusePolicyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-warmpool-instancereusepolicy.html#cfn-autoscaling-warmpool-instancereusepolicy-reuseonscalein>
                                 reuseOnScaleIn :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceReusePolicyProperty :: InstanceReusePolicyProperty
mkInstanceReusePolicyProperty
  = InstanceReusePolicyProperty {reuseOnScaleIn = Prelude.Nothing}
instance ToResourceProperties InstanceReusePolicyProperty where
  toResourceProperties InstanceReusePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::WarmPool.InstanceReusePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReuseOnScaleIn" Prelude.<$> reuseOnScaleIn])}
instance JSON.ToJSON InstanceReusePolicyProperty where
  toJSON InstanceReusePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReuseOnScaleIn" Prelude.<$> reuseOnScaleIn]))
instance Property "ReuseOnScaleIn" InstanceReusePolicyProperty where
  type PropertyType "ReuseOnScaleIn" InstanceReusePolicyProperty = Value Prelude.Bool
  set newValue InstanceReusePolicyProperty {}
    = InstanceReusePolicyProperty
        {reuseOnScaleIn = Prelude.pure newValue, ..}