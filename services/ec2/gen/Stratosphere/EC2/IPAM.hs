module Stratosphere.EC2.IPAM (
        module Exports, IPAM(..), mkIPAM
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.IPAM.IpamOperatingRegionProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.IPAM.IpamOrganizationalUnitExclusionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPAM
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipam.html>
    IPAM {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipam.html#cfn-ec2-ipam-defaultresourcediscoveryorganizationalunitexclusions>
          defaultResourceDiscoveryOrganizationalUnitExclusions :: (Prelude.Maybe [IpamOrganizationalUnitExclusionProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipam.html#cfn-ec2-ipam-description>
          description :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipam.html#cfn-ec2-ipam-enableprivategua>
          enablePrivateGua :: (Prelude.Maybe (Value Prelude.Bool)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipam.html#cfn-ec2-ipam-meteredaccount>
          meteredAccount :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipam.html#cfn-ec2-ipam-operatingregions>
          operatingRegions :: (Prelude.Maybe [IpamOperatingRegionProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipam.html#cfn-ec2-ipam-tags>
          tags :: (Prelude.Maybe [Tag]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipam.html#cfn-ec2-ipam-tier>
          tier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPAM :: IPAM
mkIPAM
  = IPAM
      {haddock_workaround_ = (),
       defaultResourceDiscoveryOrganizationalUnitExclusions = Prelude.Nothing,
       description = Prelude.Nothing, enablePrivateGua = Prelude.Nothing,
       meteredAccount = Prelude.Nothing,
       operatingRegions = Prelude.Nothing, tags = Prelude.Nothing,
       tier = Prelude.Nothing}
instance ToResourceProperties IPAM where
  toResourceProperties IPAM {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAM", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultResourceDiscoveryOrganizationalUnitExclusions"
                              Prelude.<$> defaultResourceDiscoveryOrganizationalUnitExclusions,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "EnablePrivateGua" Prelude.<$> enablePrivateGua,
                            (JSON..=) "MeteredAccount" Prelude.<$> meteredAccount,
                            (JSON..=) "OperatingRegions" Prelude.<$> operatingRegions,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Tier" Prelude.<$> tier])}
instance JSON.ToJSON IPAM where
  toJSON IPAM {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultResourceDiscoveryOrganizationalUnitExclusions"
                 Prelude.<$> defaultResourceDiscoveryOrganizationalUnitExclusions,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "EnablePrivateGua" Prelude.<$> enablePrivateGua,
               (JSON..=) "MeteredAccount" Prelude.<$> meteredAccount,
               (JSON..=) "OperatingRegions" Prelude.<$> operatingRegions,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Tier" Prelude.<$> tier]))
instance Property "DefaultResourceDiscoveryOrganizationalUnitExclusions" IPAM where
  type PropertyType "DefaultResourceDiscoveryOrganizationalUnitExclusions" IPAM = [IpamOrganizationalUnitExclusionProperty]
  set newValue IPAM {..}
    = IPAM
        {defaultResourceDiscoveryOrganizationalUnitExclusions = Prelude.pure
                                                                  newValue,
         ..}
instance Property "Description" IPAM where
  type PropertyType "Description" IPAM = Value Prelude.Text
  set newValue IPAM {..}
    = IPAM {description = Prelude.pure newValue, ..}
instance Property "EnablePrivateGua" IPAM where
  type PropertyType "EnablePrivateGua" IPAM = Value Prelude.Bool
  set newValue IPAM {..}
    = IPAM {enablePrivateGua = Prelude.pure newValue, ..}
instance Property "MeteredAccount" IPAM where
  type PropertyType "MeteredAccount" IPAM = Value Prelude.Text
  set newValue IPAM {..}
    = IPAM {meteredAccount = Prelude.pure newValue, ..}
instance Property "OperatingRegions" IPAM where
  type PropertyType "OperatingRegions" IPAM = [IpamOperatingRegionProperty]
  set newValue IPAM {..}
    = IPAM {operatingRegions = Prelude.pure newValue, ..}
instance Property "Tags" IPAM where
  type PropertyType "Tags" IPAM = [Tag]
  set newValue IPAM {..} = IPAM {tags = Prelude.pure newValue, ..}
instance Property "Tier" IPAM where
  type PropertyType "Tier" IPAM = Value Prelude.Text
  set newValue IPAM {..} = IPAM {tier = Prelude.pure newValue, ..}