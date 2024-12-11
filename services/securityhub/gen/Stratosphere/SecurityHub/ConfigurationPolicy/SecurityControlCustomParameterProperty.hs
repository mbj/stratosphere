module Stratosphere.SecurityHub.ConfigurationPolicy.SecurityControlCustomParameterProperty (
        module Exports, SecurityControlCustomParameterProperty(..),
        mkSecurityControlCustomParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.ConfigurationPolicy.ParameterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityControlCustomParameterProperty
  = SecurityControlCustomParameterProperty {parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text ParameterConfigurationProperty)),
                                            securityControlId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityControlCustomParameterProperty ::
  SecurityControlCustomParameterProperty
mkSecurityControlCustomParameterProperty
  = SecurityControlCustomParameterProperty
      {parameters = Prelude.Nothing, securityControlId = Prelude.Nothing}
instance ToResourceProperties SecurityControlCustomParameterProperty where
  toResourceProperties SecurityControlCustomParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::ConfigurationPolicy.SecurityControlCustomParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "SecurityControlId" Prelude.<$> securityControlId])}
instance JSON.ToJSON SecurityControlCustomParameterProperty where
  toJSON SecurityControlCustomParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "SecurityControlId" Prelude.<$> securityControlId]))
instance Property "Parameters" SecurityControlCustomParameterProperty where
  type PropertyType "Parameters" SecurityControlCustomParameterProperty = Prelude.Map Prelude.Text ParameterConfigurationProperty
  set newValue SecurityControlCustomParameterProperty {..}
    = SecurityControlCustomParameterProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "SecurityControlId" SecurityControlCustomParameterProperty where
  type PropertyType "SecurityControlId" SecurityControlCustomParameterProperty = Value Prelude.Text
  set newValue SecurityControlCustomParameterProperty {..}
    = SecurityControlCustomParameterProperty
        {securityControlId = Prelude.pure newValue, ..}