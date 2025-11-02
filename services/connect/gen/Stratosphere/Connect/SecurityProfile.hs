module Stratosphere.Connect.SecurityProfile (
        module Exports, SecurityProfile(..), mkSecurityProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.SecurityProfile.ApplicationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SecurityProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html>
    SecurityProfile {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-allowedaccesscontrolhierarchygroupid>
                     allowedAccessControlHierarchyGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-allowedaccesscontroltags>
                     allowedAccessControlTags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-applications>
                     applications :: (Prelude.Maybe [ApplicationProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-hierarchyrestrictedresources>
                     hierarchyRestrictedResources :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-instancearn>
                     instanceArn :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-permissions>
                     permissions :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-securityprofilename>
                     securityProfileName :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-tagrestrictedresources>
                     tagRestrictedResources :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-securityprofile.html#cfn-connect-securityprofile-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityProfile ::
  Value Prelude.Text -> Value Prelude.Text -> SecurityProfile
mkSecurityProfile instanceArn securityProfileName
  = SecurityProfile
      {haddock_workaround_ = (), instanceArn = instanceArn,
       securityProfileName = securityProfileName,
       allowedAccessControlHierarchyGroupId = Prelude.Nothing,
       allowedAccessControlTags = Prelude.Nothing,
       applications = Prelude.Nothing, description = Prelude.Nothing,
       hierarchyRestrictedResources = Prelude.Nothing,
       permissions = Prelude.Nothing,
       tagRestrictedResources = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SecurityProfile where
  toResourceProperties SecurityProfile {..}
    = ResourceProperties
        {awsType = "AWS::Connect::SecurityProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn,
                            "SecurityProfileName" JSON..= securityProfileName]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedAccessControlHierarchyGroupId"
                                 Prelude.<$> allowedAccessControlHierarchyGroupId,
                               (JSON..=) "AllowedAccessControlTags"
                                 Prelude.<$> allowedAccessControlTags,
                               (JSON..=) "Applications" Prelude.<$> applications,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "HierarchyRestrictedResources"
                                 Prelude.<$> hierarchyRestrictedResources,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "TagRestrictedResources"
                                 Prelude.<$> tagRestrictedResources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SecurityProfile where
  toJSON SecurityProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn,
               "SecurityProfileName" JSON..= securityProfileName]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedAccessControlHierarchyGroupId"
                    Prelude.<$> allowedAccessControlHierarchyGroupId,
                  (JSON..=) "AllowedAccessControlTags"
                    Prelude.<$> allowedAccessControlTags,
                  (JSON..=) "Applications" Prelude.<$> applications,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "HierarchyRestrictedResources"
                    Prelude.<$> hierarchyRestrictedResources,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "TagRestrictedResources"
                    Prelude.<$> tagRestrictedResources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AllowedAccessControlHierarchyGroupId" SecurityProfile where
  type PropertyType "AllowedAccessControlHierarchyGroupId" SecurityProfile = Value Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile
        {allowedAccessControlHierarchyGroupId = Prelude.pure newValue, ..}
instance Property "AllowedAccessControlTags" SecurityProfile where
  type PropertyType "AllowedAccessControlTags" SecurityProfile = [Tag]
  set newValue SecurityProfile {..}
    = SecurityProfile
        {allowedAccessControlTags = Prelude.pure newValue, ..}
instance Property "Applications" SecurityProfile where
  type PropertyType "Applications" SecurityProfile = [ApplicationProperty]
  set newValue SecurityProfile {..}
    = SecurityProfile {applications = Prelude.pure newValue, ..}
instance Property "Description" SecurityProfile where
  type PropertyType "Description" SecurityProfile = Value Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile {description = Prelude.pure newValue, ..}
instance Property "HierarchyRestrictedResources" SecurityProfile where
  type PropertyType "HierarchyRestrictedResources" SecurityProfile = ValueList Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile
        {hierarchyRestrictedResources = Prelude.pure newValue, ..}
instance Property "InstanceArn" SecurityProfile where
  type PropertyType "InstanceArn" SecurityProfile = Value Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile {instanceArn = newValue, ..}
instance Property "Permissions" SecurityProfile where
  type PropertyType "Permissions" SecurityProfile = ValueList Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile {permissions = Prelude.pure newValue, ..}
instance Property "SecurityProfileName" SecurityProfile where
  type PropertyType "SecurityProfileName" SecurityProfile = Value Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile {securityProfileName = newValue, ..}
instance Property "TagRestrictedResources" SecurityProfile where
  type PropertyType "TagRestrictedResources" SecurityProfile = ValueList Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile
        {tagRestrictedResources = Prelude.pure newValue, ..}
instance Property "Tags" SecurityProfile where
  type PropertyType "Tags" SecurityProfile = [Tag]
  set newValue SecurityProfile {..}
    = SecurityProfile {tags = Prelude.pure newValue, ..}