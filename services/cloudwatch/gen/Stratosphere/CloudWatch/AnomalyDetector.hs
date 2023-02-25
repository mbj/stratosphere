module Stratosphere.CloudWatch.AnomalyDetector (
        module Exports, AnomalyDetector(..), mkAnomalyDetector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.ConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.DimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.MetricMathAnomalyDetectorProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.SingleMetricAnomalyDetectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnomalyDetector
  = AnomalyDetector {configuration :: (Prelude.Maybe ConfigurationProperty),
                     dimensions :: (Prelude.Maybe [DimensionProperty]),
                     metricMathAnomalyDetector :: (Prelude.Maybe MetricMathAnomalyDetectorProperty),
                     metricName :: (Prelude.Maybe (Value Prelude.Text)),
                     namespace :: (Prelude.Maybe (Value Prelude.Text)),
                     singleMetricAnomalyDetector :: (Prelude.Maybe SingleMetricAnomalyDetectorProperty),
                     stat :: (Prelude.Maybe (Value Prelude.Text))}
mkAnomalyDetector :: AnomalyDetector
mkAnomalyDetector
  = AnomalyDetector
      {configuration = Prelude.Nothing, dimensions = Prelude.Nothing,
       metricMathAnomalyDetector = Prelude.Nothing,
       metricName = Prelude.Nothing, namespace = Prelude.Nothing,
       singleMetricAnomalyDetector = Prelude.Nothing,
       stat = Prelude.Nothing}
instance ToResourceProperties AnomalyDetector where
  toResourceProperties AnomalyDetector {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::AnomalyDetector",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricMathAnomalyDetector"
                              Prelude.<$> metricMathAnomalyDetector,
                            (JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "Namespace" Prelude.<$> namespace,
                            (JSON..=) "SingleMetricAnomalyDetector"
                              Prelude.<$> singleMetricAnomalyDetector,
                            (JSON..=) "Stat" Prelude.<$> stat])}
instance JSON.ToJSON AnomalyDetector where
  toJSON AnomalyDetector {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "MetricMathAnomalyDetector"
                 Prelude.<$> metricMathAnomalyDetector,
               (JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "Namespace" Prelude.<$> namespace,
               (JSON..=) "SingleMetricAnomalyDetector"
                 Prelude.<$> singleMetricAnomalyDetector,
               (JSON..=) "Stat" Prelude.<$> stat]))
instance Property "Configuration" AnomalyDetector where
  type PropertyType "Configuration" AnomalyDetector = ConfigurationProperty
  set newValue AnomalyDetector {..}
    = AnomalyDetector {configuration = Prelude.pure newValue, ..}
instance Property "Dimensions" AnomalyDetector where
  type PropertyType "Dimensions" AnomalyDetector = [DimensionProperty]
  set newValue AnomalyDetector {..}
    = AnomalyDetector {dimensions = Prelude.pure newValue, ..}
instance Property "MetricMathAnomalyDetector" AnomalyDetector where
  type PropertyType "MetricMathAnomalyDetector" AnomalyDetector = MetricMathAnomalyDetectorProperty
  set newValue AnomalyDetector {..}
    = AnomalyDetector
        {metricMathAnomalyDetector = Prelude.pure newValue, ..}
instance Property "MetricName" AnomalyDetector where
  type PropertyType "MetricName" AnomalyDetector = Value Prelude.Text
  set newValue AnomalyDetector {..}
    = AnomalyDetector {metricName = Prelude.pure newValue, ..}
instance Property "Namespace" AnomalyDetector where
  type PropertyType "Namespace" AnomalyDetector = Value Prelude.Text
  set newValue AnomalyDetector {..}
    = AnomalyDetector {namespace = Prelude.pure newValue, ..}
instance Property "SingleMetricAnomalyDetector" AnomalyDetector where
  type PropertyType "SingleMetricAnomalyDetector" AnomalyDetector = SingleMetricAnomalyDetectorProperty
  set newValue AnomalyDetector {..}
    = AnomalyDetector
        {singleMetricAnomalyDetector = Prelude.pure newValue, ..}
instance Property "Stat" AnomalyDetector where
  type PropertyType "Stat" AnomalyDetector = Value Prelude.Text
  set newValue AnomalyDetector {..}
    = AnomalyDetector {stat = Prelude.pure newValue, ..}