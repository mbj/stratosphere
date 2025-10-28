module Stratosphere.Logs.LogAnomalyDetector (
        LogAnomalyDetector(..), mkLogAnomalyDetector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogAnomalyDetector
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loganomalydetector.html>
    LogAnomalyDetector {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loganomalydetector.html#cfn-logs-loganomalydetector-accountid>
                        accountId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loganomalydetector.html#cfn-logs-loganomalydetector-anomalyvisibilitytime>
                        anomalyVisibilityTime :: (Prelude.Maybe (Value Prelude.Double)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loganomalydetector.html#cfn-logs-loganomalydetector-detectorname>
                        detectorName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loganomalydetector.html#cfn-logs-loganomalydetector-evaluationfrequency>
                        evaluationFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loganomalydetector.html#cfn-logs-loganomalydetector-filterpattern>
                        filterPattern :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loganomalydetector.html#cfn-logs-loganomalydetector-kmskeyid>
                        kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loganomalydetector.html#cfn-logs-loganomalydetector-loggrouparnlist>
                        logGroupArnList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogAnomalyDetector :: LogAnomalyDetector
mkLogAnomalyDetector
  = LogAnomalyDetector
      {haddock_workaround_ = (), accountId = Prelude.Nothing,
       anomalyVisibilityTime = Prelude.Nothing,
       detectorName = Prelude.Nothing,
       evaluationFrequency = Prelude.Nothing,
       filterPattern = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       logGroupArnList = Prelude.Nothing}
instance ToResourceProperties LogAnomalyDetector where
  toResourceProperties LogAnomalyDetector {..}
    = ResourceProperties
        {awsType = "AWS::Logs::LogAnomalyDetector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountId" Prelude.<$> accountId,
                            (JSON..=) "AnomalyVisibilityTime"
                              Prelude.<$> anomalyVisibilityTime,
                            (JSON..=) "DetectorName" Prelude.<$> detectorName,
                            (JSON..=) "EvaluationFrequency" Prelude.<$> evaluationFrequency,
                            (JSON..=) "FilterPattern" Prelude.<$> filterPattern,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "LogGroupArnList" Prelude.<$> logGroupArnList])}
instance JSON.ToJSON LogAnomalyDetector where
  toJSON LogAnomalyDetector {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountId" Prelude.<$> accountId,
               (JSON..=) "AnomalyVisibilityTime"
                 Prelude.<$> anomalyVisibilityTime,
               (JSON..=) "DetectorName" Prelude.<$> detectorName,
               (JSON..=) "EvaluationFrequency" Prelude.<$> evaluationFrequency,
               (JSON..=) "FilterPattern" Prelude.<$> filterPattern,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "LogGroupArnList" Prelude.<$> logGroupArnList]))
instance Property "AccountId" LogAnomalyDetector where
  type PropertyType "AccountId" LogAnomalyDetector = Value Prelude.Text
  set newValue LogAnomalyDetector {..}
    = LogAnomalyDetector {accountId = Prelude.pure newValue, ..}
instance Property "AnomalyVisibilityTime" LogAnomalyDetector where
  type PropertyType "AnomalyVisibilityTime" LogAnomalyDetector = Value Prelude.Double
  set newValue LogAnomalyDetector {..}
    = LogAnomalyDetector
        {anomalyVisibilityTime = Prelude.pure newValue, ..}
instance Property "DetectorName" LogAnomalyDetector where
  type PropertyType "DetectorName" LogAnomalyDetector = Value Prelude.Text
  set newValue LogAnomalyDetector {..}
    = LogAnomalyDetector {detectorName = Prelude.pure newValue, ..}
instance Property "EvaluationFrequency" LogAnomalyDetector where
  type PropertyType "EvaluationFrequency" LogAnomalyDetector = Value Prelude.Text
  set newValue LogAnomalyDetector {..}
    = LogAnomalyDetector
        {evaluationFrequency = Prelude.pure newValue, ..}
instance Property "FilterPattern" LogAnomalyDetector where
  type PropertyType "FilterPattern" LogAnomalyDetector = Value Prelude.Text
  set newValue LogAnomalyDetector {..}
    = LogAnomalyDetector {filterPattern = Prelude.pure newValue, ..}
instance Property "KmsKeyId" LogAnomalyDetector where
  type PropertyType "KmsKeyId" LogAnomalyDetector = Value Prelude.Text
  set newValue LogAnomalyDetector {..}
    = LogAnomalyDetector {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LogGroupArnList" LogAnomalyDetector where
  type PropertyType "LogGroupArnList" LogAnomalyDetector = ValueList Prelude.Text
  set newValue LogAnomalyDetector {..}
    = LogAnomalyDetector {logGroupArnList = Prelude.pure newValue, ..}