module Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricDimensionProperty (
        TargetTrackingMetricDimensionProperty(..),
        mkTargetTrackingMetricDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingMetricDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingmetricdimension.html>
    TargetTrackingMetricDimensionProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingmetricdimension.html#cfn-applicationautoscaling-scalingpolicy-targettrackingmetricdimension-name>
                                           name :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingmetricdimension.html#cfn-applicationautoscaling-scalingpolicy-targettrackingmetricdimension-value>
                                           value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingMetricDimensionProperty ::
  TargetTrackingMetricDimensionProperty
mkTargetTrackingMetricDimensionProperty
  = TargetTrackingMetricDimensionProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties TargetTrackingMetricDimensionProperty where
  toResourceProperties TargetTrackingMetricDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingMetricDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON TargetTrackingMetricDimensionProperty where
  toJSON TargetTrackingMetricDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" TargetTrackingMetricDimensionProperty where
  type PropertyType "Name" TargetTrackingMetricDimensionProperty = Value Prelude.Text
  set newValue TargetTrackingMetricDimensionProperty {..}
    = TargetTrackingMetricDimensionProperty
        {name = Prelude.pure newValue, ..}
instance Property "Value" TargetTrackingMetricDimensionProperty where
  type PropertyType "Value" TargetTrackingMetricDimensionProperty = Value Prelude.Text
  set newValue TargetTrackingMetricDimensionProperty {..}
    = TargetTrackingMetricDimensionProperty
        {value = Prelude.pure newValue, ..}