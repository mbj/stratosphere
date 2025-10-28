module Stratosphere.EC2.EIP (
        EIP(..), mkEIP
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EIP
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html>
    EIP {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html#cfn-ec2-eip-address>
         address :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html#cfn-ec2-eip-domain>
         domain :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html#cfn-ec2-eip-instanceid>
         instanceId :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html#cfn-ec2-eip-ipampoolid>
         ipamPoolId :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html#cfn-ec2-eip-networkbordergroup>
         networkBorderGroup :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html#cfn-ec2-eip-publicipv4pool>
         publicIpv4Pool :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html#cfn-ec2-eip-tags>
         tags :: (Prelude.Maybe [Tag]),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-eip.html#cfn-ec2-eip-transferaddress>
         transferAddress :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEIP :: EIP
mkEIP
  = EIP
      {haddock_workaround_ = (), address = Prelude.Nothing,
       domain = Prelude.Nothing, instanceId = Prelude.Nothing,
       ipamPoolId = Prelude.Nothing, networkBorderGroup = Prelude.Nothing,
       publicIpv4Pool = Prelude.Nothing, tags = Prelude.Nothing,
       transferAddress = Prelude.Nothing}
instance ToResourceProperties EIP where
  toResourceProperties EIP {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EIP", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "Domain" Prelude.<$> domain,
                            (JSON..=) "InstanceId" Prelude.<$> instanceId,
                            (JSON..=) "IpamPoolId" Prelude.<$> ipamPoolId,
                            (JSON..=) "NetworkBorderGroup" Prelude.<$> networkBorderGroup,
                            (JSON..=) "PublicIpv4Pool" Prelude.<$> publicIpv4Pool,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TransferAddress" Prelude.<$> transferAddress])}
instance JSON.ToJSON EIP where
  toJSON EIP {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "Domain" Prelude.<$> domain,
               (JSON..=) "InstanceId" Prelude.<$> instanceId,
               (JSON..=) "IpamPoolId" Prelude.<$> ipamPoolId,
               (JSON..=) "NetworkBorderGroup" Prelude.<$> networkBorderGroup,
               (JSON..=) "PublicIpv4Pool" Prelude.<$> publicIpv4Pool,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TransferAddress" Prelude.<$> transferAddress]))
instance Property "Address" EIP where
  type PropertyType "Address" EIP = Value Prelude.Text
  set newValue EIP {..} = EIP {address = Prelude.pure newValue, ..}
instance Property "Domain" EIP where
  type PropertyType "Domain" EIP = Value Prelude.Text
  set newValue EIP {..} = EIP {domain = Prelude.pure newValue, ..}
instance Property "InstanceId" EIP where
  type PropertyType "InstanceId" EIP = Value Prelude.Text
  set newValue EIP {..}
    = EIP {instanceId = Prelude.pure newValue, ..}
instance Property "IpamPoolId" EIP where
  type PropertyType "IpamPoolId" EIP = Value Prelude.Text
  set newValue EIP {..}
    = EIP {ipamPoolId = Prelude.pure newValue, ..}
instance Property "NetworkBorderGroup" EIP where
  type PropertyType "NetworkBorderGroup" EIP = Value Prelude.Text
  set newValue EIP {..}
    = EIP {networkBorderGroup = Prelude.pure newValue, ..}
instance Property "PublicIpv4Pool" EIP where
  type PropertyType "PublicIpv4Pool" EIP = Value Prelude.Text
  set newValue EIP {..}
    = EIP {publicIpv4Pool = Prelude.pure newValue, ..}
instance Property "Tags" EIP where
  type PropertyType "Tags" EIP = [Tag]
  set newValue EIP {..} = EIP {tags = Prelude.pure newValue, ..}
instance Property "TransferAddress" EIP where
  type PropertyType "TransferAddress" EIP = Value Prelude.Text
  set newValue EIP {..}
    = EIP {transferAddress = Prelude.pure newValue, ..}