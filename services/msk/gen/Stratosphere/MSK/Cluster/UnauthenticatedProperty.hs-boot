module Stratosphere.MSK.Cluster.UnauthenticatedProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UnauthenticatedProperty :: Prelude.Type
instance ToResourceProperties UnauthenticatedProperty
instance JSON.ToJSON UnauthenticatedProperty