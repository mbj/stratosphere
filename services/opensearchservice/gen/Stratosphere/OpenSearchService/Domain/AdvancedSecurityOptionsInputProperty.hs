module Stratosphere.OpenSearchService.Domain.AdvancedSecurityOptionsInputProperty (
        module Exports, AdvancedSecurityOptionsInputProperty(..),
        mkAdvancedSecurityOptionsInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.IAMFederationOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.JWTOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.MasterUserOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.SAMLOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedSecurityOptionsInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html>
    AdvancedSecurityOptionsInputProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html#cfn-opensearchservice-domain-advancedsecurityoptionsinput-anonymousauthdisabledate>
                                          anonymousAuthDisableDate :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html#cfn-opensearchservice-domain-advancedsecurityoptionsinput-anonymousauthenabled>
                                          anonymousAuthEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html#cfn-opensearchservice-domain-advancedsecurityoptionsinput-enabled>
                                          enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html#cfn-opensearchservice-domain-advancedsecurityoptionsinput-iamfederationoptions>
                                          iAMFederationOptions :: (Prelude.Maybe IAMFederationOptionsProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html#cfn-opensearchservice-domain-advancedsecurityoptionsinput-internaluserdatabaseenabled>
                                          internalUserDatabaseEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html#cfn-opensearchservice-domain-advancedsecurityoptionsinput-jwtoptions>
                                          jWTOptions :: (Prelude.Maybe JWTOptionsProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html#cfn-opensearchservice-domain-advancedsecurityoptionsinput-masteruseroptions>
                                          masterUserOptions :: (Prelude.Maybe MasterUserOptionsProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-advancedsecurityoptionsinput.html#cfn-opensearchservice-domain-advancedsecurityoptionsinput-samloptions>
                                          sAMLOptions :: (Prelude.Maybe SAMLOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedSecurityOptionsInputProperty ::
  AdvancedSecurityOptionsInputProperty
mkAdvancedSecurityOptionsInputProperty
  = AdvancedSecurityOptionsInputProperty
      {haddock_workaround_ = (),
       anonymousAuthDisableDate = Prelude.Nothing,
       anonymousAuthEnabled = Prelude.Nothing, enabled = Prelude.Nothing,
       iAMFederationOptions = Prelude.Nothing,
       internalUserDatabaseEnabled = Prelude.Nothing,
       jWTOptions = Prelude.Nothing, masterUserOptions = Prelude.Nothing,
       sAMLOptions = Prelude.Nothing}
instance ToResourceProperties AdvancedSecurityOptionsInputProperty where
  toResourceProperties AdvancedSecurityOptionsInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.AdvancedSecurityOptionsInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnonymousAuthDisableDate"
                              Prelude.<$> anonymousAuthDisableDate,
                            (JSON..=) "AnonymousAuthEnabled" Prelude.<$> anonymousAuthEnabled,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "IAMFederationOptions" Prelude.<$> iAMFederationOptions,
                            (JSON..=) "InternalUserDatabaseEnabled"
                              Prelude.<$> internalUserDatabaseEnabled,
                            (JSON..=) "JWTOptions" Prelude.<$> jWTOptions,
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
               (JSON..=) "IAMFederationOptions" Prelude.<$> iAMFederationOptions,
               (JSON..=) "InternalUserDatabaseEnabled"
                 Prelude.<$> internalUserDatabaseEnabled,
               (JSON..=) "JWTOptions" Prelude.<$> jWTOptions,
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
instance Property "IAMFederationOptions" AdvancedSecurityOptionsInputProperty where
  type PropertyType "IAMFederationOptions" AdvancedSecurityOptionsInputProperty = IAMFederationOptionsProperty
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {iAMFederationOptions = Prelude.pure newValue, ..}
instance Property "InternalUserDatabaseEnabled" AdvancedSecurityOptionsInputProperty where
  type PropertyType "InternalUserDatabaseEnabled" AdvancedSecurityOptionsInputProperty = Value Prelude.Bool
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {internalUserDatabaseEnabled = Prelude.pure newValue, ..}
instance Property "JWTOptions" AdvancedSecurityOptionsInputProperty where
  type PropertyType "JWTOptions" AdvancedSecurityOptionsInputProperty = JWTOptionsProperty
  set newValue AdvancedSecurityOptionsInputProperty {..}
    = AdvancedSecurityOptionsInputProperty
        {jWTOptions = Prelude.pure newValue, ..}
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