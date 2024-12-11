module Stratosphere.MediaLive.Network.IpPoolProperty (
        IpPoolProperty(..), mkIpPoolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpPoolProperty
  = IpPoolProperty {cidr :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpPoolProperty :: IpPoolProperty
mkIpPoolProperty = IpPoolProperty {cidr = Prelude.Nothing}
instance ToResourceProperties IpPoolProperty where
  toResourceProperties IpPoolProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Network.IpPool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Cidr" Prelude.<$> cidr])}
instance JSON.ToJSON IpPoolProperty where
  toJSON IpPoolProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Cidr" Prelude.<$> cidr]))
instance Property "Cidr" IpPoolProperty where
  type PropertyType "Cidr" IpPoolProperty = Value Prelude.Text
  set newValue IpPoolProperty {}
    = IpPoolProperty {cidr = Prelude.pure newValue, ..}