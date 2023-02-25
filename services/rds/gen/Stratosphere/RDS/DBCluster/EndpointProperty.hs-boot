module Stratosphere.RDS.DBCluster.EndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EndpointProperty :: Prelude.Type
instance ToResourceProperties EndpointProperty
instance JSON.ToJSON EndpointProperty