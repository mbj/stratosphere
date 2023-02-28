module Stratosphere.LookoutMetrics.AnomalyDetector.AnomalyDetectorConfigProperty (
        AnomalyDetectorConfigProperty(..), mkAnomalyDetectorConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnomalyDetectorConfigProperty
  = AnomalyDetectorConfigProperty {anomalyDetectorFrequency :: (Value Prelude.Text)}
mkAnomalyDetectorConfigProperty ::
  Value Prelude.Text -> AnomalyDetectorConfigProperty
mkAnomalyDetectorConfigProperty anomalyDetectorFrequency
  = AnomalyDetectorConfigProperty
      {anomalyDetectorFrequency = anomalyDetectorFrequency}
instance ToResourceProperties AnomalyDetectorConfigProperty where
  toResourceProperties AnomalyDetectorConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.AnomalyDetectorConfig",
         supportsTags = Prelude.False,
         properties = ["AnomalyDetectorFrequency"
                         JSON..= anomalyDetectorFrequency]}
instance JSON.ToJSON AnomalyDetectorConfigProperty where
  toJSON AnomalyDetectorConfigProperty {..}
    = JSON.object
        ["AnomalyDetectorFrequency" JSON..= anomalyDetectorFrequency]
instance Property "AnomalyDetectorFrequency" AnomalyDetectorConfigProperty where
  type PropertyType "AnomalyDetectorFrequency" AnomalyDetectorConfigProperty = Value Prelude.Text
  set newValue AnomalyDetectorConfigProperty {}
    = AnomalyDetectorConfigProperty
        {anomalyDetectorFrequency = newValue, ..}