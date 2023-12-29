module Stratosphere.LookoutMetrics.AnomalyDetector.TimestampColumnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimestampColumnProperty :: Prelude.Type
instance ToResourceProperties TimestampColumnProperty
instance Prelude.Eq TimestampColumnProperty
instance Prelude.Show TimestampColumnProperty
instance JSON.ToJSON TimestampColumnProperty