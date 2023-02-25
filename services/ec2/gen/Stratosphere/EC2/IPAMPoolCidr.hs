module Stratosphere.EC2.IPAMPoolCidr (
        IPAMPoolCidr(..), mkIPAMPoolCidr
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPAMPoolCidr
  = IPAMPoolCidr {cidr :: (Prelude.Maybe (Value Prelude.Text)),
                  ipamPoolId :: (Value Prelude.Text),
                  netmaskLength :: (Prelude.Maybe (Value Prelude.Integer))}
mkIPAMPoolCidr :: Value Prelude.Text -> IPAMPoolCidr
mkIPAMPoolCidr ipamPoolId
  = IPAMPoolCidr
      {ipamPoolId = ipamPoolId, cidr = Prelude.Nothing,
       netmaskLength = Prelude.Nothing}
instance ToResourceProperties IPAMPoolCidr where
  toResourceProperties IPAMPoolCidr {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMPoolCidr",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpamPoolId" JSON..= ipamPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "Cidr" Prelude.<$> cidr,
                               (JSON..=) "NetmaskLength" Prelude.<$> netmaskLength]))}
instance JSON.ToJSON IPAMPoolCidr where
  toJSON IPAMPoolCidr {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpamPoolId" JSON..= ipamPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "Cidr" Prelude.<$> cidr,
                  (JSON..=) "NetmaskLength" Prelude.<$> netmaskLength])))
instance Property "Cidr" IPAMPoolCidr where
  type PropertyType "Cidr" IPAMPoolCidr = Value Prelude.Text
  set newValue IPAMPoolCidr {..}
    = IPAMPoolCidr {cidr = Prelude.pure newValue, ..}
instance Property "IpamPoolId" IPAMPoolCidr where
  type PropertyType "IpamPoolId" IPAMPoolCidr = Value Prelude.Text
  set newValue IPAMPoolCidr {..}
    = IPAMPoolCidr {ipamPoolId = newValue, ..}
instance Property "NetmaskLength" IPAMPoolCidr where
  type PropertyType "NetmaskLength" IPAMPoolCidr = Value Prelude.Integer
  set newValue IPAMPoolCidr {..}
    = IPAMPoolCidr {netmaskLength = Prelude.pure newValue, ..}