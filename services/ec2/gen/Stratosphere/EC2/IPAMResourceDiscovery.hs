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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamresourcediscovery.html>
    IPAMResourceDiscovery {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamresourcediscovery.html#cfn-ec2-ipamresourcediscovery-description>
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamresourcediscovery.html#cfn-ec2-ipamresourcediscovery-operatingregions>
                           operatingRegions :: (Prelude.Maybe [IpamOperatingRegionProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamresourcediscovery.html#cfn-ec2-ipamresourcediscovery-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPAMResourceDiscovery :: IPAMResourceDiscovery
mkIPAMResourceDiscovery
  = IPAMResourceDiscovery
      {haddock_workaround_ = (), description = Prelude.Nothing,
       operatingRegions = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties IPAMResourceDiscovery where
  toResourceProperties IPAMResourceDiscovery {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMResourceDiscovery",
         supportsTags = Prelude.True,
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