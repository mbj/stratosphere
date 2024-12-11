module Stratosphere.SecurityHub.ConfigurationPolicy.SecurityControlsConfigurationProperty (
        module Exports, SecurityControlsConfigurationProperty(..),
        mkSecurityControlsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.ConfigurationPolicy.SecurityControlCustomParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityControlsConfigurationProperty
  = SecurityControlsConfigurationProperty {disabledSecurityControlIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           enabledSecurityControlIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           securityControlCustomParameters :: (Prelude.Maybe [SecurityControlCustomParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityControlsConfigurationProperty ::
  SecurityControlsConfigurationProperty
mkSecurityControlsConfigurationProperty
  = SecurityControlsConfigurationProperty
      {disabledSecurityControlIdentifiers = Prelude.Nothing,
       enabledSecurityControlIdentifiers = Prelude.Nothing,
       securityControlCustomParameters = Prelude.Nothing}
instance ToResourceProperties SecurityControlsConfigurationProperty where
  toResourceProperties SecurityControlsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::ConfigurationPolicy.SecurityControlsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DisabledSecurityControlIdentifiers"
                              Prelude.<$> disabledSecurityControlIdentifiers,
                            (JSON..=) "EnabledSecurityControlIdentifiers"
                              Prelude.<$> enabledSecurityControlIdentifiers,
                            (JSON..=) "SecurityControlCustomParameters"
                              Prelude.<$> securityControlCustomParameters])}
instance JSON.ToJSON SecurityControlsConfigurationProperty where
  toJSON SecurityControlsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DisabledSecurityControlIdentifiers"
                 Prelude.<$> disabledSecurityControlIdentifiers,
               (JSON..=) "EnabledSecurityControlIdentifiers"
                 Prelude.<$> enabledSecurityControlIdentifiers,
               (JSON..=) "SecurityControlCustomParameters"
                 Prelude.<$> securityControlCustomParameters]))
instance Property "DisabledSecurityControlIdentifiers" SecurityControlsConfigurationProperty where
  type PropertyType "DisabledSecurityControlIdentifiers" SecurityControlsConfigurationProperty = ValueList Prelude.Text
  set newValue SecurityControlsConfigurationProperty {..}
    = SecurityControlsConfigurationProperty
        {disabledSecurityControlIdentifiers = Prelude.pure newValue, ..}
instance Property "EnabledSecurityControlIdentifiers" SecurityControlsConfigurationProperty where
  type PropertyType "EnabledSecurityControlIdentifiers" SecurityControlsConfigurationProperty = ValueList Prelude.Text
  set newValue SecurityControlsConfigurationProperty {..}
    = SecurityControlsConfigurationProperty
        {enabledSecurityControlIdentifiers = Prelude.pure newValue, ..}
instance Property "SecurityControlCustomParameters" SecurityControlsConfigurationProperty where
  type PropertyType "SecurityControlCustomParameters" SecurityControlsConfigurationProperty = [SecurityControlCustomParameterProperty]
  set newValue SecurityControlsConfigurationProperty {..}
    = SecurityControlsConfigurationProperty
        {securityControlCustomParameters = Prelude.pure newValue, ..}