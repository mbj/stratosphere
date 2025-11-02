module Stratosphere.AutoScaling.AutoScalingGroup.MetricsCollectionProperty (
        MetricsCollectionProperty(..), mkMetricsCollectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricsCollectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-metricscollection.html>
    MetricsCollectionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-metricscollection.html#cfn-autoscaling-autoscalinggroup-metricscollection-granularity>
                               granularity :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-metricscollection.html#cfn-autoscaling-autoscalinggroup-metricscollection-metrics>
                               metrics :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricsCollectionProperty ::
  Value Prelude.Text -> MetricsCollectionProperty
mkMetricsCollectionProperty granularity
  = MetricsCollectionProperty
      {haddock_workaround_ = (), granularity = granularity,
       metrics = Prelude.Nothing}
instance ToResourceProperties MetricsCollectionProperty where
  toResourceProperties MetricsCollectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.MetricsCollection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Granularity" JSON..= granularity]
                           (Prelude.catMaybes [(JSON..=) "Metrics" Prelude.<$> metrics]))}
instance JSON.ToJSON MetricsCollectionProperty where
  toJSON MetricsCollectionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Granularity" JSON..= granularity]
              (Prelude.catMaybes [(JSON..=) "Metrics" Prelude.<$> metrics])))
instance Property "Granularity" MetricsCollectionProperty where
  type PropertyType "Granularity" MetricsCollectionProperty = Value Prelude.Text
  set newValue MetricsCollectionProperty {..}
    = MetricsCollectionProperty {granularity = newValue, ..}
instance Property "Metrics" MetricsCollectionProperty where
  type PropertyType "Metrics" MetricsCollectionProperty = ValueList Prelude.Text
  set newValue MetricsCollectionProperty {..}
    = MetricsCollectionProperty {metrics = Prelude.pure newValue, ..}