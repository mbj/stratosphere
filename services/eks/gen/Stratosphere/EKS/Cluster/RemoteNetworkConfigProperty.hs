module Stratosphere.EKS.Cluster.RemoteNetworkConfigProperty (
        module Exports, RemoteNetworkConfigProperty(..),
        mkRemoteNetworkConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.RemoteNodeNetworkProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.RemotePodNetworkProperty as Exports
import Stratosphere.ResourceProperties
data RemoteNetworkConfigProperty
  = RemoteNetworkConfigProperty {remoteNodeNetworks :: [RemoteNodeNetworkProperty],
                                 remotePodNetworks :: (Prelude.Maybe [RemotePodNetworkProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemoteNetworkConfigProperty ::
  [RemoteNodeNetworkProperty] -> RemoteNetworkConfigProperty
mkRemoteNetworkConfigProperty remoteNodeNetworks
  = RemoteNetworkConfigProperty
      {remoteNodeNetworks = remoteNodeNetworks,
       remotePodNetworks = Prelude.Nothing}
instance ToResourceProperties RemoteNetworkConfigProperty where
  toResourceProperties RemoteNetworkConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.RemoteNetworkConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RemoteNodeNetworks" JSON..= remoteNodeNetworks]
                           (Prelude.catMaybes
                              [(JSON..=) "RemotePodNetworks" Prelude.<$> remotePodNetworks]))}
instance JSON.ToJSON RemoteNetworkConfigProperty where
  toJSON RemoteNetworkConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RemoteNodeNetworks" JSON..= remoteNodeNetworks]
              (Prelude.catMaybes
                 [(JSON..=) "RemotePodNetworks" Prelude.<$> remotePodNetworks])))
instance Property "RemoteNodeNetworks" RemoteNetworkConfigProperty where
  type PropertyType "RemoteNodeNetworks" RemoteNetworkConfigProperty = [RemoteNodeNetworkProperty]
  set newValue RemoteNetworkConfigProperty {..}
    = RemoteNetworkConfigProperty {remoteNodeNetworks = newValue, ..}
instance Property "RemotePodNetworks" RemoteNetworkConfigProperty where
  type PropertyType "RemotePodNetworks" RemoteNetworkConfigProperty = [RemotePodNetworkProperty]
  set newValue RemoteNetworkConfigProperty {..}
    = RemoteNetworkConfigProperty
        {remotePodNetworks = Prelude.pure newValue, ..}