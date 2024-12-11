module Stratosphere.EKS.Cluster.RemotePodNetworkProperty (
        RemotePodNetworkProperty(..), mkRemotePodNetworkProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemotePodNetworkProperty
  = RemotePodNetworkProperty {cidrs :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemotePodNetworkProperty ::
  ValueList Prelude.Text -> RemotePodNetworkProperty
mkRemotePodNetworkProperty cidrs
  = RemotePodNetworkProperty {cidrs = cidrs}
instance ToResourceProperties RemotePodNetworkProperty where
  toResourceProperties RemotePodNetworkProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.RemotePodNetwork",
         supportsTags = Prelude.False, properties = ["Cidrs" JSON..= cidrs]}
instance JSON.ToJSON RemotePodNetworkProperty where
  toJSON RemotePodNetworkProperty {..}
    = JSON.object ["Cidrs" JSON..= cidrs]
instance Property "Cidrs" RemotePodNetworkProperty where
  type PropertyType "Cidrs" RemotePodNetworkProperty = ValueList Prelude.Text
  set newValue RemotePodNetworkProperty {}
    = RemotePodNetworkProperty {cidrs = newValue, ..}