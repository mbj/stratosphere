module Stratosphere.EC2.RouteServerEndpoint (
        RouteServerEndpoint(..), mkRouteServerEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RouteServerEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverendpoint.html>
    RouteServerEndpoint {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverendpoint.html#cfn-ec2-routeserverendpoint-routeserverid>
                         routeServerId :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverendpoint.html#cfn-ec2-routeserverendpoint-subnetid>
                         subnetId :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverendpoint.html#cfn-ec2-routeserverendpoint-tags>
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteServerEndpoint ::
  Value Prelude.Text -> Value Prelude.Text -> RouteServerEndpoint
mkRouteServerEndpoint routeServerId subnetId
  = RouteServerEndpoint
      {haddock_workaround_ = (), routeServerId = routeServerId,
       subnetId = subnetId, tags = Prelude.Nothing}
instance ToResourceProperties RouteServerEndpoint where
  toResourceProperties RouteServerEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::EC2::RouteServerEndpoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RouteServerId" JSON..= routeServerId,
                            "SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RouteServerEndpoint where
  toJSON RouteServerEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RouteServerId" JSON..= routeServerId,
               "SubnetId" JSON..= subnetId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "RouteServerId" RouteServerEndpoint where
  type PropertyType "RouteServerId" RouteServerEndpoint = Value Prelude.Text
  set newValue RouteServerEndpoint {..}
    = RouteServerEndpoint {routeServerId = newValue, ..}
instance Property "SubnetId" RouteServerEndpoint where
  type PropertyType "SubnetId" RouteServerEndpoint = Value Prelude.Text
  set newValue RouteServerEndpoint {..}
    = RouteServerEndpoint {subnetId = newValue, ..}
instance Property "Tags" RouteServerEndpoint where
  type PropertyType "Tags" RouteServerEndpoint = [Tag]
  set newValue RouteServerEndpoint {..}
    = RouteServerEndpoint {tags = Prelude.pure newValue, ..}