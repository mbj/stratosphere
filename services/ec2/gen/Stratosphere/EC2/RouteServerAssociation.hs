module Stratosphere.EC2.RouteServerAssociation (
        RouteServerAssociation(..), mkRouteServerAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteServerAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverassociation.html>
    RouteServerAssociation {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverassociation.html#cfn-ec2-routeserverassociation-routeserverid>
                            routeServerId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserverassociation.html#cfn-ec2-routeserverassociation-vpcid>
                            vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteServerAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> RouteServerAssociation
mkRouteServerAssociation routeServerId vpcId
  = RouteServerAssociation
      {haddock_workaround_ = (), routeServerId = routeServerId,
       vpcId = vpcId}
instance ToResourceProperties RouteServerAssociation where
  toResourceProperties RouteServerAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::RouteServerAssociation",
         supportsTags = Prelude.False,
         properties = ["RouteServerId" JSON..= routeServerId,
                       "VpcId" JSON..= vpcId]}
instance JSON.ToJSON RouteServerAssociation where
  toJSON RouteServerAssociation {..}
    = JSON.object
        ["RouteServerId" JSON..= routeServerId, "VpcId" JSON..= vpcId]
instance Property "RouteServerId" RouteServerAssociation where
  type PropertyType "RouteServerId" RouteServerAssociation = Value Prelude.Text
  set newValue RouteServerAssociation {..}
    = RouteServerAssociation {routeServerId = newValue, ..}
instance Property "VpcId" RouteServerAssociation where
  type PropertyType "VpcId" RouteServerAssociation = Value Prelude.Text
  set newValue RouteServerAssociation {..}
    = RouteServerAssociation {vpcId = newValue, ..}