module Stratosphere.ObservabilityAdmin.OrganizationTelemetryRule (
        module Exports, OrganizationTelemetryRule(..),
        mkOrganizationTelemetryRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationTelemetryRule.TelemetryRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OrganizationTelemetryRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-organizationtelemetryrule.html>
    OrganizationTelemetryRule {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-organizationtelemetryrule.html#cfn-observabilityadmin-organizationtelemetryrule-rule>
                               rule :: TelemetryRuleProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-organizationtelemetryrule.html#cfn-observabilityadmin-organizationtelemetryrule-rulename>
                               ruleName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-organizationtelemetryrule.html#cfn-observabilityadmin-organizationtelemetryrule-tags>
                               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationTelemetryRule ::
  TelemetryRuleProperty
  -> Value Prelude.Text -> OrganizationTelemetryRule
mkOrganizationTelemetryRule rule ruleName
  = OrganizationTelemetryRule
      {haddock_workaround_ = (), rule = rule, ruleName = ruleName,
       tags = Prelude.Nothing}
instance ToResourceProperties OrganizationTelemetryRule where
  toResourceProperties OrganizationTelemetryRule {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationTelemetryRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Rule" JSON..= rule, "RuleName" JSON..= ruleName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON OrganizationTelemetryRule where
  toJSON OrganizationTelemetryRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Rule" JSON..= rule, "RuleName" JSON..= ruleName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Rule" OrganizationTelemetryRule where
  type PropertyType "Rule" OrganizationTelemetryRule = TelemetryRuleProperty
  set newValue OrganizationTelemetryRule {..}
    = OrganizationTelemetryRule {rule = newValue, ..}
instance Property "RuleName" OrganizationTelemetryRule where
  type PropertyType "RuleName" OrganizationTelemetryRule = Value Prelude.Text
  set newValue OrganizationTelemetryRule {..}
    = OrganizationTelemetryRule {ruleName = newValue, ..}
instance Property "Tags" OrganizationTelemetryRule where
  type PropertyType "Tags" OrganizationTelemetryRule = [Tag]
  set newValue OrganizationTelemetryRule {..}
    = OrganizationTelemetryRule {tags = Prelude.pure newValue, ..}