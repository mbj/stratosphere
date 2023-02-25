module Stratosphere.SES.ReceiptFilter.IpFilterProperty (
        IpFilterProperty(..), mkIpFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpFilterProperty
  = IpFilterProperty {cidr :: (Value Prelude.Text),
                      policy :: (Value Prelude.Text)}
mkIpFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> IpFilterProperty
mkIpFilterProperty cidr policy
  = IpFilterProperty {cidr = cidr, policy = policy}
instance ToResourceProperties IpFilterProperty where
  toResourceProperties IpFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptFilter.IpFilter",
         properties = ["Cidr" JSON..= cidr, "Policy" JSON..= policy]}
instance JSON.ToJSON IpFilterProperty where
  toJSON IpFilterProperty {..}
    = JSON.object ["Cidr" JSON..= cidr, "Policy" JSON..= policy]
instance Property "Cidr" IpFilterProperty where
  type PropertyType "Cidr" IpFilterProperty = Value Prelude.Text
  set newValue IpFilterProperty {..}
    = IpFilterProperty {cidr = newValue, ..}
instance Property "Policy" IpFilterProperty where
  type PropertyType "Policy" IpFilterProperty = Value Prelude.Text
  set newValue IpFilterProperty {..}
    = IpFilterProperty {policy = newValue, ..}