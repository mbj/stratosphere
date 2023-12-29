module Stratosphere.AppMesh.VirtualNode.ClientPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ClientPolicyProperty :: Prelude.Type
instance ToResourceProperties ClientPolicyProperty
instance Prelude.Eq ClientPolicyProperty
instance Prelude.Show ClientPolicyProperty
instance JSON.ToJSON ClientPolicyProperty