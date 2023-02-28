module Stratosphere.Grafana.Workspace.SamlConfigurationProperty (
        module Exports, SamlConfigurationProperty(..),
        mkSamlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Grafana.Workspace.AssertionAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.Grafana.Workspace.IdpMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.Grafana.Workspace.RoleValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SamlConfigurationProperty
  = SamlConfigurationProperty {allowedOrganizations :: (Prelude.Maybe (ValueList Prelude.Text)),
                               assertionAttributes :: (Prelude.Maybe AssertionAttributesProperty),
                               idpMetadata :: IdpMetadataProperty,
                               loginValidityDuration :: (Prelude.Maybe (Value Prelude.Double)),
                               roleValues :: (Prelude.Maybe RoleValuesProperty)}
mkSamlConfigurationProperty ::
  IdpMetadataProperty -> SamlConfigurationProperty
mkSamlConfigurationProperty idpMetadata
  = SamlConfigurationProperty
      {idpMetadata = idpMetadata, allowedOrganizations = Prelude.Nothing,
       assertionAttributes = Prelude.Nothing,
       loginValidityDuration = Prelude.Nothing,
       roleValues = Prelude.Nothing}
instance ToResourceProperties SamlConfigurationProperty where
  toResourceProperties SamlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Grafana::Workspace.SamlConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdpMetadata" JSON..= idpMetadata]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedOrganizations" Prelude.<$> allowedOrganizations,
                               (JSON..=) "AssertionAttributes" Prelude.<$> assertionAttributes,
                               (JSON..=) "LoginValidityDuration"
                                 Prelude.<$> loginValidityDuration,
                               (JSON..=) "RoleValues" Prelude.<$> roleValues]))}
instance JSON.ToJSON SamlConfigurationProperty where
  toJSON SamlConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdpMetadata" JSON..= idpMetadata]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedOrganizations" Prelude.<$> allowedOrganizations,
                  (JSON..=) "AssertionAttributes" Prelude.<$> assertionAttributes,
                  (JSON..=) "LoginValidityDuration"
                    Prelude.<$> loginValidityDuration,
                  (JSON..=) "RoleValues" Prelude.<$> roleValues])))
instance Property "AllowedOrganizations" SamlConfigurationProperty where
  type PropertyType "AllowedOrganizations" SamlConfigurationProperty = ValueList Prelude.Text
  set newValue SamlConfigurationProperty {..}
    = SamlConfigurationProperty
        {allowedOrganizations = Prelude.pure newValue, ..}
instance Property "AssertionAttributes" SamlConfigurationProperty where
  type PropertyType "AssertionAttributes" SamlConfigurationProperty = AssertionAttributesProperty
  set newValue SamlConfigurationProperty {..}
    = SamlConfigurationProperty
        {assertionAttributes = Prelude.pure newValue, ..}
instance Property "IdpMetadata" SamlConfigurationProperty where
  type PropertyType "IdpMetadata" SamlConfigurationProperty = IdpMetadataProperty
  set newValue SamlConfigurationProperty {..}
    = SamlConfigurationProperty {idpMetadata = newValue, ..}
instance Property "LoginValidityDuration" SamlConfigurationProperty where
  type PropertyType "LoginValidityDuration" SamlConfigurationProperty = Value Prelude.Double
  set newValue SamlConfigurationProperty {..}
    = SamlConfigurationProperty
        {loginValidityDuration = Prelude.pure newValue, ..}
instance Property "RoleValues" SamlConfigurationProperty where
  type PropertyType "RoleValues" SamlConfigurationProperty = RoleValuesProperty
  set newValue SamlConfigurationProperty {..}
    = SamlConfigurationProperty
        {roleValues = Prelude.pure newValue, ..}