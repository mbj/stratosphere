module Stratosphere.CloudWatch.AnomalyDetector.MetricCharacteristicsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricCharacteristicsProperty :: Prelude.Type
instance ToResourceProperties MetricCharacteristicsProperty
instance Prelude.Eq MetricCharacteristicsProperty
instance Prelude.Show MetricCharacteristicsProperty
instance JSON.ToJSON MetricCharacteristicsProperty