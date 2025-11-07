module Stratosphere.ObservabilityAdmin.TelemetryRule (
        module Exports, TelemetryRule(..), mkTelemetryRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.TelemetryRule.TelemetryRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TelemetryRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-telemetryrule.html>
    TelemetryRule {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-telemetryrule.html#cfn-observabilityadmin-telemetryrule-rule>
                   rule :: TelemetryRuleProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-telemetryrule.html#cfn-observabilityadmin-telemetryrule-rulename>
                   ruleName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-telemetryrule.html#cfn-observabilityadmin-telemetryrule-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTelemetryRule ::
  TelemetryRuleProperty -> Value Prelude.Text -> TelemetryRule
mkTelemetryRule rule ruleName
  = TelemetryRule
      {haddock_workaround_ = (), rule = rule, ruleName = ruleName,
       tags = Prelude.Nothing}
instance ToResourceProperties TelemetryRule where
  toResourceProperties TelemetryRule {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::TelemetryRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Rule" JSON..= rule, "RuleName" JSON..= ruleName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TelemetryRule where
  toJSON TelemetryRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Rule" JSON..= rule, "RuleName" JSON..= ruleName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Rule" TelemetryRule where
  type PropertyType "Rule" TelemetryRule = TelemetryRuleProperty
  set newValue TelemetryRule {..}
    = TelemetryRule {rule = newValue, ..}
instance Property "RuleName" TelemetryRule where
  type PropertyType "RuleName" TelemetryRule = Value Prelude.Text
  set newValue TelemetryRule {..}
    = TelemetryRule {ruleName = newValue, ..}
instance Property "Tags" TelemetryRule where
  type PropertyType "Tags" TelemetryRule = [Tag]
  set newValue TelemetryRule {..}
    = TelemetryRule {tags = Prelude.pure newValue, ..}