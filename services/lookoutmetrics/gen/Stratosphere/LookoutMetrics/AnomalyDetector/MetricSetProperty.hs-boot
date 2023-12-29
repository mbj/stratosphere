module Stratosphere.LookoutMetrics.AnomalyDetector.MetricSetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricSetProperty :: Prelude.Type
instance ToResourceProperties MetricSetProperty
instance Prelude.Eq MetricSetProperty
instance Prelude.Show MetricSetProperty
instance JSON.ToJSON MetricSetProperty