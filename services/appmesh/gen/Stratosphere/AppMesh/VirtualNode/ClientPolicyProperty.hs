module Stratosphere.AppMesh.VirtualNode.ClientPolicyProperty (
        module Exports, ClientPolicyProperty(..), mkClientPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ClientPolicyTlsProperty as Exports
import Stratosphere.ResourceProperties
data ClientPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicy.html>
    ClientPolicyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicy.html#cfn-appmesh-virtualnode-clientpolicy-tls>
                          tLS :: (Prelude.Maybe ClientPolicyTlsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientPolicyProperty :: ClientPolicyProperty
mkClientPolicyProperty
  = ClientPolicyProperty
      {haddock_workaround_ = (), tLS = Prelude.Nothing}
instance ToResourceProperties ClientPolicyProperty where
  toResourceProperties ClientPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ClientPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "TLS" Prelude.<$> tLS])}
instance JSON.ToJSON ClientPolicyProperty where
  toJSON ClientPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "TLS" Prelude.<$> tLS]))
instance Property "TLS" ClientPolicyProperty where
  type PropertyType "TLS" ClientPolicyProperty = ClientPolicyTlsProperty
  set newValue ClientPolicyProperty {..}
    = ClientPolicyProperty {tLS = Prelude.pure newValue, ..}