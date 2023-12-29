module Stratosphere.LookoutMetrics.AnomalyDetector.MetricSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricSourceProperty :: Prelude.Type
instance ToResourceProperties MetricSourceProperty
instance Prelude.Eq MetricSourceProperty
instance Prelude.Show MetricSourceProperty
instance JSON.ToJSON MetricSourceProperty