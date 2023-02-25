module Stratosphere.AppMesh.VirtualNode.ClientPolicyTlsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ClientPolicyTlsProperty :: Prelude.Type
instance ToResourceProperties ClientPolicyTlsProperty
instance JSON.ToJSON ClientPolicyTlsProperty