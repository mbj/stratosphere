module Stratosphere.AppMesh.Route.TcpTimeoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TcpTimeoutProperty :: Prelude.Type
instance ToResourceProperties TcpTimeoutProperty
instance Prelude.Eq TcpTimeoutProperty
instance Prelude.Show TcpTimeoutProperty
instance JSON.ToJSON TcpTimeoutProperty