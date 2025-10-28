module Stratosphere.EC2.CustomerGateway (
        CustomerGateway(..), mkCustomerGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomerGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customergateway.html>
    CustomerGateway {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customergateway.html#cfn-ec2-customergateway-bgpasn>
                     bgpAsn :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customergateway.html#cfn-ec2-customergateway-bgpasnextended>
                     bgpAsnExtended :: (Prelude.Maybe (Value Prelude.Double)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customergateway.html#cfn-ec2-customergateway-certificatearn>
                     certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customergateway.html#cfn-ec2-customergateway-devicename>
                     deviceName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customergateway.html#cfn-ec2-customergateway-ipaddress>
                     ipAddress :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customergateway.html#cfn-ec2-customergateway-tags>
                     tags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customergateway.html#cfn-ec2-customergateway-type>
                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomerGateway ::
  Value Prelude.Text -> Value Prelude.Text -> CustomerGateway
mkCustomerGateway ipAddress type'
  = CustomerGateway
      {haddock_workaround_ = (), ipAddress = ipAddress, type' = type',
       bgpAsn = Prelude.Nothing, bgpAsnExtended = Prelude.Nothing,
       certificateArn = Prelude.Nothing, deviceName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CustomerGateway where
  toResourceProperties CustomerGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CustomerGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpAddress" JSON..= ipAddress, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "BgpAsn" Prelude.<$> bgpAsn,
                               (JSON..=) "BgpAsnExtended" Prelude.<$> bgpAsnExtended,
                               (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                               (JSON..=) "DeviceName" Prelude.<$> deviceName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomerGateway where
  toJSON CustomerGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpAddress" JSON..= ipAddress, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "BgpAsn" Prelude.<$> bgpAsn,
                  (JSON..=) "BgpAsnExtended" Prelude.<$> bgpAsnExtended,
                  (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                  (JSON..=) "DeviceName" Prelude.<$> deviceName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BgpAsn" CustomerGateway where
  type PropertyType "BgpAsn" CustomerGateway = Value Prelude.Integer
  set newValue CustomerGateway {..}
    = CustomerGateway {bgpAsn = Prelude.pure newValue, ..}
instance Property "BgpAsnExtended" CustomerGateway where
  type PropertyType "BgpAsnExtended" CustomerGateway = Value Prelude.Double
  set newValue CustomerGateway {..}
    = CustomerGateway {bgpAsnExtended = Prelude.pure newValue, ..}
instance Property "CertificateArn" CustomerGateway where
  type PropertyType "CertificateArn" CustomerGateway = Value Prelude.Text
  set newValue CustomerGateway {..}
    = CustomerGateway {certificateArn = Prelude.pure newValue, ..}
instance Property "DeviceName" CustomerGateway where
  type PropertyType "DeviceName" CustomerGateway = Value Prelude.Text
  set newValue CustomerGateway {..}
    = CustomerGateway {deviceName = Prelude.pure newValue, ..}
instance Property "IpAddress" CustomerGateway where
  type PropertyType "IpAddress" CustomerGateway = Value Prelude.Text
  set newValue CustomerGateway {..}
    = CustomerGateway {ipAddress = newValue, ..}
instance Property "Tags" CustomerGateway where
  type PropertyType "Tags" CustomerGateway = [Tag]
  set newValue CustomerGateway {..}
    = CustomerGateway {tags = Prelude.pure newValue, ..}
instance Property "Type" CustomerGateway where
  type PropertyType "Type" CustomerGateway = Value Prelude.Text
  set newValue CustomerGateway {..}
    = CustomerGateway {type' = newValue, ..}