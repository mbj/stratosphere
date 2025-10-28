module Stratosphere.EC2.ClientVpnRoute (
        ClientVpnRoute(..), mkClientVpnRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientVpnRoute
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html>
    ClientVpnRoute {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-clientvpnendpointid>
                    clientVpnEndpointId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-destinationcidrblock>
                    destinationCidrBlock :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-targetvpcsubnetid>
                    targetVpcSubnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientVpnRoute ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ClientVpnRoute
mkClientVpnRoute
  clientVpnEndpointId
  destinationCidrBlock
  targetVpcSubnetId
  = ClientVpnRoute
      {haddock_workaround_ = (),
       clientVpnEndpointId = clientVpnEndpointId,
       destinationCidrBlock = destinationCidrBlock,
       targetVpcSubnetId = targetVpcSubnetId,
       description = Prelude.Nothing}
instance ToResourceProperties ClientVpnRoute where
  toResourceProperties ClientVpnRoute {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientVpnEndpointId" JSON..= clientVpnEndpointId,
                            "DestinationCidrBlock" JSON..= destinationCidrBlock,
                            "TargetVpcSubnetId" JSON..= targetVpcSubnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ClientVpnRoute where
  toJSON ClientVpnRoute {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientVpnEndpointId" JSON..= clientVpnEndpointId,
               "DestinationCidrBlock" JSON..= destinationCidrBlock,
               "TargetVpcSubnetId" JSON..= targetVpcSubnetId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "ClientVpnEndpointId" ClientVpnRoute where
  type PropertyType "ClientVpnEndpointId" ClientVpnRoute = Value Prelude.Text
  set newValue ClientVpnRoute {..}
    = ClientVpnRoute {clientVpnEndpointId = newValue, ..}
instance Property "Description" ClientVpnRoute where
  type PropertyType "Description" ClientVpnRoute = Value Prelude.Text
  set newValue ClientVpnRoute {..}
    = ClientVpnRoute {description = Prelude.pure newValue, ..}
instance Property "DestinationCidrBlock" ClientVpnRoute where
  type PropertyType "DestinationCidrBlock" ClientVpnRoute = Value Prelude.Text
  set newValue ClientVpnRoute {..}
    = ClientVpnRoute {destinationCidrBlock = newValue, ..}
instance Property "TargetVpcSubnetId" ClientVpnRoute where
  type PropertyType "TargetVpcSubnetId" ClientVpnRoute = Value Prelude.Text
  set newValue ClientVpnRoute {..}
    = ClientVpnRoute {targetVpcSubnetId = newValue, ..}