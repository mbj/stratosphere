module Stratosphere.ODB.OdbPeeringConnection (
        OdbPeeringConnection(..), mkOdbPeeringConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OdbPeeringConnection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbpeeringconnection.html>
    OdbPeeringConnection {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbpeeringconnection.html#cfn-odb-odbpeeringconnection-displayname>
                          displayName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbpeeringconnection.html#cfn-odb-odbpeeringconnection-odbnetworkid>
                          odbNetworkId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbpeeringconnection.html#cfn-odb-odbpeeringconnection-peernetworkid>
                          peerNetworkId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-odbpeeringconnection.html#cfn-odb-odbpeeringconnection-tags>
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOdbPeeringConnection :: OdbPeeringConnection
mkOdbPeeringConnection
  = OdbPeeringConnection
      {haddock_workaround_ = (), displayName = Prelude.Nothing,
       odbNetworkId = Prelude.Nothing, peerNetworkId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties OdbPeeringConnection where
  toResourceProperties OdbPeeringConnection {..}
    = ResourceProperties
        {awsType = "AWS::ODB::OdbPeeringConnection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "OdbNetworkId" Prelude.<$> odbNetworkId,
                            (JSON..=) "PeerNetworkId" Prelude.<$> peerNetworkId,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON OdbPeeringConnection where
  toJSON OdbPeeringConnection {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "OdbNetworkId" Prelude.<$> odbNetworkId,
               (JSON..=) "PeerNetworkId" Prelude.<$> peerNetworkId,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DisplayName" OdbPeeringConnection where
  type PropertyType "DisplayName" OdbPeeringConnection = Value Prelude.Text
  set newValue OdbPeeringConnection {..}
    = OdbPeeringConnection {displayName = Prelude.pure newValue, ..}
instance Property "OdbNetworkId" OdbPeeringConnection where
  type PropertyType "OdbNetworkId" OdbPeeringConnection = Value Prelude.Text
  set newValue OdbPeeringConnection {..}
    = OdbPeeringConnection {odbNetworkId = Prelude.pure newValue, ..}
instance Property "PeerNetworkId" OdbPeeringConnection where
  type PropertyType "PeerNetworkId" OdbPeeringConnection = Value Prelude.Text
  set newValue OdbPeeringConnection {..}
    = OdbPeeringConnection {peerNetworkId = Prelude.pure newValue, ..}
instance Property "Tags" OdbPeeringConnection where
  type PropertyType "Tags" OdbPeeringConnection = [Tag]
  set newValue OdbPeeringConnection {..}
    = OdbPeeringConnection {tags = Prelude.pure newValue, ..}