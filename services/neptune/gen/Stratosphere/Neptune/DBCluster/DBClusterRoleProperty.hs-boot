module Stratosphere.Neptune.DBCluster.DBClusterRoleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DBClusterRoleProperty :: Prelude.Type
instance ToResourceProperties DBClusterRoleProperty
instance JSON.ToJSON DBClusterRoleProperty