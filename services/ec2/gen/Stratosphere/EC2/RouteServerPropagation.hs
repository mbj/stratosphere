module Stratosphere.EC2.RouteServerPropagation (
        RouteServerPropagation(..), mkRouteServerPropagation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteServerPropagation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverpropagation.html>
    RouteServerPropagation {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverpropagation.html#cfn-ec2-routeserverpropagation-routeserverid>
                            routeServerId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverpropagation.html#cfn-ec2-routeserverpropagation-routetableid>
                            routeTableId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteServerPropagation ::
  Value Prelude.Text -> Value Prelude.Text -> RouteServerPropagation
mkRouteServerPropagation routeServerId routeTableId
  = RouteServerPropagation
      {haddock_workaround_ = (), routeServerId = routeServerId,
       routeTableId = routeTableId}
instance ToResourceProperties RouteServerPropagation where
  toResourceProperties RouteServerPropagation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::RouteServerPropagation",
         supportsTags = Prelude.False,
         properties = ["RouteServerId" JSON..= routeServerId,
                       "RouteTableId" JSON..= routeTableId]}
instance JSON.ToJSON RouteServerPropagation where
  toJSON RouteServerPropagation {..}
    = JSON.object
        ["RouteServerId" JSON..= routeServerId,
         "RouteTableId" JSON..= routeTableId]
instance Property "RouteServerId" RouteServerPropagation where
  type PropertyType "RouteServerId" RouteServerPropagation = Value Prelude.Text
  set newValue RouteServerPropagation {..}
    = RouteServerPropagation {routeServerId = newValue, ..}
instance Property "RouteTableId" RouteServerPropagation where
  type PropertyType "RouteTableId" RouteServerPropagation = Value Prelude.Text
  set newValue RouteServerPropagation {..}
    = RouteServerPropagation {routeTableId = newValue, ..}