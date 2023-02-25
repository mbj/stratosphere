module Stratosphere.Grafana.Workspace (
        module Exports, Workspace(..), mkWorkspace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Grafana.Workspace.SamlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Grafana.Workspace.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Workspace
  = Workspace {accountAccessType :: (Prelude.Maybe (Value Prelude.Text)),
               authenticationProviders :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
               clientToken :: (Prelude.Maybe (Value Prelude.Text)),
               dataSources :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
               description :: (Prelude.Maybe (Value Prelude.Text)),
               name :: (Prelude.Maybe (Value Prelude.Text)),
               notificationDestinations :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
               organizationRoleName :: (Prelude.Maybe (Value Prelude.Text)),
               organizationalUnits :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
               permissionType :: (Prelude.Maybe (Value Prelude.Text)),
               roleArn :: (Prelude.Maybe (Value Prelude.Text)),
               samlConfiguration :: (Prelude.Maybe SamlConfigurationProperty),
               stackSetName :: (Prelude.Maybe (Value Prelude.Text)),
               vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
mkWorkspace :: Workspace
mkWorkspace
  = Workspace
      {accountAccessType = Prelude.Nothing,
       authenticationProviders = Prelude.Nothing,
       clientToken = Prelude.Nothing, dataSources = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       notificationDestinations = Prelude.Nothing,
       organizationRoleName = Prelude.Nothing,
       organizationalUnits = Prelude.Nothing,
       permissionType = Prelude.Nothing, roleArn = Prelude.Nothing,
       samlConfiguration = Prelude.Nothing,
       stackSetName = Prelude.Nothing, vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties Workspace where
  toResourceProperties Workspace {..}
    = ResourceProperties
        {awsType = "AWS::Grafana::Workspace",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountAccessType" Prelude.<$> accountAccessType,
                            (JSON..=) "AuthenticationProviders"
                              Prelude.<$> authenticationProviders,
                            (JSON..=) "ClientToken" Prelude.<$> clientToken,
                            (JSON..=) "DataSources" Prelude.<$> dataSources,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "NotificationDestinations"
                              Prelude.<$> notificationDestinations,
                            (JSON..=) "OrganizationRoleName" Prelude.<$> organizationRoleName,
                            (JSON..=) "OrganizationalUnits" Prelude.<$> organizationalUnits,
                            (JSON..=) "PermissionType" Prelude.<$> permissionType,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "SamlConfiguration" Prelude.<$> samlConfiguration,
                            (JSON..=) "StackSetName" Prelude.<$> stackSetName,
                            (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])}
instance JSON.ToJSON Workspace where
  toJSON Workspace {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountAccessType" Prelude.<$> accountAccessType,
               (JSON..=) "AuthenticationProviders"
                 Prelude.<$> authenticationProviders,
               (JSON..=) "ClientToken" Prelude.<$> clientToken,
               (JSON..=) "DataSources" Prelude.<$> dataSources,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "NotificationDestinations"
                 Prelude.<$> notificationDestinations,
               (JSON..=) "OrganizationRoleName" Prelude.<$> organizationRoleName,
               (JSON..=) "OrganizationalUnits" Prelude.<$> organizationalUnits,
               (JSON..=) "PermissionType" Prelude.<$> permissionType,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "SamlConfiguration" Prelude.<$> samlConfiguration,
               (JSON..=) "StackSetName" Prelude.<$> stackSetName,
               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))
instance Property "AccountAccessType" Workspace where
  type PropertyType "AccountAccessType" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {accountAccessType = Prelude.pure newValue, ..}
instance Property "AuthenticationProviders" Workspace where
  type PropertyType "AuthenticationProviders" Workspace = ValueList (Value Prelude.Text)
  set newValue Workspace {..}
    = Workspace {authenticationProviders = Prelude.pure newValue, ..}
instance Property "ClientToken" Workspace where
  type PropertyType "ClientToken" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {clientToken = Prelude.pure newValue, ..}
instance Property "DataSources" Workspace where
  type PropertyType "DataSources" Workspace = ValueList (Value Prelude.Text)
  set newValue Workspace {..}
    = Workspace {dataSources = Prelude.pure newValue, ..}
instance Property "Description" Workspace where
  type PropertyType "Description" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {description = Prelude.pure newValue, ..}
instance Property "Name" Workspace where
  type PropertyType "Name" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {name = Prelude.pure newValue, ..}
instance Property "NotificationDestinations" Workspace where
  type PropertyType "NotificationDestinations" Workspace = ValueList (Value Prelude.Text)
  set newValue Workspace {..}
    = Workspace {notificationDestinations = Prelude.pure newValue, ..}
instance Property "OrganizationRoleName" Workspace where
  type PropertyType "OrganizationRoleName" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {organizationRoleName = Prelude.pure newValue, ..}
instance Property "OrganizationalUnits" Workspace where
  type PropertyType "OrganizationalUnits" Workspace = ValueList (Value Prelude.Text)
  set newValue Workspace {..}
    = Workspace {organizationalUnits = Prelude.pure newValue, ..}
instance Property "PermissionType" Workspace where
  type PropertyType "PermissionType" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {permissionType = Prelude.pure newValue, ..}
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