module Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule (
        module Exports, OrganizationCentralizationRule(..),
        mkOrganizationCentralizationRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OrganizationCentralizationRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-organizationcentralizationrule.html>
    OrganizationCentralizationRule {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-organizationcentralizationrule.html#cfn-observabilityadmin-organizationcentralizationrule-rule>
                                    rule :: CentralizationRuleProperty,
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-organizationcentralizationrule.html#cfn-observabilityadmin-organizationcentralizationrule-rulename>
                                    ruleName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-observabilityadmin-organizationcentralizationrule.html#cfn-observabilityadmin-organizationcentralizationrule-tags>
                                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationCentralizationRule ::
  CentralizationRuleProperty
  -> Value Prelude.Text -> OrganizationCentralizationRule
mkOrganizationCentralizationRule rule ruleName
  = OrganizationCentralizationRule
      {haddock_workaround_ = (), rule = rule, ruleName = ruleName,
       tags = Prelude.Nothing}
instance ToResourceProperties OrganizationCentralizationRule where
  toResourceProperties OrganizationCentralizationRule {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationCentralizationRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Rule" JSON..= rule, "RuleName" JSON..= ruleName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON OrganizationCentralizationRule where
  toJSON OrganizationCentralizationRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Rule" JSON..= rule, "RuleName" JSON..= ruleName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Rule" OrganizationCentralizationRule where
  type PropertyType "Rule" OrganizationCentralizationRule = CentralizationRuleProperty
  set newValue OrganizationCentralizationRule {..}
    = OrganizationCentralizationRule {rule = newValue, ..}
instance Property "RuleName" OrganizationCentralizationRule where
  type PropertyType "RuleName" OrganizationCentralizationRule = Value Prelude.Text
  set newValue OrganizationCentralizationRule {..}
    = OrganizationCentralizationRule {ruleName = newValue, ..}
instance Property "Tags" OrganizationCentralizationRule where
  type PropertyType "Tags" OrganizationCentralizationRule = [Tag]
  set newValue OrganizationCentralizationRule {..}
    = OrganizationCentralizationRule {tags = Prelude.pure newValue, ..}