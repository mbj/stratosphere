module Stratosphere.SMSVOICE.ProtectConfiguration.CountryRuleSetProperty (
        module Exports, CountryRuleSetProperty(..),
        mkCountryRuleSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SMSVOICE.ProtectConfiguration.CountryRuleProperty as Exports
import Stratosphere.ResourceProperties
data CountryRuleSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-protectconfiguration-countryruleset.html>
    CountryRuleSetProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-protectconfiguration-countryruleset.html#cfn-smsvoice-protectconfiguration-countryruleset-mms>
                            mMS :: (Prelude.Maybe [CountryRuleProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-protectconfiguration-countryruleset.html#cfn-smsvoice-protectconfiguration-countryruleset-sms>
                            sMS :: (Prelude.Maybe [CountryRuleProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-protectconfiguration-countryruleset.html#cfn-smsvoice-protectconfiguration-countryruleset-voice>
                            vOICE :: (Prelude.Maybe [CountryRuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCountryRuleSetProperty :: CountryRuleSetProperty
mkCountryRuleSetProperty
  = CountryRuleSetProperty
      {haddock_workaround_ = (), mMS = Prelude.Nothing,
       sMS = Prelude.Nothing, vOICE = Prelude.Nothing}
instance ToResourceProperties CountryRuleSetProperty where
  toResourceProperties CountryRuleSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::ProtectConfiguration.CountryRuleSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MMS" Prelude.<$> mMS, (JSON..=) "SMS" Prelude.<$> sMS,
                            (JSON..=) "VOICE" Prelude.<$> vOICE])}
instance JSON.ToJSON CountryRuleSetProperty where
  toJSON CountryRuleSetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MMS" Prelude.<$> mMS, (JSON..=) "SMS" Prelude.<$> sMS,
               (JSON..=) "VOICE" Prelude.<$> vOICE]))
instance Property "MMS" CountryRuleSetProperty where
  type PropertyType "MMS" CountryRuleSetProperty = [CountryRuleProperty]
  set newValue CountryRuleSetProperty {..}
    = CountryRuleSetProperty {mMS = Prelude.pure newValue, ..}
instance Property "SMS" CountryRuleSetProperty where
  type PropertyType "SMS" CountryRuleSetProperty = [CountryRuleProperty]
  set newValue CountryRuleSetProperty {..}
    = CountryRuleSetProperty {sMS = Prelude.pure newValue, ..}
instance Property "VOICE" CountryRuleSetProperty where
  type PropertyType "VOICE" CountryRuleSetProperty = [CountryRuleProperty]
  set newValue CountryRuleSetProperty {..}
    = CountryRuleSetProperty {vOICE = Prelude.pure newValue, ..}