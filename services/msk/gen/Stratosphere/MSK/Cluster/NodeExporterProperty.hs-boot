module Stratosphere.MSK.Cluster.NodeExporterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NodeExporterProperty :: Prelude.Type
instance ToResourceProperties NodeExporterProperty
instance JSON.ToJSON NodeExporterProperty