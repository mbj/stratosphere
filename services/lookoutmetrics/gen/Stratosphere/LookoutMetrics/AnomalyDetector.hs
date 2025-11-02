module Stratosphere.LookoutMetrics.AnomalyDetector (
        module Exports, AnomalyDetector(..), mkAnomalyDetector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.AnomalyDetectorConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.MetricSetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnomalyDetector
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-anomalydetector.html>
    AnomalyDetector {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-anomalydetector.html#cfn-lookoutmetrics-anomalydetector-anomalydetectorconfig>
                     anomalyDetectorConfig :: AnomalyDetectorConfigProperty,
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-anomalydetector.html#cfn-lookoutmetrics-anomalydetector-anomalydetectordescription>
                     anomalyDetectorDescription :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-anomalydetector.html#cfn-lookoutmetrics-anomalydetector-anomalydetectorname>
                     anomalyDetectorName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-anomalydetector.html#cfn-lookoutmetrics-anomalydetector-kmskeyarn>
                     kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lookoutmetrics-anomalydetector.html#cfn-lookoutmetrics-anomalydetector-metricsetlist>
                     metricSetList :: [MetricSetProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnomalyDetector ::
  AnomalyDetectorConfigProperty
  -> [MetricSetProperty] -> AnomalyDetector
mkAnomalyDetector anomalyDetectorConfig metricSetList
  = AnomalyDetector
      {haddock_workaround_ = (),
       anomalyDetectorConfig = anomalyDetectorConfig,
       metricSetList = metricSetList,
       anomalyDetectorDescription = Prelude.Nothing,
       anomalyDetectorName = Prelude.Nothing, kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties AnomalyDetector where
  toResourceProperties AnomalyDetector {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AnomalyDetectorConfig" JSON..= anomalyDetectorConfig,
                            "MetricSetList" JSON..= metricSetList]
                           (Prelude.catMaybes
                              [(JSON..=) "AnomalyDetectorDescription"
                                 Prelude.<$> anomalyDetectorDescription,
                               (JSON..=) "AnomalyDetectorName" Prelude.<$> anomalyDetectorName,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))}
instance JSON.ToJSON AnomalyDetector where
  toJSON AnomalyDetector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AnomalyDetectorConfig" JSON..= anomalyDetectorConfig,
               "MetricSetList" JSON..= metricSetList]
              (Prelude.catMaybes
                 [(JSON..=) "AnomalyDetectorDescription"
                    Prelude.<$> anomalyDetectorDescription,
                  (JSON..=) "AnomalyDetectorName" Prelude.<$> anomalyDetectorName,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])))
instance Property "AnomalyDetectorConfig" AnomalyDetector where
  type PropertyType "AnomalyDetectorConfig" AnomalyDetector = AnomalyDetectorConfigProperty
  set newValue AnomalyDetector {..}
    = AnomalyDetector {anomalyDetectorConfig = newValue, ..}
instance Property "AnomalyDetectorDescription" AnomalyDetector where
  type PropertyType "AnomalyDetectorDescription" AnomalyDetector = Value Prelude.Text
  set newValue AnomalyDetector {..}
    = AnomalyDetector
        {anomalyDetectorDescription = Prelude.pure newValue, ..}
instance Property "AnomalyDetectorName" AnomalyDetector where
  type PropertyType "AnomalyDetectorName" AnomalyDetector = Value Prelude.Text
  set newValue AnomalyDetector {..}
    = AnomalyDetector {anomalyDetectorName = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" AnomalyDetector where
  type PropertyType "KmsKeyArn" AnomalyDetector = Value Prelude.Text
  set newValue AnomalyDetector {..}
    = AnomalyDetector {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "MetricSetList" AnomalyDetector where
  type PropertyType "MetricSetList" AnomalyDetector = [MetricSetProperty]
  set newValue AnomalyDetector {..}
    = AnomalyDetector {metricSetList = newValue, ..}