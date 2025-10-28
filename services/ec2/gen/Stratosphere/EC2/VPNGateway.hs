module Stratosphere.EC2.VPNGateway (
        VPNGateway(..), mkVPNGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VPNGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpngateway.html>
    VPNGateway {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpngateway.html#cfn-ec2-vpngateway-amazonsideasn>
                amazonSideAsn :: (Prelude.Maybe (Value Prelude.Integer)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpngateway.html#cfn-ec2-vpngateway-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpngateway.html#cfn-ec2-vpngateway-type>
                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPNGateway :: Value Prelude.Text -> VPNGateway
mkVPNGateway type'
  = VPNGateway
      {haddock_workaround_ = (), type' = type',
       amazonSideAsn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VPNGateway where
  toResourceProperties VPNGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNGateway", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AmazonSideAsn" Prelude.<$> amazonSideAsn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VPNGateway where
  toJSON VPNGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AmazonSideAsn" Prelude.<$> amazonSideAsn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AmazonSideAsn" VPNGateway where
  type PropertyType "AmazonSideAsn" VPNGateway = Value Prelude.Integer
  set newValue VPNGateway {..}
    = VPNGateway {amazonSideAsn = Prelude.pure newValue, ..}
instance Property "Tags" VPNGateway where
  type PropertyType "Tags" VPNGateway = [Tag]
  set newValue VPNGateway {..}
    = VPNGateway {tags = Prelude.pure newValue, ..}
instance Property "Type" VPNGateway where
  type PropertyType "Type" VPNGateway = Value Prelude.Text
  set newValue VPNGateway {..} = VPNGateway {type' = newValue, ..}