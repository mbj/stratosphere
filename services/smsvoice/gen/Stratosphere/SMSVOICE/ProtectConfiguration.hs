module Stratosphere.SMSVOICE.ProtectConfiguration (
        module Exports, ProtectConfiguration(..), mkProtectConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SMSVOICE.ProtectConfiguration.CountryRuleSetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ProtectConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-protectconfiguration.html>
    ProtectConfiguration {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-protectconfiguration.html#cfn-smsvoice-protectconfiguration-countryruleset>
                          countryRuleSet :: (Prelude.Maybe CountryRuleSetProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-protectconfiguration.html#cfn-smsvoice-protectconfiguration-deletionprotectionenabled>
                          deletionProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-protectconfiguration.html#cfn-smsvoice-protectconfiguration-tags>
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtectConfiguration :: ProtectConfiguration
mkProtectConfiguration
  = ProtectConfiguration
      {haddock_workaround_ = (), countryRuleSet = Prelude.Nothing,
       deletionProtectionEnabled = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ProtectConfiguration where
  toResourceProperties ProtectConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::ProtectConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CountryRuleSet" Prelude.<$> countryRuleSet,
                            (JSON..=) "DeletionProtectionEnabled"
                              Prelude.<$> deletionProtectionEnabled,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ProtectConfiguration where
  toJSON ProtectConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CountryRuleSet" Prelude.<$> countryRuleSet,
               (JSON..=) "DeletionProtectionEnabled"
                 Prelude.<$> deletionProtectionEnabled,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CountryRuleSet" ProtectConfiguration where
  type PropertyType "CountryRuleSet" ProtectConfiguration = CountryRuleSetProperty
  set newValue ProtectConfiguration {..}
    = ProtectConfiguration {countryRuleSet = Prelude.pure newValue, ..}
instance Property "DeletionProtectionEnabled" ProtectConfiguration where
  type PropertyType "DeletionProtectionEnabled" ProtectConfiguration = Value Prelude.Bool
  set newValue ProtectConfiguration {..}
    = ProtectConfiguration
        {deletionProtectionEnabled = Prelude.pure newValue, ..}
instance Property "Tags" ProtectConfiguration where
  type PropertyType "Tags" ProtectConfiguration = [Tag]
  set newValue ProtectConfiguration {..}
    = ProtectConfiguration {tags = Prelude.pure newValue, ..}