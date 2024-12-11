module Stratosphere.EKS.Cluster.RemoteNodeNetworkProperty (
        RemoteNodeNetworkProperty(..), mkRemoteNodeNetworkProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemoteNodeNetworkProperty
  = RemoteNodeNetworkProperty {cidrs :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemoteNodeNetworkProperty ::
  ValueList Prelude.Text -> RemoteNodeNetworkProperty
mkRemoteNodeNetworkProperty cidrs
  = RemoteNodeNetworkProperty {cidrs = cidrs}
instance ToResourceProperties RemoteNodeNetworkProperty where
  toResourceProperties RemoteNodeNetworkProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.RemoteNodeNetwork",
         supportsTags = Prelude.False, properties = ["Cidrs" JSON..= cidrs]}
instance JSON.ToJSON RemoteNodeNetworkProperty where
  toJSON RemoteNodeNetworkProperty {..}
    = JSON.object ["Cidrs" JSON..= cidrs]
instance Property "Cidrs" RemoteNodeNetworkProperty where
  type PropertyType "Cidrs" RemoteNodeNetworkProperty = ValueList Prelude.Text
  set newValue RemoteNodeNetworkProperty {}
    = RemoteNodeNetworkProperty {cidrs = newValue, ..}