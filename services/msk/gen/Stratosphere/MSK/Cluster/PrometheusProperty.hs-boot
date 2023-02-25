module Stratosphere.MSK.Cluster.PrometheusProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PrometheusProperty :: Prelude.Type
instance ToResourceProperties PrometheusProperty
instance JSON.ToJSON PrometheusProperty