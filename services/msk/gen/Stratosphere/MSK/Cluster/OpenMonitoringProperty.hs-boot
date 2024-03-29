module Stratosphere.MSK.Cluster.OpenMonitoringProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OpenMonitoringProperty :: Prelude.Type
instance ToResourceProperties OpenMonitoringProperty
instance Prelude.Eq OpenMonitoringProperty
instance Prelude.Show OpenMonitoringProperty
instance JSON.ToJSON OpenMonitoringProperty