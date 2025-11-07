module Stratosphere.SMSVOICE.ProtectConfiguration.CountryRuleProperty (
        CountryRuleProperty(..), mkCountryRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CountryRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-protectconfiguration-countryrule.html>
    CountryRuleProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-protectconfiguration-countryrule.html#cfn-smsvoice-protectconfiguration-countryrule-countrycode>
                         countryCode :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-protectconfiguration-countryrule.html#cfn-smsvoice-protectconfiguration-countryrule-protectstatus>
                         protectStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCountryRuleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CountryRuleProperty
mkCountryRuleProperty countryCode protectStatus
  = CountryRuleProperty
      {haddock_workaround_ = (), countryCode = countryCode,
       protectStatus = protectStatus}
instance ToResourceProperties CountryRuleProperty where
  toResourceProperties CountryRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::ProtectConfiguration.CountryRule",
         supportsTags = Prelude.False,
         properties = ["CountryCode" JSON..= countryCode,
                       "ProtectStatus" JSON..= protectStatus]}
instance JSON.ToJSON CountryRuleProperty where
  toJSON CountryRuleProperty {..}
    = JSON.object
        ["CountryCode" JSON..= countryCode,
         "ProtectStatus" JSON..= protectStatus]
instance Property "CountryCode" CountryRuleProperty where
  type PropertyType "CountryCode" CountryRuleProperty = Value Prelude.Text
  set newValue CountryRuleProperty {..}
    = CountryRuleProperty {countryCode = newValue, ..}
instance Property "ProtectStatus" CountryRuleProperty where
  type PropertyType "ProtectStatus" CountryRuleProperty = Value Prelude.Text
  set newValue CountryRuleProperty {..}
    = CountryRuleProperty {protectStatus = newValue, ..}