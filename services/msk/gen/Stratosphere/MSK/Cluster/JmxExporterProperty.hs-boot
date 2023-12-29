module Stratosphere.MSK.Cluster.JmxExporterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JmxExporterProperty :: Prelude.Type
instance ToResourceProperties JmxExporterProperty
instance Prelude.Eq JmxExporterProperty
instance Prelude.Show JmxExporterProperty
instance JSON.ToJSON JmxExporterProperty