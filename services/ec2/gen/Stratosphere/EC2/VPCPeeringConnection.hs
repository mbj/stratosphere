module Stratosphere.EC2.VPCPeeringConnection (
        VPCPeeringConnection(..), mkVPCPeeringConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VPCPeeringConnection
  = VPCPeeringConnection {peerOwnerId :: (Prelude.Maybe (Value Prelude.Text)),
                          peerRegion :: (Prelude.Maybe (Value Prelude.Text)),
                          peerRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                          peerVpcId :: (Value Prelude.Text),
                          tags :: (Prelude.Maybe [Tag]),
                          vpcId :: (Value Prelude.Text)}
mkVPCPeeringConnection ::
  Value Prelude.Text -> Value Prelude.Text -> VPCPeeringConnection
mkVPCPeeringConnection peerVpcId vpcId
  = VPCPeeringConnection
      {peerVpcId = peerVpcId, vpcId = vpcId,
       peerOwnerId = Prelude.Nothing, peerRegion = Prelude.Nothing,
       peerRoleArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VPCPeeringConnection where
  toResourceProperties VPCPeeringConnection {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCPeeringConnection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PeerVpcId" JSON..= peerVpcId, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "PeerOwnerId" Prelude.<$> peerOwnerId,
                               (JSON..=) "PeerRegion" Prelude.<$> peerRegion,
                               (JSON..=) "PeerRoleArn" Prelude.<$> peerRoleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VPCPeeringConnection where
  toJSON VPCPeeringConnection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PeerVpcId" JSON..= peerVpcId, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "PeerOwnerId" Prelude.<$> peerOwnerId,
                  (JSON..=) "PeerRegion" Prelude.<$> peerRegion,
                  (JSON..=) "PeerRoleArn" Prelude.<$> peerRoleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "PeerOwnerId" VPCPeeringConnection where
  type PropertyType "PeerOwnerId" VPCPeeringConnection = Value Prelude.Text
  set newValue VPCPeeringConnection {..}
    = VPCPeeringConnection {peerOwnerId = Prelude.pure newValue, ..}
instance Property "PeerRegion" VPCPeeringConnection where
  type PropertyType "PeerRegion" VPCPeeringConnection = Value Prelude.Text
  set newValue VPCPeeringConnection {..}
    = VPCPeeringConnection {peerRegion = Prelude.pure newValue, ..}
instance Property "PeerRoleArn" VPCPeeringConnection where
  type PropertyType "PeerRoleArn" VPCPeeringConnection = Value Prelude.Text
  set newValue VPCPeeringConnection {..}
    = VPCPeeringConnection {peerRoleArn = Prelude.pure newValue, ..}
instance Property "PeerVpcId" VPCPeeringConnection where
  type PropertyType "PeerVpcId" VPCPeeringConnection = Value Prelude.Text
  set newValue VPCPeeringConnection {..}
    = VPCPeeringConnection {peerVpcId = newValue, ..}
instance Property "Tags" VPCPeeringConnection where
  type PropertyType "Tags" VPCPeeringConnection = [Tag]
  set newValue VPCPeeringConnection {..}
    = VPCPeeringConnection {tags = Prelude.pure newValue, ..}
instance Property "VpcId" VPCPeeringConnection where
  type PropertyType "VpcId" VPCPeeringConnection = Value Prelude.Text
  set newValue VPCPeeringConnection {..}
    = VPCPeeringConnection {vpcId = newValue, ..}