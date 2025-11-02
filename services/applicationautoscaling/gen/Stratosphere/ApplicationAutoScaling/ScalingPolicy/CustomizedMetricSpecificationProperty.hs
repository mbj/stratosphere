module Stratosphere.ApplicationAutoScaling.ScalingPolicy.CustomizedMetricSpecificationProperty (
        module Exports, CustomizedMetricSpecificationProperty(..),
        mkCustomizedMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.MetricDimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomizedMetricSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html>
    CustomizedMetricSpecificationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-dimensions>
                                           dimensions :: (Prelude.Maybe [MetricDimensionProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-metricname>
                                           metricName :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-metrics>
                                           metrics :: (Prelude.Maybe [TargetTrackingMetricDataQueryProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-namespace>
                                           namespace :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-statistic>
                                           statistic :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-unit>
                                           unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomizedMetricSpecificationProperty ::
  CustomizedMetricSpecificationProperty
mkCustomizedMetricSpecificationProperty
  = CustomizedMetricSpecificationProperty
      {haddock_workaround_ = (), dimensions = Prelude.Nothing,
       metricName = Prelude.Nothing, metrics = Prelude.Nothing,
       namespace = Prelude.Nothing, statistic = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties CustomizedMetricSpecificationProperty where
  toResourceProperties CustomizedMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.CustomizedMetricSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "Metrics" Prelude.<$> metrics,
                            (JSON..=) "Namespace" Prelude.<$> namespace,
                            (JSON..=) "Statistic" Prelude.<$> statistic,
                            (JSON..=) "Unit" Prelude.<$> unit])}
instance JSON.ToJSON CustomizedMetricSpecificationProperty where
  toJSON CustomizedMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "Metrics" Prelude.<$> metrics,
               (JSON..=) "Namespace" Prelude.<$> namespace,
               (JSON..=) "Statistic" Prelude.<$> statistic,
               (JSON..=) "Unit" Prelude.<$> unit]))
instance Property "Dimensions" CustomizedMetricSpecificationProperty where
  type PropertyType "Dimensions" CustomizedMetricSpecificationProperty = [MetricDimensionProperty]
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" CustomizedMetricSpecificationProperty where
  type PropertyType "MetricName" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {metricName = Prelude.pure newValue, ..}
instance Property "Metrics" CustomizedMetricSpecificationProperty where
  type PropertyType "Metrics" CustomizedMetricSpecificationProperty = [TargetTrackingMetricDataQueryProperty]
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {metrics = Prelude.pure newValue, ..}
instance Property "Namespace" CustomizedMetricSpecificationProperty where
  type PropertyType "Namespace" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {namespace = Prelude.pure newValue, ..}
instance Property "Statistic" CustomizedMetricSpecificationProperty where
  type PropertyType "Statistic" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {statistic = Prelude.pure newValue, ..}
instance Property "Unit" CustomizedMetricSpecificationProperty where
  type PropertyType "Unit" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {unit = Prelude.pure newValue, ..}