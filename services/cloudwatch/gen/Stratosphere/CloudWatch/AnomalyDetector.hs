module Stratosphere.CloudWatch.AnomalyDetector (
        module Exports, AnomalyDetector(..), mkAnomalyDetector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.ConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.DimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.MetricCharacteristicsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.MetricMathAnomalyDetectorProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.SingleMetricAnomalyDetectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnomalyDetector
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html>
    AnomalyDetector {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-configuration>
                     configuration :: (Prelude.Maybe ConfigurationProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-dimensions>
                     dimensions :: (Prelude.Maybe [DimensionProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-metriccharacteristics>
                     metricCharacteristics :: (Prelude.Maybe MetricCharacteristicsProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-metricmathanomalydetector>
                     metricMathAnomalyDetector :: (Prelude.Maybe MetricMathAnomalyDetectorProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-metricname>
                     metricName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-namespace>
                     namespace :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-singlemetricanomalydetector>
                     singleMetricAnomalyDetector :: (Prelude.Maybe SingleMetricAnomalyDetectorProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-stat>
                     stat :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnomalyDetector :: AnomalyDetector
mkAnomalyDetector
  = AnomalyDetector
      {haddock_workaround_ = (), configuration = Prelude.Nothing,
       dimensions = Prelude.Nothing,
       metricCharacteristics = Prelude.Nothing,
       metricMathAnomalyDetector = Prelude.Nothing,
       metricName = Prelude.Nothing, namespace = Prelude.Nothing,
       singleMetricAnomalyDetector = Prelude.Nothing,
       stat = Prelude.Nothing}
instance ToResourceProperties AnomalyDetector where
  toResourceProperties AnomalyDetector {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::AnomalyDetector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricCharacteristics"
                              Prelude.<$> metricCharacteristics,
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
               (JSON..=) "MetricCharacteristics"
                 Prelude.<$> metricCharacteristics,
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
instance Property "MetricCharacteristics" AnomalyDetector where
  type PropertyType "MetricCharacteristics" AnomalyDetector = MetricCharacteristicsProperty
  set newValue AnomalyDetector {..}
    = AnomalyDetector
        {metricCharacteristics = Prelude.pure newValue, ..}
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