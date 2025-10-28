module Stratosphere.Elasticsearch.Domain.AdvancedSecurityOptionsInputProperty (
        module Exports, AdvancedSecurityOptionsInputProperty(..),
        mkAdvancedSecurityOptionsInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.MasterUserOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedSecurityOptionsInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html>
    AdvancedSecurityOptionsInputProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html#cfn-elasticsearch-domain-advancedsecurityoptionsinput-anonymousauthenabled>
                                          anonymousAuthEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html#cfn-elasticsearch-domain-advancedsecurityoptionsinput-enabled>
                                          enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html#cfn-elasticsearch-domain-advancedsecurityoptionsinput-internaluserdatabaseenabled>
                                          internalUserDatabaseEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html#cfn-elasticsearch-domain-advancedsecurityoptionsinput-masteruseroptions>
                                          masterUserOptions :: (Prelude.Maybe MasterUserOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedSecurityOptionsInputProperty ::
  AdvancedSecurityOptionsInputProperty
mkAdvancedSecurityOptionsInputProperty
  = AdvancedSecurityOptionsInputProperty
      {haddock_workaround_ = (), anonymousAuthEnabled = Prelude.Nothing,
       enabled = Prelude.Nothing,
       internalUserDatabaseEnabled = Prelude.Nothing,
       masterUserOptions = Prelude.Nothing}
instance ToResourceProperties AdvancedSecurityOptionsInputProperty where
  toResourceProperties AdvancedSecurityOptionsInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.AdvancedSecurityOptionsInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnonymousAuthEnabled" Prelude.<$> anonymousAuthEnabled,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "InternalUserDatabaseEnabled"
                              Prelude.<$> internalUserDatabaseEnabled,
                            (JSON..=) "MasterUserOptions" Prelude.<$> masterUserOptions])}
instance JSON.ToJSON AdvancedSecurityOptionsInputProperty where
  toJSON AdvancedSecurityOptionsInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnonymousAuthEnabled" Prelude.<$> anonymousAuthEnabled,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "InternalUserDatabaseEnabled"
                 Prelude.<$> internalUserDatabaseEnabled,
               (JSON..=) "MasterUserOptions" Prelude.<$> masterUserOptions]))
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