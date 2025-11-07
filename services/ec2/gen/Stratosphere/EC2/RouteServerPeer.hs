module Stratosphere.EC2.RouteServerPeer (
        module Exports, RouteServerPeer(..), mkRouteServerPeer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.RouteServerPeer.BgpOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RouteServerPeer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverpeer.html>
    RouteServerPeer {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverpeer.html#cfn-ec2-routeserverpeer-bgpoptions>
                     bgpOptions :: BgpOptionsProperty,
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverpeer.html#cfn-ec2-routeserverpeer-peeraddress>
                     peerAddress :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverpeer.html#cfn-ec2-routeserverpeer-routeserverendpointid>
                     routeServerEndpointId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverpeer.html#cfn-ec2-routeserverpeer-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteServerPeer ::
  BgpOptionsProperty
  -> Value Prelude.Text -> Value Prelude.Text -> RouteServerPeer
mkRouteServerPeer bgpOptions peerAddress routeServerEndpointId
  = RouteServerPeer
      {haddock_workaround_ = (), bgpOptions = bgpOptions,
       peerAddress = peerAddress,
       routeServerEndpointId = routeServerEndpointId,
       tags = Prelude.Nothing}
instance ToResourceProperties RouteServerPeer where
  toResourceProperties RouteServerPeer {..}
    = ResourceProperties
        {awsType = "AWS::EC2::RouteServerPeer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BgpOptions" JSON..= bgpOptions,
                            "PeerAddress" JSON..= peerAddress,
                            "RouteServerEndpointId" JSON..= routeServerEndpointId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RouteServerPeer where
  toJSON RouteServerPeer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BgpOptions" JSON..= bgpOptions,
               "PeerAddress" JSON..= peerAddress,
               "RouteServerEndpointId" JSON..= routeServerEndpointId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BgpOptions" RouteServerPeer where
  type PropertyType "BgpOptions" RouteServerPeer = BgpOptionsProperty
  set newValue RouteServerPeer {..}
    = RouteServerPeer {bgpOptions = newValue, ..}
instance Property "PeerAddress" RouteServerPeer where
  type PropertyType "PeerAddress" RouteServerPeer = Value Prelude.Text
  set newValue RouteServerPeer {..}
    = RouteServerPeer {peerAddress = newValue, ..}
instance Property "RouteServerEndpointId" RouteServerPeer where
  type PropertyType "RouteServerEndpointId" RouteServerPeer = Value Prelude.Text
  set newValue RouteServerPeer {..}
    = RouteServerPeer {routeServerEndpointId = newValue, ..}
instance Property "Tags" RouteServerPeer where
  type PropertyType "Tags" RouteServerPeer = [Tag]
  set newValue RouteServerPeer {..}
    = RouteServerPeer {tags = Prelude.pure newValue, ..}