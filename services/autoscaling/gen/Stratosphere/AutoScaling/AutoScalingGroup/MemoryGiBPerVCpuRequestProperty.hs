module Stratosphere.AutoScaling.AutoScalingGroup.MemoryGiBPerVCpuRequestProperty (
        MemoryGiBPerVCpuRequestProperty(..),
        mkMemoryGiBPerVCpuRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemoryGiBPerVCpuRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-memorygibpervcpurequest.html>
    MemoryGiBPerVCpuRequestProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-memorygibpervcpurequest.html#cfn-autoscaling-autoscalinggroup-memorygibpervcpurequest-max>
                                     max :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-memorygibpervcpurequest.html#cfn-autoscaling-autoscalinggroup-memorygibpervcpurequest-min>
                                     min :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemoryGiBPerVCpuRequestProperty ::
  MemoryGiBPerVCpuRequestProperty
mkMemoryGiBPerVCpuRequestProperty
  = MemoryGiBPerVCpuRequestProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties MemoryGiBPerVCpuRequestProperty where
  toResourceProperties MemoryGiBPerVCpuRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.MemoryGiBPerVCpuRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON MemoryGiBPerVCpuRequestProperty where
  toJSON MemoryGiBPerVCpuRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" MemoryGiBPerVCpuRequestProperty where
  type PropertyType "Max" MemoryGiBPerVCpuRequestProperty = Value Prelude.Double
  set newValue MemoryGiBPerVCpuRequestProperty {..}
    = MemoryGiBPerVCpuRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" MemoryGiBPerVCpuRequestProperty where
  type PropertyType "Min" MemoryGiBPerVCpuRequestProperty = Value Prelude.Double
  set newValue MemoryGiBPerVCpuRequestProperty {..}
    = MemoryGiBPerVCpuRequestProperty {min = Prelude.pure newValue, ..}