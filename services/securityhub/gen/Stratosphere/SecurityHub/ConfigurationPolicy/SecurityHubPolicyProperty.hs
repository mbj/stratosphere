module Stratosphere.SecurityHub.ConfigurationPolicy.SecurityHubPolicyProperty (
        module Exports, SecurityHubPolicyProperty(..),
        mkSecurityHubPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.ConfigurationPolicy.SecurityControlsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityHubPolicyProperty
  = SecurityHubPolicyProperty {enabledStandardIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                               securityControlsConfiguration :: (Prelude.Maybe SecurityControlsConfigurationProperty),
                               serviceEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityHubPolicyProperty :: SecurityHubPolicyProperty
mkSecurityHubPolicyProperty
  = SecurityHubPolicyProperty
      {enabledStandardIdentifiers = Prelude.Nothing,
       securityControlsConfiguration = Prelude.Nothing,
       serviceEnabled = Prelude.Nothing}
instance ToResourceProperties SecurityHubPolicyProperty where
  toResourceProperties SecurityHubPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::ConfigurationPolicy.SecurityHubPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnabledStandardIdentifiers"
                              Prelude.<$> enabledStandardIdentifiers,
                            (JSON..=) "SecurityControlsConfiguration"
                              Prelude.<$> securityControlsConfiguration,
                            (JSON..=) "ServiceEnabled" Prelude.<$> serviceEnabled])}
instance JSON.ToJSON SecurityHubPolicyProperty where
  toJSON SecurityHubPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnabledStandardIdentifiers"
                 Prelude.<$> enabledStandardIdentifiers,
               (JSON..=) "SecurityControlsConfiguration"
                 Prelude.<$> securityControlsConfiguration,
               (JSON..=) "ServiceEnabled" Prelude.<$> serviceEnabled]))
instance Property "EnabledStandardIdentifiers" SecurityHubPolicyProperty where
  type PropertyType "EnabledStandardIdentifiers" SecurityHubPolicyProperty = ValueList Prelude.Text
  set newValue SecurityHubPolicyProperty {..}
    = SecurityHubPolicyProperty
        {enabledStandardIdentifiers = Prelude.pure newValue, ..}
instance Property "SecurityControlsConfiguration" SecurityHubPolicyProperty where
  type PropertyType "SecurityControlsConfiguration" SecurityHubPolicyProperty = SecurityControlsConfigurationProperty
  set newValue SecurityHubPolicyProperty {..}
    = SecurityHubPolicyProperty
        {securityControlsConfiguration = Prelude.pure newValue, ..}
instance Property "ServiceEnabled" SecurityHubPolicyProperty where
  type PropertyType "ServiceEnabled" SecurityHubPolicyProperty = Value Prelude.Bool
  set newValue SecurityHubPolicyProperty {..}
    = SecurityHubPolicyProperty
        {serviceEnabled = Prelude.pure newValue, ..}