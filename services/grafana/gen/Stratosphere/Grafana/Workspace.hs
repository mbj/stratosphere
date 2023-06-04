module Stratosphere.Grafana.Workspace (
        module Exports, Workspace(..), mkWorkspace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Grafana.Workspace.NetworkAccessControlProperty as Exports
import {-# SOURCE #-} Stratosphere.Grafana.Workspace.SamlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Grafana.Workspace.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Workspace
  = Workspace {accountAccessType :: (Value Prelude.Text),
               authenticationProviders :: (ValueList Prelude.Text),
               clientToken :: (Prelude.Maybe (Value Prelude.Text)),
               dataSources :: (Prelude.Maybe (ValueList Prelude.Text)),
               description :: (Prelude.Maybe (Value Prelude.Text)),
               grafanaVersion :: (Prelude.Maybe (Value Prelude.Text)),
               name :: (Prelude.Maybe (Value Prelude.Text)),
               networkAccessControl :: (Prelude.Maybe NetworkAccessControlProperty),
               notificationDestinations :: (Prelude.Maybe (ValueList Prelude.Text)),
               organizationRoleName :: (Prelude.Maybe (Value Prelude.Text)),
               organizationalUnits :: (Prelude.Maybe (ValueList Prelude.Text)),
               permissionType :: (Value Prelude.Text),
               roleArn :: (Prelude.Maybe (Value Prelude.Text)),
               samlConfiguration :: (Prelude.Maybe SamlConfigurationProperty),
               stackSetName :: (Prelude.Maybe (Value Prelude.Text)),
               vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
mkWorkspace ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> Workspace
mkWorkspace
  accountAccessType
  authenticationProviders
  permissionType
  = Workspace
      {accountAccessType = accountAccessType,
       authenticationProviders = authenticationProviders,
       permissionType = permissionType, clientToken = Prelude.Nothing,
       dataSources = Prelude.Nothing, description = Prelude.Nothing,
       grafanaVersion = Prelude.Nothing, name = Prelude.Nothing,
       networkAccessControl = Prelude.Nothing,
       notificationDestinations = Prelude.Nothing,
       organizationRoleName = Prelude.Nothing,
       organizationalUnits = Prelude.Nothing, roleArn = Prelude.Nothing,
       samlConfiguration = Prelude.Nothing,
       stackSetName = Prelude.Nothing, vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties Workspace where
  toResourceProperties Workspace {..}
    = ResourceProperties
        {awsType = "AWS::Grafana::Workspace", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountAccessType" JSON..= accountAccessType,
                            "AuthenticationProviders" JSON..= authenticationProviders,
                            "PermissionType" JSON..= permissionType]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                               (JSON..=) "DataSources" Prelude.<$> dataSources,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GrafanaVersion" Prelude.<$> grafanaVersion,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "NetworkAccessControl" Prelude.<$> networkAccessControl,
                               (JSON..=) "NotificationDestinations"
                                 Prelude.<$> notificationDestinations,
                               (JSON..=) "OrganizationRoleName" Prelude.<$> organizationRoleName,
                               (JSON..=) "OrganizationalUnits" Prelude.<$> organizationalUnits,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "SamlConfiguration" Prelude.<$> samlConfiguration,
                               (JSON..=) "StackSetName" Prelude.<$> stackSetName,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON Workspace where
  toJSON Workspace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountAccessType" JSON..= accountAccessType,
               "AuthenticationProviders" JSON..= authenticationProviders,
               "PermissionType" JSON..= permissionType]
              (Prelude.catMaybes
                 [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                  (JSON..=) "DataSources" Prelude.<$> dataSources,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GrafanaVersion" Prelude.<$> grafanaVersion,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "NetworkAccessControl" Prelude.<$> networkAccessControl,
                  (JSON..=) "NotificationDestinations"
                    Prelude.<$> notificationDestinations,
                  (JSON..=) "OrganizationRoleName" Prelude.<$> organizationRoleName,
                  (JSON..=) "OrganizationalUnits" Prelude.<$> organizationalUnits,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "SamlConfiguration" Prelude.<$> samlConfiguration,
                  (JSON..=) "StackSetName" Prelude.<$> stackSetName,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "AccountAccessType" Workspace where
  type PropertyType "AccountAccessType" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {accountAccessType = newValue, ..}
instance Property "AuthenticationProviders" Workspace where
  type PropertyType "AuthenticationProviders" Workspace = ValueList Prelude.Text
  set newValue Workspace {..}
    = Workspace {authenticationProviders = newValue, ..}
instance Property "ClientToken" Workspace where
  type PropertyType "ClientToken" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {clientToken = Prelude.pure newValue, ..}
instance Property "DataSources" Workspace where
  type PropertyType "DataSources" Workspace = ValueList Prelude.Text
  set newValue Workspace {..}
    = Workspace {dataSources = Prelude.pure newValue, ..}
instance Property "Description" Workspace where
  type PropertyType "Description" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {description = Prelude.pure newValue, ..}
instance Property "GrafanaVersion" Workspace where
  type PropertyType "GrafanaVersion" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {grafanaVersion = Prelude.pure newValue, ..}
instance Property "Name" Workspace where
  type PropertyType "Name" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {name = Prelude.pure newValue, ..}
instance Property "NetworkAccessControl" Workspace where
  type PropertyType "NetworkAccessControl" Workspace = NetworkAccessControlProperty
  set newValue Workspace {..}
    = Workspace {networkAccessControl = Prelude.pure newValue, ..}
instance Property "NotificationDestinations" Workspace where
  type PropertyType "NotificationDestinations" Workspace = ValueList Prelude.Text
  set newValue Workspace {..}
    = Workspace {notificationDestinations = Prelude.pure newValue, ..}
instance Property "OrganizationRoleName" Workspace where
  type PropertyType "OrganizationRoleName" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {organizationRoleName = Prelude.pure newValue, ..}
instance Property "OrganizationalUnits" Workspace where
  type PropertyType "OrganizationalUnits" Workspace = ValueList Prelude.Text
  set newValue Workspace {..}
    = Workspace {organizationalUnits = Prelude.pure newValue, ..}
instance Property "PermissionType" Workspace where
  type PropertyType "PermissionType" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {permissionType = newValue, ..}
instance Property "RoleArn" Workspace where
  type PropertyType "RoleArn" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {roleArn = Prelude.pure newValue, ..}
instance Property "SamlConfiguration" Workspace where
  type PropertyType "SamlConfiguration" Workspace = SamlConfigurationProperty
  set newValue Workspace {..}
    = Workspace {samlConfiguration = Prelude.pure newValue, ..}
instance Property "StackSetName" Workspace where
  type PropertyType "StackSetName" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {stackSetName = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" Workspace where
  type PropertyType "VpcConfiguration" Workspace = VpcConfigurationProperty
  set newValue Workspace {..}
    = Workspace {vpcConfiguration = Prelude.pure newValue, ..}