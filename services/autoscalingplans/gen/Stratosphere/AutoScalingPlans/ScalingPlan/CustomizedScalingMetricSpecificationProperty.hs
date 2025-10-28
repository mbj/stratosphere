module Stratosphere.AutoScalingPlans.ScalingPlan.CustomizedScalingMetricSpecificationProperty (
        module Exports, CustomizedScalingMetricSpecificationProperty(..),
        mkCustomizedScalingMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.MetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomizedScalingMetricSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html>
    CustomizedScalingMetricSpecificationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-dimensions>
                                                  dimensions :: (Prelude.Maybe [MetricDimensionProperty]),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-metricname>
                                                  metricName :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-namespace>
                                                  namespace :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-statistic>
                                                  statistic :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-unit>
                                                  unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomizedScalingMetricSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> CustomizedScalingMetricSpecificationProperty
mkCustomizedScalingMetricSpecificationProperty
  metricName
  namespace
  statistic
  = CustomizedScalingMetricSpecificationProperty
      {haddock_workaround_ = (), metricName = metricName,
       namespace = namespace, statistic = statistic,
       dimensions = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties CustomizedScalingMetricSpecificationProperty where
  toResourceProperties
    CustomizedScalingMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.CustomizedScalingMetricSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace,
                            "Statistic" JSON..= statistic]
                           (Prelude.catMaybes
                              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON CustomizedScalingMetricSpecificationProperty where
  toJSON CustomizedScalingMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace,
               "Statistic" JSON..= statistic]
              (Prelude.catMaybes
                 [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Dimensions" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "Dimensions" CustomizedScalingMetricSpecificationProperty = [MetricDimensionProperty]
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "MetricName" CustomizedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {metricName = newValue, ..}
instance Property "Namespace" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "Namespace" CustomizedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {namespace = newValue, ..}
instance Property "Statistic" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "Statistic" CustomizedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {statistic = newValue, ..}
instance Property "Unit" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "Unit" CustomizedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {unit = Prelude.pure newValue, ..}