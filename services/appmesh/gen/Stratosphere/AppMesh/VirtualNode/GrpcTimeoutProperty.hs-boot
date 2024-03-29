module Stratosphere.AppMesh.VirtualNode.GrpcTimeoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GrpcTimeoutProperty :: Prelude.Type
instance ToResourceProperties GrpcTimeoutProperty
instance Prelude.Eq GrpcTimeoutProperty
instance Prelude.Show GrpcTimeoutProperty
instance JSON.ToJSON GrpcTimeoutProperty