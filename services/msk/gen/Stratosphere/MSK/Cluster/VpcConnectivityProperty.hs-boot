module Stratosphere.MSK.Cluster.VpcConnectivityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VpcConnectivityProperty :: Prelude.Type
instance ToResourceProperties VpcConnectivityProperty
instance JSON.ToJSON VpcConnectivityProperty