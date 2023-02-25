module Stratosphere.CloudWatch.AnomalyDetector.MetricStatProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricStatProperty :: Prelude.Type
instance ToResourceProperties MetricStatProperty
instance JSON.ToJSON MetricStatProperty