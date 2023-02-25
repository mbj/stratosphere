module Stratosphere.IoT.FleetMetric.AggregationTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AggregationTypeProperty :: Prelude.Type
instance ToResourceProperties AggregationTypeProperty
instance JSON.ToJSON AggregationTypeProperty