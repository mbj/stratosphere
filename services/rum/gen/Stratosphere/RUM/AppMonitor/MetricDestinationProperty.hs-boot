module Stratosphere.RUM.AppMonitor.MetricDestinationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricDestinationProperty :: Prelude.Type
instance ToResourceProperties MetricDestinationProperty
instance Prelude.Eq MetricDestinationProperty
instance Prelude.Show MetricDestinationProperty
instance JSON.ToJSON MetricDestinationProperty