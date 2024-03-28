module Stratosphere.WorkSpacesWeb.UserSettings (
        module Exports, UserSettings(..), mkUserSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.UserSettings.CookieSynchronizationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data UserSettings
  = UserSettings {additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                  cookieSynchronizationConfiguration :: (Prelude.Maybe CookieSynchronizationConfigurationProperty),
                  copyAllowed :: (Value Prelude.Text),
                  customerManagedKey :: (Prelude.Maybe (Value Prelude.Text)),
                  disconnectTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                  downloadAllowed :: (Value Prelude.Text),
                  idleDisconnectTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                  pasteAllowed :: (Value Prelude.Text),
                  printAllowed :: (Value Prelude.Text),
                  tags :: (Prelude.Maybe [Tag]),
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
      {copyAllowed = copyAllowed, downloadAllowed = downloadAllowed,
       pasteAllowed = pasteAllowed, printAllowed = printAllowed,
       uploadAllowed = uploadAllowed,
       additionalEncryptionContext = Prelude.Nothing,
       cookieSynchronizationConfiguration = Prelude.Nothing,
       customerManagedKey = Prelude.Nothing,
       disconnectTimeoutInMinutes = Prelude.Nothing,
       idleDisconnectTimeoutInMinutes = Prelude.Nothing,
       tags = Prelude.Nothing}
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
                               (JSON..=) "DisconnectTimeoutInMinutes"
                                 Prelude.<$> disconnectTimeoutInMinutes,
                               (JSON..=) "IdleDisconnectTimeoutInMinutes"
                                 Prelude.<$> idleDisconnectTimeoutInMinutes,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
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
                  (JSON..=) "DisconnectTimeoutInMinutes"
                    Prelude.<$> disconnectTimeoutInMinutes,
                  (JSON..=) "IdleDisconnectTimeoutInMinutes"
                    Prelude.<$> idleDisconnectTimeoutInMinutes,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
instance Property "UploadAllowed" UserSettings where
  type PropertyType "UploadAllowed" UserSettings = Value Prelude.Text
  set newValue UserSettings {..}
    = UserSettings {uploadAllowed = newValue, ..}