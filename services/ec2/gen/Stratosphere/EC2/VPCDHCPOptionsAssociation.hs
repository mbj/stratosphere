module Stratosphere.EC2.VPCDHCPOptionsAssociation (
        VPCDHCPOptionsAssociation(..), mkVPCDHCPOptionsAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCDHCPOptionsAssociation
  = VPCDHCPOptionsAssociation {dhcpOptionsId :: (Value Prelude.Text),
                               vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCDHCPOptionsAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> VPCDHCPOptionsAssociation
mkVPCDHCPOptionsAssociation dhcpOptionsId vpcId
  = VPCDHCPOptionsAssociation
      {dhcpOptionsId = dhcpOptionsId, vpcId = vpcId}
instance ToResourceProperties VPCDHCPOptionsAssociation where
  toResourceProperties VPCDHCPOptionsAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCDHCPOptionsAssociation",
         supportsTags = Prelude.False,
         properties = ["DhcpOptionsId" JSON..= dhcpOptionsId,
                       "VpcId" JSON..= vpcId]}
instance JSON.ToJSON VPCDHCPOptionsAssociation where
  toJSON VPCDHCPOptionsAssociation {..}
    = JSON.object
        ["DhcpOptionsId" JSON..= dhcpOptionsId, "VpcId" JSON..= vpcId]
instance Property "DhcpOptionsId" VPCDHCPOptionsAssociation where
  type PropertyType "DhcpOptionsId" VPCDHCPOptionsAssociation = Value Prelude.Text
  set newValue VPCDHCPOptionsAssociation {..}
    = VPCDHCPOptionsAssociation {dhcpOptionsId = newValue, ..}
instance Property "VpcId" VPCDHCPOptionsAssociation where
  type PropertyType "VpcId" VPCDHCPOptionsAssociation = Value Prelude.Text
  set newValue VPCDHCPOptionsAssociation {..}
    = VPCDHCPOptionsAssociation {vpcId = newValue, ..}