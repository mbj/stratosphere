module Stratosphere.AppMesh.VirtualNode.TcpTimeoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TcpTimeoutProperty :: Prelude.Type
instance ToResourceProperties TcpTimeoutProperty
instance JSON.ToJSON TcpTimeoutProperty