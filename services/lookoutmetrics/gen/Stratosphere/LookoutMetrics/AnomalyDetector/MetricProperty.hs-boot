module Stratosphere.LookoutMetrics.AnomalyDetector.MetricProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricProperty :: Prelude.Type
instance ToResourceProperties MetricProperty
instance Prelude.Eq MetricProperty
instance Prelude.Show MetricProperty
instance JSON.ToJSON MetricProperty