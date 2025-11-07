module Stratosphere.SecurityHub.AutomationRuleV2.AutomationRulesActionV2Property (
        module Exports, AutomationRulesActionV2Property(..),
        mkAutomationRulesActionV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.AutomationRulesFindingFieldsUpdateV2Property as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.ExternalIntegrationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomationRulesActionV2Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesactionv2.html>
    AutomationRulesActionV2Property {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesactionv2.html#cfn-securityhub-automationrulev2-automationrulesactionv2-externalintegrationconfiguration>
                                     externalIntegrationConfiguration :: (Prelude.Maybe ExternalIntegrationConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesactionv2.html#cfn-securityhub-automationrulev2-automationrulesactionv2-findingfieldsupdate>
                                     findingFieldsUpdate :: (Prelude.Maybe AutomationRulesFindingFieldsUpdateV2Property),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesactionv2.html#cfn-securityhub-automationrulev2-automationrulesactionv2-type>
                                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomationRulesActionV2Property ::
  Value Prelude.Text -> AutomationRulesActionV2Property
mkAutomationRulesActionV2Property type'
  = AutomationRulesActionV2Property
      {haddock_workaround_ = (), type' = type',
       externalIntegrationConfiguration = Prelude.Nothing,
       findingFieldsUpdate = Prelude.Nothing}
instance ToResourceProperties AutomationRulesActionV2Property where
  toResourceProperties AutomationRulesActionV2Property {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.AutomationRulesActionV2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ExternalIntegrationConfiguration"
                                 Prelude.<$> externalIntegrationConfiguration,
                               (JSON..=) "FindingFieldsUpdate" Prelude.<$> findingFieldsUpdate]))}
instance JSON.ToJSON AutomationRulesActionV2Property where
  toJSON AutomationRulesActionV2Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ExternalIntegrationConfiguration"
                    Prelude.<$> externalIntegrationConfiguration,
                  (JSON..=) "FindingFieldsUpdate" Prelude.<$> findingFieldsUpdate])))
instance Property "ExternalIntegrationConfiguration" AutomationRulesActionV2Property where
  type PropertyType "ExternalIntegrationConfiguration" AutomationRulesActionV2Property = ExternalIntegrationConfigurationProperty
  set newValue AutomationRulesActionV2Property {..}
    = AutomationRulesActionV2Property
        {externalIntegrationConfiguration = Prelude.pure newValue, ..}
instance Property "FindingFieldsUpdate" AutomationRulesActionV2Property where
  type PropertyType "FindingFieldsUpdate" AutomationRulesActionV2Property = AutomationRulesFindingFieldsUpdateV2Property
  set newValue AutomationRulesActionV2Property {..}
    = AutomationRulesActionV2Property
        {findingFieldsUpdate = Prelude.pure newValue, ..}
instance Property "Type" AutomationRulesActionV2Property where
  type PropertyType "Type" AutomationRulesActionV2Property = Value Prelude.Text
  set newValue AutomationRulesActionV2Property {..}
    = AutomationRulesActionV2Property {type' = newValue, ..}