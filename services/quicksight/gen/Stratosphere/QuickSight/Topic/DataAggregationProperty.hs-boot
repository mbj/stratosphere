module Stratosphere.QuickSight.Topic.DataAggregationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataAggregationProperty :: Prelude.Type
instance ToResourceProperties DataAggregationProperty
instance JSON.ToJSON DataAggregationProperty