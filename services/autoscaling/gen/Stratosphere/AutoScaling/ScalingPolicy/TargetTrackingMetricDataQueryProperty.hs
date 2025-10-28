module Stratosphere.AutoScaling.ScalingPolicy.TargetTrackingMetricDataQueryProperty (
        module Exports, TargetTrackingMetricDataQueryProperty(..),
        mkTargetTrackingMetricDataQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.TargetTrackingMetricStatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingMetricDataQueryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricdataquery.html>
    TargetTrackingMetricDataQueryProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricdataquery.html#cfn-autoscaling-scalingpolicy-targettrackingmetricdataquery-expression>
                                           expression :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricdataquery.html#cfn-autoscaling-scalingpolicy-targettrackingmetricdataquery-id>
                                           id :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricdataquery.html#cfn-autoscaling-scalingpolicy-targettrackingmetricdataquery-label>
                                           label :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricdataquery.html#cfn-autoscaling-scalingpolicy-targettrackingmetricdataquery-metricstat>
                                           metricStat :: (Prelude.Maybe TargetTrackingMetricStatProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricdataquery.html#cfn-autoscaling-scalingpolicy-targettrackingmetricdataquery-period>
                                           period :: (Prelude.Maybe (Value Prelude.Integer)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingmetricdataquery.html#cfn-autoscaling-scalingpolicy-targettrackingmetricdataquery-returndata>
                                           returnData :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingMetricDataQueryProperty ::
  Value Prelude.Text -> TargetTrackingMetricDataQueryProperty
mkTargetTrackingMetricDataQueryProperty id
  = TargetTrackingMetricDataQueryProperty
      {haddock_workaround_ = (), id = id, expression = Prelude.Nothing,
       label = Prelude.Nothing, metricStat = Prelude.Nothing,
       period = Prelude.Nothing, returnData = Prelude.Nothing}
instance ToResourceProperties TargetTrackingMetricDataQueryProperty where
  toResourceProperties TargetTrackingMetricDataQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.TargetTrackingMetricDataQuery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "Expression" Prelude.<$> expression,
                               (JSON..=) "Label" Prelude.<$> label,
                               (JSON..=) "MetricStat" Prelude.<$> metricStat,
                               (JSON..=) "Period" Prelude.<$> period,
                               (JSON..=) "ReturnData" Prelude.<$> returnData]))}
instance JSON.ToJSON TargetTrackingMetricDataQueryProperty where
  toJSON TargetTrackingMetricDataQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "Expression" Prelude.<$> expression,
                  (JSON..=) "Label" Prelude.<$> label,
                  (JSON..=) "MetricStat" Prelude.<$> metricStat,
                  (JSON..=) "Period" Prelude.<$> period,
                  (JSON..=) "ReturnData" Prelude.<$> returnData])))
instance Property "Expression" TargetTrackingMetricDataQueryProperty where
  type PropertyType "Expression" TargetTrackingMetricDataQueryProperty = Value Prelude.Text
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {expression = Prelude.pure newValue, ..}
instance Property "Id" TargetTrackingMetricDataQueryProperty where
  type PropertyType "Id" TargetTrackingMetricDataQueryProperty = Value Prelude.Text
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty {id = newValue, ..}
instance Property "Label" TargetTrackingMetricDataQueryProperty where
  type PropertyType "Label" TargetTrackingMetricDataQueryProperty = Value Prelude.Text
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {label = Prelude.pure newValue, ..}
instance Property "MetricStat" TargetTrackingMetricDataQueryProperty where
  type PropertyType "MetricStat" TargetTrackingMetricDataQueryProperty = TargetTrackingMetricStatProperty
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {metricStat = Prelude.pure newValue, ..}
instance Property "Period" TargetTrackingMetricDataQueryProperty where
  type PropertyType "Period" TargetTrackingMetricDataQueryProperty = Value Prelude.Integer
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {period = Prelude.pure newValue, ..}
instance Property "ReturnData" TargetTrackingMetricDataQueryProperty where
  type PropertyType "ReturnData" TargetTrackingMetricDataQueryProperty = Value Prelude.Bool
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {returnData = Prelude.pure newValue, ..}