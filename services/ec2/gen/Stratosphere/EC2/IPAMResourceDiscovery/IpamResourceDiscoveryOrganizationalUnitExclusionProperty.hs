module Stratosphere.EC2.IPAMResourceDiscovery.IpamResourceDiscoveryOrganizationalUnitExclusionProperty (
        IpamResourceDiscoveryOrganizationalUnitExclusionProperty(..),
        mkIpamResourceDiscoveryOrganizationalUnitExclusionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpamResourceDiscoveryOrganizationalUnitExclusionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipamresourcediscovery-ipamresourcediscoveryorganizationalunitexclusion.html>
    IpamResourceDiscoveryOrganizationalUnitExclusionProperty {haddock_workaround_ :: (),
                                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipamresourcediscovery-ipamresourcediscoveryorganizationalunitexclusion.html#cfn-ec2-ipamresourcediscovery-ipamresourcediscoveryorganizationalunitexclusion-organizationsentitypath>
                                                              organizationsEntityPath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpamResourceDiscoveryOrganizationalUnitExclusionProperty ::
  Value Prelude.Text
  -> IpamResourceDiscoveryOrganizationalUnitExclusionProperty
mkIpamResourceDiscoveryOrganizationalUnitExclusionProperty
  organizationsEntityPath
  = IpamResourceDiscoveryOrganizationalUnitExclusionProperty
      {haddock_workaround_ = (),
       organizationsEntityPath = organizationsEntityPath}
instance ToResourceProperties IpamResourceDiscoveryOrganizationalUnitExclusionProperty where
  toResourceProperties
    IpamResourceDiscoveryOrganizationalUnitExclusionProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMResourceDiscovery.IpamResourceDiscoveryOrganizationalUnitExclusion",
         supportsTags = Prelude.False,
         properties = ["OrganizationsEntityPath"
                         JSON..= organizationsEntityPath]}
instance JSON.ToJSON IpamResourceDiscoveryOrganizationalUnitExclusionProperty where
  toJSON
    IpamResourceDiscoveryOrganizationalUnitExclusionProperty {..}
    = JSON.object
        ["OrganizationsEntityPath" JSON..= organizationsEntityPath]
instance Property "OrganizationsEntityPath" IpamResourceDiscoveryOrganizationalUnitExclusionProperty where
  type PropertyType "OrganizationsEntityPath" IpamResourceDiscoveryOrganizationalUnitExclusionProperty = Value Prelude.Text
  set
    newValue
    IpamResourceDiscoveryOrganizationalUnitExclusionProperty {..}
    = IpamResourceDiscoveryOrganizationalUnitExclusionProperty
        {organizationsEntityPath = newValue, ..}