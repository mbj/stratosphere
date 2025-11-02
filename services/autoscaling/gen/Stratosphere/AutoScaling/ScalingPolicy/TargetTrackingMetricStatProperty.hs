module Stratosphere.AutoScaling.ScalingPolicy.TargetTrackingMetricStatProperty (
        module Exports, TargetTrackingMetricStatProperty(..),
        mkTargetTrackingMetricStatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingMetricStatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricstat.html>
    TargetTrackingMetricStatProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricstat.html#cfn-autoscaling-scalingpolicy-targettrackingmetricstat-metric>
                                      metric :: MetricProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricstat.html#cfn-autoscaling-scalingpolicy-targettrackingmetricstat-period>
                                      period :: (Prelude.Maybe (Value Prelude.Integer)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricstat.html#cfn-autoscaling-scalingpolicy-targettrackingmetricstat-stat>
                                      stat :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricstat.html#cfn-autoscaling-scalingpolicy-targettrackingmetricstat-unit>
                                      unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingMetricStatProperty ::
  MetricProperty
  -> Value Prelude.Text -> TargetTrackingMetricStatProperty
mkTargetTrackingMetricStatProperty metric stat
  = TargetTrackingMetricStatProperty
      {haddock_workaround_ = (), metric = metric, stat = stat,
       period = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties TargetTrackingMetricStatProperty where
  toResourceProperties TargetTrackingMetricStatProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.TargetTrackingMetricStat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Metric" JSON..= metric, "Stat" JSON..= stat]
                           (Prelude.catMaybes
                              [(JSON..=) "Period" Prelude.<$> period,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON TargetTrackingMetricStatProperty where
  toJSON TargetTrackingMetricStatProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Metric" JSON..= metric, "Stat" JSON..= stat]
              (Prelude.catMaybes
                 [(JSON..=) "Period" Prelude.<$> period,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Metric" TargetTrackingMetricStatProperty where
  type PropertyType "Metric" TargetTrackingMetricStatProperty = MetricProperty
  set newValue TargetTrackingMetricStatProperty {..}
    = TargetTrackingMetricStatProperty {metric = newValue, ..}
instance Property "Period" TargetTrackingMetricStatProperty where
  type PropertyType "Period" TargetTrackingMetricStatProperty = Value Prelude.Integer
  set newValue TargetTrackingMetricStatProperty {..}
    = TargetTrackingMetricStatProperty
        {period = Prelude.pure newValue, ..}
instance Property "Stat" TargetTrackingMetricStatProperty where
  type PropertyType "Stat" TargetTrackingMetricStatProperty = Value Prelude.Text
  set newValue TargetTrackingMetricStatProperty {..}
    = TargetTrackingMetricStatProperty {stat = newValue, ..}
instance Property "Unit" TargetTrackingMetricStatProperty where
  type PropertyType "Unit" TargetTrackingMetricStatProperty = Value Prelude.Text
  set newValue TargetTrackingMetricStatProperty {..}
    = TargetTrackingMetricStatProperty
        {unit = Prelude.pure newValue, ..}