module Stratosphere.SecurityHub.Insight.IpFilterProperty (
        IpFilterProperty(..), mkIpFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpFilterProperty
  = IpFilterProperty {cidr :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpFilterProperty :: Value Prelude.Text -> IpFilterProperty
mkIpFilterProperty cidr = IpFilterProperty {cidr = cidr}
instance ToResourceProperties IpFilterProperty where
  toResourceProperties IpFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Insight.IpFilter",
         supportsTags = Prelude.False, properties = ["Cidr" JSON..= cidr]}
instance JSON.ToJSON IpFilterProperty where
  toJSON IpFilterProperty {..} = JSON.object ["Cidr" JSON..= cidr]
instance Property "Cidr" IpFilterProperty where
  type PropertyType "Cidr" IpFilterProperty = Value Prelude.Text
  set newValue IpFilterProperty {}
    = IpFilterProperty {cidr = newValue, ..}