module Stratosphere.EC2.EgressOnlyInternetGateway (
        EgressOnlyInternetGateway(..), mkEgressOnlyInternetGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EgressOnlyInternetGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html>
    EgressOnlyInternetGateway {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html#cfn-ec2-egressonlyinternetgateway-tags>
                               tags :: (Prelude.Maybe [Tag]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html#cfn-ec2-egressonlyinternetgateway-vpcid>
                               vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEgressOnlyInternetGateway ::
  Value Prelude.Text -> EgressOnlyInternetGateway
mkEgressOnlyInternetGateway vpcId
  = EgressOnlyInternetGateway
      {haddock_workaround_ = (), vpcId = vpcId, tags = Prelude.Nothing}
instance ToResourceProperties EgressOnlyInternetGateway where
  toResourceProperties EgressOnlyInternetGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EgressOnlyInternetGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcId" JSON..= vpcId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EgressOnlyInternetGateway where
  toJSON EgressOnlyInternetGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcId" JSON..= vpcId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Tags" EgressOnlyInternetGateway where
  type PropertyType "Tags" EgressOnlyInternetGateway = [Tag]
  set newValue EgressOnlyInternetGateway {..}
    = EgressOnlyInternetGateway {tags = Prelude.pure newValue, ..}
instance Property "VpcId" EgressOnlyInternetGateway where
  type PropertyType "VpcId" EgressOnlyInternetGateway = Value Prelude.Text
  set newValue EgressOnlyInternetGateway {..}
    = EgressOnlyInternetGateway {vpcId = newValue, ..}