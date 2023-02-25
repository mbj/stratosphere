module Stratosphere.AppMesh.VirtualNode.ListenerTlsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ListenerTlsProperty :: Prelude.Type
instance ToResourceProperties ListenerTlsProperty
instance JSON.ToJSON ListenerTlsProperty