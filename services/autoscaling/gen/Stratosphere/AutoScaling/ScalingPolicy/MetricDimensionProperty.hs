module Stratosphere.AutoScaling.ScalingPolicy.MetricDimensionProperty (
        MetricDimensionProperty(..), mkMetricDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html>
    MetricDimensionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html#cfn-autoscaling-scalingpolicy-metricdimension-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html#cfn-autoscaling-scalingpolicy-metricdimension-value>
                             value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDimensionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetricDimensionProperty
mkMetricDimensionProperty name value
  = MetricDimensionProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties MetricDimensionProperty where
  toResourceProperties MetricDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.MetricDimension",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON MetricDimensionProperty where
  toJSON MetricDimensionProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" MetricDimensionProperty where
  type PropertyType "Name" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {name = newValue, ..}
instance Property "Value" MetricDimensionProperty where
  type PropertyType "Value" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {value = newValue, ..}