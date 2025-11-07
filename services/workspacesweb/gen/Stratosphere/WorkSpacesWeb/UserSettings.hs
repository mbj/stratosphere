module Stratosphere.WorkSpacesWeb.UserSettings (
        module Exports, UserSettings(..), mkUserSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.UserSettings.CookieSynchronizationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.UserSettings.ToolbarConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data UserSettings
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html>
    UserSettings {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-additionalencryptioncontext>
                  additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-cookiesynchronizationconfiguration>
                  cookieSynchronizationConfiguration :: (Prelude.Maybe CookieSynchronizationConfigurationProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-copyallowed>
                  copyAllowed :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-customermanagedkey>
                  customerManagedKey :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-deeplinkallowed>
                  deepLinkAllowed :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-disconnecttimeoutinminutes>
                  disconnectTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-downloadallowed>
                  downloadAllowed :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-idledisconnecttimeoutinminutes>
                  idleDisconnectTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-pasteallowed>
                  pasteAllowed :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-printallowed>
                  printAllowed :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-tags>
                  tags :: (Prelude.Maybe [Tag]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-toolbarconfiguration>
                  toolbarConfiguration :: (Prelude.Maybe ToolbarConfigurationProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesweb-usersettings.html#cfn-workspacesweb-usersettings-uploadallowed>
                  uploadAllowed :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserSettings ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> UserSettings
mkUserSettings
  copyAllowed
  downloadAllowed
  pasteAllowed
  printAllowed
  uploadAllowed
  = UserSettings
      {haddock_workaround_ = (), copyAllowed = copyAllowed,
       downloadAllowed = downloadAllowed, pasteAllowed = pasteAllowed,
       printAllowed = printAllowed, uploadAllowed = uploadAllowed,
       additionalEncryptionContext = Prelude.Nothing,
       cookieSynchronizationConfiguration = Prelude.Nothing,
       customerManagedKey = Prelude.Nothing,
       deepLinkAllowed = Prelude.Nothing,
       disconnectTimeoutInMinutes = Prelude.Nothing,
       idleDisconnectTimeoutInMinutes = Prelude.Nothing,
       tags = Prelude.Nothing, toolbarConfiguration = Prelude.Nothing}
instance ToResourceProperties UserSettings where
  toResourceProperties UserSettings {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::UserSettings",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CopyAllowed" JSON..= copyAllowed,
                            "DownloadAllowed" JSON..= downloadAllowed,
                            "PasteAllowed" JSON..= pasteAllowed,
                            "PrintAllowed" JSON..= printAllowed,
                            "UploadAllowed" JSON..= uploadAllowed]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalEncryptionContext"
                                 Prelude.<$> additionalEncryptionContext,
                               (JSON..=) "CookieSynchronizationConfiguration"
                                 Prelude.<$> cookieSynchronizationConfiguration,
                               (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                               (JSON..=) "DeepLinkAllowed" Prelude.<$> deepLinkAllowed,
                               (JSON..=) "DisconnectTimeoutInMinutes"
                                 Prelude.<$> disconnectTimeoutInMinutes,
                               (JSON..=) "IdleDisconnectTimeoutInMinutes"
                                 Prelude.<$> idleDisconnectTimeoutInMinutes,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ToolbarConfiguration"
                                 Prelude.<$> toolbarConfiguration]))}
instance JSON.ToJSON UserSettings where
  toJSON UserSettings {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CopyAllowed" JSON..= copyAllowed,
               "DownloadAllowed" JSON..= downloadAllowed,
               "PasteAllowed" JSON..= pasteAllowed,
               "PrintAllowed" JSON..= printAllowed,
               "UploadAllowed" JSON..= uploadAllowed]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalEncryptionContext"
                    Prelude.<$> additionalEncryptionContext,
                  (JSON..=) "CookieSynchronizationConfiguration"
                    Prelude.<$> cookieSynchronizationConfiguration,
                  (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                  (JSON..=) "DeepLinkAllowed" Prelude.<$> deepLinkAllowed,
                  (JSON..=) "DisconnectTimeoutInMinutes"
                    Prelude.<$> disconnectTimeoutInMinutes,
                  (JSON..=) "IdleDisconnectTimeoutInMinutes"
                    Prelude.<$> idleDisconnectTimeoutInMinutes,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ToolbarConfiguration"
                    Prelude.<$> toolbarConfiguration])))
instance Property "AdditionalEncryptionContext" UserSettings where
  type PropertyType "AdditionalEncryptionContext" UserSettings = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue UserSettings {..}
    = UserSettings
        {additionalEncryptionContext = Prelude.pure newValue, ..}
instance Property "CookieSynchronizationConfiguration" UserSettings where
  type PropertyType "CookieSynchronizationConfiguration" UserSettings = CookieSynchronizationConfigurationProperty
  set newValue UserSettings {..}
    = UserSettings
        {cookieSynchronizationConfiguration = Prelude.pure newValue, ..}
instance Property "CopyAllowed" UserSettings where
  type PropertyType "CopyAllowed" UserSettings = Value Prelude.Text
  set newValue UserSettings {..}
    = UserSettings {copyAllowed = newValue, ..}
instance Property "CustomerManagedKey" UserSettings where
  type PropertyType "CustomerManagedKey" UserSettings = Value Prelude.Text
  set newValue UserSettings {..}
    = UserSettings {customerManagedKey = Prelude.pure newValue, ..}
instance Property "DeepLinkAllowed" UserSettings where
  type PropertyType "DeepLinkAllowed" UserSettings = Value Prelude.Text
  set newValue UserSettings {..}
    = UserSettings {deepLinkAllowed = Prelude.pure newValue, ..}
instance Property "DisconnectTimeoutInMinutes" UserSettings where
  type PropertyType "DisconnectTimeoutInMinutes" UserSettings = Value Prelude.Double
  set newValue UserSettings {..}
    = UserSettings
        {disconnectTimeoutInMinutes = Prelude.pure newValue, ..}
instance Property "DownloadAllowed" UserSettings where
  type PropertyType "DownloadAllowed" UserSettings = Value Prelude.Text
  set newValue UserSettings {..}
    = UserSettings {downloadAllowed = newValue, ..}
instance Property "IdleDisconnectTimeoutInMinutes" UserSettings where
  type PropertyType "IdleDisconnectTimeoutInMinutes" UserSettings = Value Prelude.Double
  set newValue UserSettings {..}
    = UserSettings
        {idleDisconnectTimeoutInMinutes = Prelude.pure newValue, ..}
instance Property "PasteAllowed" UserSettings where
  type PropertyType "PasteAllowed" UserSettings = Value Prelude.Text
  set newValue UserSettings {..}
    = UserSettings {pasteAllowed = newValue, ..}
instance Property "PrintAllowed" UserSettings where
  type PropertyType "PrintAllowed" UserSettings = Value Prelude.Text
  set newValue UserSettings {..}
    = UserSettings {printAllowed = newValue, ..}
instance Property "Tags" UserSettings where
  type PropertyType "Tags" UserSettings = [Tag]
  set newValue UserSettings {..}
    = UserSettings {tags = Prelude.pure newValue, ..}
instance Property "ToolbarConfiguration" UserSettings where
  type PropertyType "ToolbarConfiguration" UserSettings = ToolbarConfigurationProperty
  set newValue UserSettings {..}
    = UserSettings {toolbarConfiguration = Prelude.pure newValue, ..}
instance Property "UploadAllowed" UserSettings where
  type PropertyType "UploadAllowed" UserSettings = Value Prelude.Text
  set newValue UserSettings {..}
    = UserSettings {uploadAllowed = newValue, ..}