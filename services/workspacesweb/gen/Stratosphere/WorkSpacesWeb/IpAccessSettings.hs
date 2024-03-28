module Stratosphere.WorkSpacesWeb.IpAccessSettings (
        module Exports, IpAccessSettings(..), mkIpAccessSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.IpAccessSettings.IpRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IpAccessSettings
  = IpAccessSettings {additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                      customerManagedKey :: (Prelude.Maybe (Value Prelude.Text)),
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      displayName :: (Prelude.Maybe (Value Prelude.Text)),
                      ipRules :: [IpRuleProperty],
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpAccessSettings :: [IpRuleProperty] -> IpAccessSettings
mkIpAccessSettings ipRules
  = IpAccessSettings
      {ipRules = ipRules, additionalEncryptionContext = Prelude.Nothing,
       customerManagedKey = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IpAccessSettings where
  toResourceProperties IpAccessSettings {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::IpAccessSettings",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpRules" JSON..= ipRules]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalEncryptionContext"
                                 Prelude.<$> additionalEncryptionContext,
                               (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IpAccessSettings where
  toJSON IpAccessSettings {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpRules" JSON..= ipRules]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalEncryptionContext"
                    Prelude.<$> additionalEncryptionContext,
                  (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AdditionalEncryptionContext" IpAccessSettings where
  type PropertyType "AdditionalEncryptionContext" IpAccessSettings = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue IpAccessSettings {..}
    = IpAccessSettings
        {additionalEncryptionContext = Prelude.pure newValue, ..}
instance Property "CustomerManagedKey" IpAccessSettings where
  type PropertyType "CustomerManagedKey" IpAccessSettings = Value Prelude.Text
  set newValue IpAccessSettings {..}
    = IpAccessSettings {customerManagedKey = Prelude.pure newValue, ..}
instance Property "Description" IpAccessSettings where
  type PropertyType "Description" IpAccessSettings = Value Prelude.Text
  set newValue IpAccessSettings {..}
    = IpAccessSettings {description = Prelude.pure newValue, ..}
instance Property "DisplayName" IpAccessSettings where
  type PropertyType "DisplayName" IpAccessSettings = Value Prelude.Text
  set newValue IpAccessSettings {..}
    = IpAccessSettings {displayName = Prelude.pure newValue, ..}
instance Property "IpRules" IpAccessSettings where
  type PropertyType "IpRules" IpAccessSettings = [IpRuleProperty]
  set newValue IpAccessSettings {..}
    = IpAccessSettings {ipRules = newValue, ..}
instance Property "Tags" IpAccessSettings where
  type PropertyType "Tags" IpAccessSettings = [Tag]
  set newValue IpAccessSettings {..}
    = IpAccessSettings {tags = Prelude.pure newValue, ..}