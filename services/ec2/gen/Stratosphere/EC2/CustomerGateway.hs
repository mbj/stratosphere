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
  = CustomerGateway {bgpAsn :: (Value Prelude.Integer),
                     deviceName :: (Prelude.Maybe (Value Prelude.Text)),
                     ipAddress :: (Value Prelude.Text),
                     tags :: (Prelude.Maybe [Tag]),
                     type' :: (Value Prelude.Text)}
mkCustomerGateway ::
  Value Prelude.Integer
  -> Value Prelude.Text -> Value Prelude.Text -> CustomerGateway
mkCustomerGateway bgpAsn ipAddress type'
  = CustomerGateway
      {bgpAsn = bgpAsn, ipAddress = ipAddress, type' = type',
       deviceName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CustomerGateway where
  toResourceProperties CustomerGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CustomerGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BgpAsn" JSON..= bgpAsn, "IpAddress" JSON..= ipAddress,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DeviceName" Prelude.<$> deviceName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomerGateway where
  toJSON CustomerGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BgpAsn" JSON..= bgpAsn, "IpAddress" JSON..= ipAddress,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DeviceName" Prelude.<$> deviceName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BgpAsn" CustomerGateway where
  type PropertyType "BgpAsn" CustomerGateway = Value Prelude.Integer
  set newValue CustomerGateway {..}
    = CustomerGateway {bgpAsn = newValue, ..}
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