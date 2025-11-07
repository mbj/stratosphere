module Stratosphere.EC2.IPAM.IpamOrganizationalUnitExclusionProperty (
        IpamOrganizationalUnitExclusionProperty(..),
        mkIpamOrganizationalUnitExclusionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpamOrganizationalUnitExclusionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipam-ipamorganizationalunitexclusion.html>
    IpamOrganizationalUnitExclusionProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipam-ipamorganizationalunitexclusion.html#cfn-ec2-ipam-ipamorganizationalunitexclusion-organizationsentitypath>
                                             organizationsEntityPath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpamOrganizationalUnitExclusionProperty ::
  Value Prelude.Text -> IpamOrganizationalUnitExclusionProperty
mkIpamOrganizationalUnitExclusionProperty organizationsEntityPath
  = IpamOrganizationalUnitExclusionProperty
      {haddock_workaround_ = (),
       organizationsEntityPath = organizationsEntityPath}
instance ToResourceProperties IpamOrganizationalUnitExclusionProperty where
  toResourceProperties IpamOrganizationalUnitExclusionProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAM.IpamOrganizationalUnitExclusion",
         supportsTags = Prelude.False,
         properties = ["OrganizationsEntityPath"
                         JSON..= organizationsEntityPath]}
instance JSON.ToJSON IpamOrganizationalUnitExclusionProperty where
  toJSON IpamOrganizationalUnitExclusionProperty {..}
    = JSON.object
        ["OrganizationsEntityPath" JSON..= organizationsEntityPath]
instance Property "OrganizationsEntityPath" IpamOrganizationalUnitExclusionProperty where
  type PropertyType "OrganizationsEntityPath" IpamOrganizationalUnitExclusionProperty = Value Prelude.Text
  set newValue IpamOrganizationalUnitExclusionProperty {..}
    = IpamOrganizationalUnitExclusionProperty
        {organizationsEntityPath = newValue, ..}