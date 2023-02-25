module Stratosphere.EC2.IPAMResourceDiscovery (
        module Exports, IPAMResourceDiscovery(..), mkIPAMResourceDiscovery
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.IPAMResourceDiscovery.IpamOperatingRegionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPAMResourceDiscovery
  = IPAMResourceDiscovery {description :: (Prelude.Maybe (Value Prelude.Text)),
                           operatingRegions :: (Prelude.Maybe [IpamOperatingRegionProperty]),
                           tags :: (Prelude.Maybe [Tag])}
mkIPAMResourceDiscovery :: IPAMResourceDiscovery
mkIPAMResourceDiscovery
  = IPAMResourceDiscovery
      {description = Prelude.Nothing, operatingRegions = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IPAMResourceDiscovery where
  toResourceProperties IPAMResourceDiscovery {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMResourceDiscovery",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "OperatingRegions" Prelude.<$> operatingRegions,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON IPAMResourceDiscovery where
  toJSON IPAMResourceDiscovery {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "OperatingRegions" Prelude.<$> operatingRegions,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" IPAMResourceDiscovery where
  type PropertyType "Description" IPAMResourceDiscovery = Value Prelude.Text
  set newValue IPAMResourceDiscovery {..}
    = IPAMResourceDiscovery {description = Prelude.pure newValue, ..}
instance Property "OperatingRegions" IPAMResourceDiscovery where
  type PropertyType "OperatingRegions" IPAMResourceDiscovery = [IpamOperatingRegionProperty]
  set newValue IPAMResourceDiscovery {..}
    = IPAMResourceDiscovery
        {operatingRegions = Prelude.pure newValue, ..}
instance Property "Tags" IPAMResourceDiscovery where
  type PropertyType "Tags" IPAMResourceDiscovery = [Tag]
  set newValue IPAMResourceDiscovery {..}
    = IPAMResourceDiscovery {tags = Prelude.pure newValue, ..}