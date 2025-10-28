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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html>
    Workspace {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-accountaccesstype>
               accountAccessType :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-authenticationproviders>
               authenticationProviders :: (ValueList Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-clienttoken>
               clientToken :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-datasources>
               dataSources :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-grafanaversion>
               grafanaVersion :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-name>
               name :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-networkaccesscontrol>
               networkAccessControl :: (Prelude.Maybe NetworkAccessControlProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-notificationdestinations>
               notificationDestinations :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-organizationrolename>
               organizationRoleName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-organizationalunits>
               organizationalUnits :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-permissiontype>
               permissionType :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-pluginadminenabled>
               pluginAdminEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-rolearn>
               roleArn :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-samlconfiguration>
               samlConfiguration :: (Prelude.Maybe SamlConfigurationProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-stacksetname>
               stackSetName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-grafana-workspace.html#cfn-grafana-workspace-vpcconfiguration>
               vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkspace ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> Workspace
mkWorkspace
  accountAccessType
  authenticationProviders
  permissionType
  = Workspace
      {haddock_workaround_ = (), accountAccessType = accountAccessType,
       authenticationProviders = authenticationProviders,
       permissionType = permissionType, clientToken = Prelude.Nothing,
       dataSources = Prelude.Nothing, description = Prelude.Nothing,
       grafanaVersion = Prelude.Nothing, name = Prelude.Nothing,
       networkAccessControl = Prelude.Nothing,
       notificationDestinations = Prelude.Nothing,
       organizationRoleName = Prelude.Nothing,
       organizationalUnits = Prelude.Nothing,
       pluginAdminEnabled = Prelude.Nothing, roleArn = Prelude.Nothing,
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
                               (JSON..=) "PluginAdminEnabled" Prelude.<$> pluginAdminEnabled,
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
                  (JSON..=) "PluginAdminEnabled" Prelude.<$> pluginAdminEnabled,
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
instance Property "PluginAdminEnabled" Workspace where
  type PropertyType "PluginAdminEnabled" Workspace = Value Prelude.Bool
  set newValue Workspace {..}
    = Workspace {pluginAdminEnabled = Prelude.pure newValue, ..}
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