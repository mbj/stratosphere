module Stratosphere.AutoScaling.AutoScalingGroup.AcceleratorTotalMemoryMiBRequestProperty (
        AcceleratorTotalMemoryMiBRequestProperty(..),
        mkAcceleratorTotalMemoryMiBRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorTotalMemoryMiBRequestProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-acceleratortotalmemorymibrequest.html>
    AcceleratorTotalMemoryMiBRequestProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-acceleratortotalmemorymibrequest.html#cfn-autoscaling-autoscalinggroup-acceleratortotalmemorymibrequest-max>
                                              max :: (Prelude.Maybe (Value Prelude.Integer)),
                                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-acceleratortotalmemorymibrequest.html#cfn-autoscaling-autoscalinggroup-acceleratortotalmemorymibrequest-min>
                                              min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorTotalMemoryMiBRequestProperty ::
  AcceleratorTotalMemoryMiBRequestProperty
mkAcceleratorTotalMemoryMiBRequestProperty
  = AcceleratorTotalMemoryMiBRequestProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties AcceleratorTotalMemoryMiBRequestProperty where
  toResourceProperties AcceleratorTotalMemoryMiBRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.AcceleratorTotalMemoryMiBRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON AcceleratorTotalMemoryMiBRequestProperty where
  toJSON AcceleratorTotalMemoryMiBRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" AcceleratorTotalMemoryMiBRequestProperty where
  type PropertyType "Max" AcceleratorTotalMemoryMiBRequestProperty = Value Prelude.Integer
  set newValue AcceleratorTotalMemoryMiBRequestProperty {..}
    = AcceleratorTotalMemoryMiBRequestProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorTotalMemoryMiBRequestProperty where
  type PropertyType "Min" AcceleratorTotalMemoryMiBRequestProperty = Value Prelude.Integer
  set newValue AcceleratorTotalMemoryMiBRequestProperty {..}
    = AcceleratorTotalMemoryMiBRequestProperty
        {min = Prelude.pure newValue, ..}