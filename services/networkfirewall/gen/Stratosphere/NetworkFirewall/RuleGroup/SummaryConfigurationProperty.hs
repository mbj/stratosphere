module Stratosphere.NetworkFirewall.RuleGroup.SummaryConfigurationProperty (
        SummaryConfigurationProperty(..), mkSummaryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SummaryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-summaryconfiguration.html>
    SummaryConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-summaryconfiguration.html#cfn-networkfirewall-rulegroup-summaryconfiguration-ruleoptions>
                                  ruleOptions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSummaryConfigurationProperty :: SummaryConfigurationProperty
mkSummaryConfigurationProperty
  = SummaryConfigurationProperty
      {haddock_workaround_ = (), ruleOptions = Prelude.Nothing}
instance ToResourceProperties SummaryConfigurationProperty where
  toResourceProperties SummaryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.SummaryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RuleOptions" Prelude.<$> ruleOptions])}
instance JSON.ToJSON SummaryConfigurationProperty where
  toJSON SummaryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RuleOptions" Prelude.<$> ruleOptions]))
instance Property "RuleOptions" SummaryConfigurationProperty where
  type PropertyType "RuleOptions" SummaryConfigurationProperty = ValueList Prelude.Text
  set newValue SummaryConfigurationProperty {..}
    = SummaryConfigurationProperty
        {ruleOptions = Prelude.pure newValue, ..}