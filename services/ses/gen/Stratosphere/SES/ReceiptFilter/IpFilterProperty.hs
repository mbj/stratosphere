module Stratosphere.SES.ReceiptFilter.IpFilterProperty (
        IpFilterProperty(..), mkIpFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html>
    IpFilterProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-cidr>
                      cidr :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-policy>
                      policy :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> IpFilterProperty
mkIpFilterProperty cidr policy
  = IpFilterProperty
      {haddock_workaround_ = (), cidr = cidr, policy = policy}
instance ToResourceProperties IpFilterProperty where
  toResourceProperties IpFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptFilter.IpFilter",
         supportsTags = Prelude.False,
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