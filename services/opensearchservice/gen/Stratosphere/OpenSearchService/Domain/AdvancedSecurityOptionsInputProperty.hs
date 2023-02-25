module Stratosphere.OpenSearchService.Domain.AdvancedSecurityOptionsInputProperty (
        module Exports, AdvancedSecurityOptionsInputProperty(..),
        mkAdvancedSecurityOptionsInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.MasterUserOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.SAMLOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedSecurityOptionsInputProperty
  = AdvancedSecurityOptionsInputProperty {anonymousAuthDisableDate :: (Prelude.Maybe (Value Prelude.Text)),
                                          anonymousAuthEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          internalUserDatabaseEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          masterUserOptions :: (Prelude.Maybe MasterUserOptionsProperty),
                                          sAMLOptions :: (Prelude.Maybe SAMLOptionsProperty)}
mkAdvancedSecurityOptionsInputProperty ::
  AdvancedSecurityOptionsInputProperty
mkAdvancedSecurityOptionsInputProperty
  = AdvancedSecurityOptionsInputProperty
      {anonymousAuthDisableDate = Prelude.Nothing,
       anonymousAuthEnabled = Prelude.Nothing, enabled = Prelude.Nothing,
       internalUserDatabaseEnabled = Prelude.Nothing,
       masterUserOptions = Prelude.Nothing, sAMLOptions = Prelude.Nothing}
instance ToResourceProperties AdvancedSecurityOptionsInputProperty where
  toResourceProperties AdvancedSecurityOptionsInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.AdvancedSecurityOptionsInput",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnonymousAuthDisableDate"
                              Prelude.<$> anonymousAuthDisableDate,
                            (JSON..=) "AnonymousAuthEnabled" Prelude.<$> anonymousAuthEnabled,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "InternalUserDatabaseEnabled"
                              Prelude.<$> internalUserDatabaseEnabled,
                            (JSON..=) "MasterUserOptions" Prelude.<$> masterUserOptions,
                            (JSON..=) "SAMLOptions" Prelude.<$> sAMLOptions])}
instance JSON.ToJSON AdvancedSecurityOptionsInputProperty where
  toJSON AdvancedSecurityOptionsInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnonymousAuthDisableDate"
                 Prelude.<$> anonymousAuthDisableDate,
               (JSON..=) "AnonymousAuthEnabled" Prelude.<$> anonymousAuthEnabled,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "InternalUserDatabaseEnabled"
                 Prelude.<$> internalUserDatabaseEnabled,
               (JSON..=) "MasterUserOptions" Prelude.<$> masterUserOptions,
               (JSON..=) "SAMLOptions" Prelude.<$> sAMLOptions]))
instance Property "AnonymousAuthDisableDate" AdvancedSecurityOptionsInputProperty where
  type PropertyType "AnonymousAuthDisableDate" AdvancedSecurityOptionsInputProperty = Value Prelude.Text
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {anonymousAuthDisableDate = Prelude.pure newValue, ..}
instance Property "AnonymousAuthEnabled" AdvancedSecurityOptionsInputProperty where
  type PropertyType "AnonymousAuthEnabled" AdvancedSecurityOptionsInputProperty = Value Prelude.Bool
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {anonymousAuthEnabled = Prelude.pure newValue, ..}
instance Property "Enabled" AdvancedSecurityOptionsInputProperty where
  type PropertyType "Enabled" AdvancedSecurityOptionsInputProperty = Value Prelude.Bool
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "InternalUserDatabaseEnabled" AdvancedSecurityOptionsInputProperty where
  type PropertyType "InternalUserDatabaseEnabled" AdvancedSecurityOptionsInputProperty = Value Prelude.Bool
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {internalUserDatabaseEnabled = Prelude.pure newValue, ..}
instance Property "MasterUserOptions" AdvancedSecurityOptionsInputProperty where
  type PropertyType "MasterUserOptions" AdvancedSecurityOptionsInputProperty = MasterUserOptionsProperty
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {masterUserOptions = Prelude.pure newValue, ..}
instance Property "SAMLOptions" AdvancedSecurityOptionsInputProperty where
  type PropertyType "SAMLOptions" AdvancedSecurityOptionsInputProperty = SAMLOptionsProperty
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {sAMLOptions = Prelude.pure newValue, ..}