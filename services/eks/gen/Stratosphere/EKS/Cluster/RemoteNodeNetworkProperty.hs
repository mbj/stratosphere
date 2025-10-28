module Stratosphere.EKS.Cluster.RemoteNodeNetworkProperty (
        RemoteNodeNetworkProperty(..), mkRemoteNodeNetworkProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemoteNodeNetworkProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-remotenodenetwork.html>
    RemoteNodeNetworkProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-remotenodenetwork.html#cfn-eks-cluster-remotenodenetwork-cidrs>
                               cidrs :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemoteNodeNetworkProperty ::
  ValueList Prelude.Text -> RemoteNodeNetworkProperty
mkRemoteNodeNetworkProperty cidrs
  = RemoteNodeNetworkProperty
      {haddock_workaround_ = (), cidrs = cidrs}
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
  set newValue RemoteNodeNetworkProperty {..}
    = RemoteNodeNetworkProperty {cidrs = newValue, ..}