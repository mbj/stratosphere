module Stratosphere.AppMesh.Route.GrpcTimeoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GrpcTimeoutProperty :: Prelude.Type
instance ToResourceProperties GrpcTimeoutProperty
instance JSON.ToJSON GrpcTimeoutProperty