module Stratosphere.EMR.Cluster.MetricDimensionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricDimensionProperty :: Prelude.Type
instance ToResourceProperties MetricDimensionProperty
instance JSON.ToJSON MetricDimensionProperty