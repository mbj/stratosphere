module Stratosphere.AutoScaling.AutoScalingGroup.VCpuCountRequestProperty (
        VCpuCountRequestProperty(..), mkVCpuCountRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VCpuCountRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-vcpucountrequest.html>
    VCpuCountRequestProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-vcpucountrequest.html#cfn-autoscaling-autoscalinggroup-vcpucountrequest-max>
                              max :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-vcpucountrequest.html#cfn-autoscaling-autoscalinggroup-vcpucountrequest-min>
                              min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVCpuCountRequestProperty :: VCpuCountRequestProperty
mkVCpuCountRequestProperty
  = VCpuCountRequestProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties VCpuCountRequestProperty where
  toResourceProperties VCpuCountRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.VCpuCountRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON VCpuCountRequestProperty where
  toJSON VCpuCountRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" VCpuCountRequestProperty where
  type PropertyType "Max" VCpuCountRequestProperty = Value Prelude.Integer
  set newValue VCpuCountRequestProperty {..}
    = VCpuCountRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" VCpuCountRequestProperty where
  type PropertyType "Min" VCpuCountRequestProperty = Value Prelude.Integer
  set newValue VCpuCountRequestProperty {..}
    = VCpuCountRequestProperty {min = Prelude.pure newValue, ..}