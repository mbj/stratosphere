module Stratosphere.WorkSpacesWeb.DataProtectionSettings (
        module Exports, DataProtectionSettings(..),
        mkDataProtectionSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.DataProtectionSettings.InlineRedactionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataProtectionSettings
  = DataProtectionSettings {additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            customerManagedKey :: (Prelude.Maybe (Value Prelude.Text)),
                            description :: (Prelude.Maybe (Value Prelude.Text)),
                            displayName :: (Prelude.Maybe (Value Prelude.Text)),
                            inlineRedactionConfiguration :: (Prelude.Maybe InlineRedactionConfigurationProperty),
                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataProtectionSettings :: DataProtectionSettings
mkDataProtectionSettings
  = DataProtectionSettings
      {additionalEncryptionContext = Prelude.Nothing,
       customerManagedKey = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       inlineRedactionConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataProtectionSettings where
  toResourceProperties DataProtectionSettings {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::DataProtectionSettings",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalEncryptionContext"
                              Prelude.<$> additionalEncryptionContext,
                            (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "InlineRedactionConfiguration"
                              Prelude.<$> inlineRedactionConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DataProtectionSettings where
  toJSON DataProtectionSettings {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalEncryptionContext"
                 Prelude.<$> additionalEncryptionContext,
               (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "InlineRedactionConfiguration"
                 Prelude.<$> inlineRedactionConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AdditionalEncryptionContext" DataProtectionSettings where
  type PropertyType "AdditionalEncryptionContext" DataProtectionSettings = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DataProtectionSettings {..}
    = DataProtectionSettings
        {additionalEncryptionContext = Prelude.pure newValue, ..}
instance Property "CustomerManagedKey" DataProtectionSettings where
  type PropertyType "CustomerManagedKey" DataProtectionSettings = Value Prelude.Text
  set newValue DataProtectionSettings {..}
    = DataProtectionSettings
        {customerManagedKey = Prelude.pure newValue, ..}
instance Property "Description" DataProtectionSettings where
  type PropertyType "Description" DataProtectionSettings = Value Prelude.Text
  set newValue DataProtectionSettings {..}
    = DataProtectionSettings {description = Prelude.pure newValue, ..}
instance Property "DisplayName" DataProtectionSettings where
  type PropertyType "DisplayName" DataProtectionSettings = Value Prelude.Text
  set newValue DataProtectionSettings {..}
    = DataProtectionSettings {displayName = Prelude.pure newValue, ..}
instance Property "InlineRedactionConfiguration" DataProtectionSettings where
  type PropertyType "InlineRedactionConfiguration" DataProtectionSettings = InlineRedactionConfigurationProperty
  set newValue DataProtectionSettings {..}
    = DataProtectionSettings
        {inlineRedactionConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" DataProtectionSettings where
  type PropertyType "Tags" DataProtectionSettings = [Tag]
  set newValue DataProtectionSettings {..}
    = DataProtectionSettings {tags = Prelude.pure newValue, ..}