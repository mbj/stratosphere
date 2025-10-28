module Stratosphere.AutoScaling.ScalingPolicy.MetricDataQueryProperty (
        module Exports, MetricDataQueryProperty(..),
        mkMetricDataQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricStatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDataQueryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdataquery.html>
    MetricDataQueryProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdataquery.html#cfn-autoscaling-scalingpolicy-metricdataquery-expression>
                             expression :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdataquery.html#cfn-autoscaling-scalingpolicy-metricdataquery-id>
                             id :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdataquery.html#cfn-autoscaling-scalingpolicy-metricdataquery-label>
                             label :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdataquery.html#cfn-autoscaling-scalingpolicy-metricdataquery-metricstat>
                             metricStat :: (Prelude.Maybe MetricStatProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdataquery.html#cfn-autoscaling-scalingpolicy-metricdataquery-returndata>
                             returnData :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDataQueryProperty ::
  Value Prelude.Text -> MetricDataQueryProperty
mkMetricDataQueryProperty id
  = MetricDataQueryProperty
      {haddock_workaround_ = (), id = id, expression = Prelude.Nothing,
       label = Prelude.Nothing, metricStat = Prelude.Nothing,
       returnData = Prelude.Nothing}
instance ToResourceProperties MetricDataQueryProperty where
  toResourceProperties MetricDataQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.MetricDataQuery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "Expression" Prelude.<$> expression,
                               (JSON..=) "Label" Prelude.<$> label,
                               (JSON..=) "MetricStat" Prelude.<$> metricStat,
                               (JSON..=) "ReturnData" Prelude.<$> returnData]))}
instance JSON.ToJSON MetricDataQueryProperty where
  toJSON MetricDataQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "Expression" Prelude.<$> expression,
                  (JSON..=) "Label" Prelude.<$> label,
                  (JSON..=) "MetricStat" Prelude.<$> metricStat,
                  (JSON..=) "ReturnData" Prelude.<$> returnData])))
instance Property "Expression" MetricDataQueryProperty where
  type PropertyType "Expression" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {expression = Prelude.pure newValue, ..}
instance Property "Id" MetricDataQueryProperty where
  type PropertyType "Id" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {id = newValue, ..}
instance Property "Label" MetricDataQueryProperty where
  type PropertyType "Label" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {label = Prelude.pure newValue, ..}
instance Property "MetricStat" MetricDataQueryProperty where
  type PropertyType "MetricStat" MetricDataQueryProperty = MetricStatProperty
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {metricStat = Prelude.pure newValue, ..}
instance Property "ReturnData" MetricDataQueryProperty where
  type PropertyType "ReturnData" MetricDataQueryProperty = Value Prelude.Bool
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {returnData = Prelude.pure newValue, ..}