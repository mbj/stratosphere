module Stratosphere.EC2.IPAM.IpamOperatingRegionProperty (
        IpamOperatingRegionProperty(..), mkIpamOperatingRegionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpamOperatingRegionProperty
  = IpamOperatingRegionProperty {regionName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpamOperatingRegionProperty ::
  Value Prelude.Text -> IpamOperatingRegionProperty
mkIpamOperatingRegionProperty regionName
  = IpamOperatingRegionProperty {regionName = regionName}
instance ToResourceProperties IpamOperatingRegionProperty where
  toResourceProperties IpamOperatingRegionProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAM.IpamOperatingRegion",
         supportsTags = Prelude.False,
         properties = ["RegionName" JSON..= regionName]}
instance JSON.ToJSON IpamOperatingRegionProperty where
  toJSON IpamOperatingRegionProperty {..}
    = JSON.object ["RegionName" JSON..= regionName]
instance Property "RegionName" IpamOperatingRegionProperty where
  type PropertyType "RegionName" IpamOperatingRegionProperty = Value Prelude.Text
  set newValue IpamOperatingRegionProperty {}
    = IpamOperatingRegionProperty {regionName = newValue, ..}