module Stratosphere.IoT.SecurityProfile.MetricToRetainProperty (
        module Exports, MetricToRetainProperty(..),
        mkMetricToRetainProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.MetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricToRetainProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metrictoretain.html>
    MetricToRetainProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metrictoretain.html#cfn-iot-securityprofile-metrictoretain-exportmetric>
                            exportMetric :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metrictoretain.html#cfn-iot-securityprofile-metrictoretain-metric>
                            metric :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metrictoretain.html#cfn-iot-securityprofile-metrictoretain-metricdimension>
                            metricDimension :: (Prelude.Maybe MetricDimensionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricToRetainProperty ::
  Value Prelude.Text -> MetricToRetainProperty
mkMetricToRetainProperty metric
  = MetricToRetainProperty
      {haddock_workaround_ = (), metric = metric,
       exportMetric = Prelude.Nothing, metricDimension = Prelude.Nothing}
instance ToResourceProperties MetricToRetainProperty where
  toResourceProperties MetricToRetainProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.MetricToRetain",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Metric" JSON..= metric]
                           (Prelude.catMaybes
                              [(JSON..=) "ExportMetric" Prelude.<$> exportMetric,
                               (JSON..=) "MetricDimension" Prelude.<$> metricDimension]))}
instance JSON.ToJSON MetricToRetainProperty where
  toJSON MetricToRetainProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Metric" JSON..= metric]
              (Prelude.catMaybes
                 [(JSON..=) "ExportMetric" Prelude.<$> exportMetric,
                  (JSON..=) "MetricDimension" Prelude.<$> metricDimension])))
instance Property "ExportMetric" MetricToRetainProperty where
  type PropertyType "ExportMetric" MetricToRetainProperty = Value Prelude.Bool
  set newValue MetricToRetainProperty {..}
    = MetricToRetainProperty {exportMetric = Prelude.pure newValue, ..}
instance Property "Metric" MetricToRetainProperty where
  type PropertyType "Metric" MetricToRetainProperty = Value Prelude.Text
  set newValue MetricToRetainProperty {..}
    = MetricToRetainProperty {metric = newValue, ..}
instance Property "MetricDimension" MetricToRetainProperty where
  type PropertyType "MetricDimension" MetricToRetainProperty = MetricDimensionProperty
  set newValue MetricToRetainProperty {..}
    = MetricToRetainProperty
        {metricDimension = Prelude.pure newValue, ..}