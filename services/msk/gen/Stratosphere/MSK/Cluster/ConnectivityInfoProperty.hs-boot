module Stratosphere.MSK.Cluster.ConnectivityInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConnectivityInfoProperty :: Prelude.Type
instance ToResourceProperties ConnectivityInfoProperty
instance JSON.ToJSON ConnectivityInfoProperty