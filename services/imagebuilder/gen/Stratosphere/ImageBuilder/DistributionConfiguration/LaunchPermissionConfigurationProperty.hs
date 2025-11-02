module Stratosphere.ImageBuilder.DistributionConfiguration.LaunchPermissionConfigurationProperty (
        LaunchPermissionConfigurationProperty(..),
        mkLaunchPermissionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchPermissionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchpermissionconfiguration.html>
    LaunchPermissionConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchpermissionconfiguration.html#cfn-imagebuilder-distributionconfiguration-launchpermissionconfiguration-organizationarns>
                                           organizationArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchpermissionconfiguration.html#cfn-imagebuilder-distributionconfiguration-launchpermissionconfiguration-organizationalunitarns>
                                           organizationalUnitArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchpermissionconfiguration.html#cfn-imagebuilder-distributionconfiguration-launchpermissionconfiguration-usergroups>
                                           userGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-launchpermissionconfiguration.html#cfn-imagebuilder-distributionconfiguration-launchpermissionconfiguration-userids>
                                           userIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchPermissionConfigurationProperty ::
  LaunchPermissionConfigurationProperty
mkLaunchPermissionConfigurationProperty
  = LaunchPermissionConfigurationProperty
      {haddock_workaround_ = (), organizationArns = Prelude.Nothing,
       organizationalUnitArns = Prelude.Nothing,
       userGroups = Prelude.Nothing, userIds = Prelude.Nothing}
instance ToResourceProperties LaunchPermissionConfigurationProperty where
  toResourceProperties LaunchPermissionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.LaunchPermissionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OrganizationArns" Prelude.<$> organizationArns,
                            (JSON..=) "OrganizationalUnitArns"
                              Prelude.<$> organizationalUnitArns,
                            (JSON..=) "UserGroups" Prelude.<$> userGroups,
                            (JSON..=) "UserIds" Prelude.<$> userIds])}
instance JSON.ToJSON LaunchPermissionConfigurationProperty where
  toJSON LaunchPermissionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OrganizationArns" Prelude.<$> organizationArns,
               (JSON..=) "OrganizationalUnitArns"
                 Prelude.<$> organizationalUnitArns,
               (JSON..=) "UserGroups" Prelude.<$> userGroups,
               (JSON..=) "UserIds" Prelude.<$> userIds]))
instance Property "OrganizationArns" LaunchPermissionConfigurationProperty where
  type PropertyType "OrganizationArns" LaunchPermissionConfigurationProperty = ValueList Prelude.Text
  set newValue LaunchPermissionConfigurationProperty {..}
    = LaunchPermissionConfigurationProperty
        {organizationArns = Prelude.pure newValue, ..}
instance Property "OrganizationalUnitArns" LaunchPermissionConfigurationProperty where
  type PropertyType "OrganizationalUnitArns" LaunchPermissionConfigurationProperty = ValueList Prelude.Text
  set newValue LaunchPermissionConfigurationProperty {..}
    = LaunchPermissionConfigurationProperty
        {organizationalUnitArns = Prelude.pure newValue, ..}
instance Property "UserGroups" LaunchPermissionConfigurationProperty where
  type PropertyType "UserGroups" LaunchPermissionConfigurationProperty = ValueList Prelude.Text
  set newValue LaunchPermissionConfigurationProperty {..}
    = LaunchPermissionConfigurationProperty
        {userGroups = Prelude.pure newValue, ..}
instance Property "UserIds" LaunchPermissionConfigurationProperty where
  type PropertyType "UserIds" LaunchPermissionConfigurationProperty = ValueList Prelude.Text
  set newValue LaunchPermissionConfigurationProperty {..}
    = LaunchPermissionConfigurationProperty
        {userIds = Prelude.pure newValue, ..}