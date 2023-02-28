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
  = EIP {domain :: (Prelude.Maybe (Value Prelude.Text)),
         instanceId :: (Prelude.Maybe (Value Prelude.Text)),
         networkBorderGroup :: (Prelude.Maybe (Value Prelude.Text)),
         publicIpv4Pool :: (Prelude.Maybe (Value Prelude.Text)),
         tags :: (Prelude.Maybe [Tag]),
         transferAddress :: (Prelude.Maybe (Value Prelude.Text))}
mkEIP :: EIP
mkEIP
  = EIP
      {domain = Prelude.Nothing, instanceId = Prelude.Nothing,
       networkBorderGroup = Prelude.Nothing,
       publicIpv4Pool = Prelude.Nothing, tags = Prelude.Nothing,
       transferAddress = Prelude.Nothing}
instance ToResourceProperties EIP where
  toResourceProperties EIP {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EIP", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Domain" Prelude.<$> domain,
                            (JSON..=) "InstanceId" Prelude.<$> instanceId,
                            (JSON..=) "NetworkBorderGroup" Prelude.<$> networkBorderGroup,
                            (JSON..=) "PublicIpv4Pool" Prelude.<$> publicIpv4Pool,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TransferAddress" Prelude.<$> transferAddress])}
instance JSON.ToJSON EIP where
  toJSON EIP {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Domain" Prelude.<$> domain,
               (JSON..=) "InstanceId" Prelude.<$> instanceId,
               (JSON..=) "NetworkBorderGroup" Prelude.<$> networkBorderGroup,
               (JSON..=) "PublicIpv4Pool" Prelude.<$> publicIpv4Pool,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TransferAddress" Prelude.<$> transferAddress]))
instance Property "Domain" EIP where
  type PropertyType "Domain" EIP = Value Prelude.Text
  set newValue EIP {..} = EIP {domain = Prelude.pure newValue, ..}
instance Property "InstanceId" EIP where
  type PropertyType "InstanceId" EIP = Value Prelude.Text
  set newValue EIP {..}
    = EIP {instanceId = Prelude.pure newValue, ..}
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