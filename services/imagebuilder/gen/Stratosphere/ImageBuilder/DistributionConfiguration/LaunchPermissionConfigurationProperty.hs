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
  = LaunchPermissionConfigurationProperty {organizationArns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                           organizationalUnitArns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                           userGroups :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                           userIds :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkLaunchPermissionConfigurationProperty ::
  LaunchPermissionConfigurationProperty
mkLaunchPermissionConfigurationProperty
  = LaunchPermissionConfigurationProperty
      {organizationArns = Prelude.Nothing,
       organizationalUnitArns = Prelude.Nothing,
       userGroups = Prelude.Nothing, userIds = Prelude.Nothing}
instance ToResourceProperties LaunchPermissionConfigurationProperty where
  toResourceProperties LaunchPermissionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.LaunchPermissionConfiguration",
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
  type PropertyType "OrganizationArns" LaunchPermissionConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue LaunchPermissionConfigurationProperty {..}
    = LaunchPermissionConfigurationProperty
        {organizationArns = Prelude.pure newValue, ..}
instance Property "OrganizationalUnitArns" LaunchPermissionConfigurationProperty where
  type PropertyType "OrganizationalUnitArns" LaunchPermissionConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue LaunchPermissionConfigurationProperty {..}
    = LaunchPermissionConfigurationProperty
        {organizationalUnitArns = Prelude.pure newValue, ..}
instance Property "UserGroups" LaunchPermissionConfigurationProperty where
  type PropertyType "UserGroups" LaunchPermissionConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue LaunchPermissionConfigurationProperty {..}
    = LaunchPermissionConfigurationProperty
        {userGroups = Prelude.pure newValue, ..}
instance Property "UserIds" LaunchPermissionConfigurationProperty where
  type PropertyType "UserIds" LaunchPermissionConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue LaunchPermissionConfigurationProperty {..}
    = LaunchPermissionConfigurationProperty
        {userIds = Prelude.pure newValue, ..}