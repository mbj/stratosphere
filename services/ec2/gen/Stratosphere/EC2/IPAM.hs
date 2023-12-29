module Stratosphere.EC2.IPAM (
        module Exports, IPAM(..), mkIPAM
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.IPAM.IpamOperatingRegionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPAM
  = IPAM {defaultResourceDiscoveryAssociationId :: (Prelude.Maybe (Value Prelude.Text)),
          defaultResourceDiscoveryId :: (Prelude.Maybe (Value Prelude.Text)),
          description :: (Prelude.Maybe (Value Prelude.Text)),
          operatingRegions :: (Prelude.Maybe [IpamOperatingRegionProperty]),
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPAM :: IPAM
mkIPAM
  = IPAM
      {defaultResourceDiscoveryAssociationId = Prelude.Nothing,
       defaultResourceDiscoveryId = Prelude.Nothing,
       description = Prelude.Nothing, operatingRegions = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IPAM where
  toResourceProperties IPAM {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAM", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultResourceDiscoveryAssociationId"
                              Prelude.<$> defaultResourceDiscoveryAssociationId,
                            (JSON..=) "DefaultResourceDiscoveryId"
                              Prelude.<$> defaultResourceDiscoveryId,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "OperatingRegions" Prelude.<$> operatingRegions,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON IPAM where
  toJSON IPAM {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultResourceDiscoveryAssociationId"
                 Prelude.<$> defaultResourceDiscoveryAssociationId,
               (JSON..=) "DefaultResourceDiscoveryId"
                 Prelude.<$> defaultResourceDiscoveryId,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "OperatingRegions" Prelude.<$> operatingRegions,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DefaultResourceDiscoveryAssociationId" IPAM where
  type PropertyType "DefaultResourceDiscoveryAssociationId" IPAM = Value Prelude.Text
  set newValue IPAM {..}
    = IPAM
        {defaultResourceDiscoveryAssociationId = Prelude.pure newValue, ..}
instance Property "DefaultResourceDiscoveryId" IPAM where
  type PropertyType "DefaultResourceDiscoveryId" IPAM = Value Prelude.Text
  set newValue IPAM {..}
    = IPAM {defaultResourceDiscoveryId = Prelude.pure newValue, ..}
instance Property "Description" IPAM where
  type PropertyType "Description" IPAM = Value Prelude.Text
  set newValue IPAM {..}
    = IPAM {description = Prelude.pure newValue, ..}
instance Property "OperatingRegions" IPAM where
  type PropertyType "OperatingRegions" IPAM = [IpamOperatingRegionProperty]
  set newValue IPAM {..}
    = IPAM {operatingRegions = Prelude.pure newValue, ..}
instance Property "Tags" IPAM where
  type PropertyType "Tags" IPAM = [Tag]
  set newValue IPAM {..} = IPAM {tags = Prelude.pure newValue, ..}