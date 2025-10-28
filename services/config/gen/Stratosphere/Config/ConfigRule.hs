module Stratosphere.Config.ConfigRule (
        module Exports, ConfigRule(..), mkConfigRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConfigRule.ComplianceProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConfigRule.EvaluationModeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConfigRule.ScopeProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConfigRule.SourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html>
    ConfigRule {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-compliance>
                compliance :: (Prelude.Maybe ComplianceProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-configrulename>
                configRuleName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-evaluationmodes>
                evaluationModes :: (Prelude.Maybe [EvaluationModeConfigurationProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-inputparameters>
                inputParameters :: (Prelude.Maybe JSON.Object),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-maximumexecutionfrequency>
                maximumExecutionFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-scope>
                scope :: (Prelude.Maybe ScopeProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-source>
                source :: SourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigRule :: SourceProperty -> ConfigRule
mkConfigRule source
  = ConfigRule
      {haddock_workaround_ = (), source = source,
       compliance = Prelude.Nothing, configRuleName = Prelude.Nothing,
       description = Prelude.Nothing, evaluationModes = Prelude.Nothing,
       inputParameters = Prelude.Nothing,
       maximumExecutionFrequency = Prelude.Nothing,
       scope = Prelude.Nothing}
instance ToResourceProperties ConfigRule where
  toResourceProperties ConfigRule {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigRule", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Compliance" Prelude.<$> compliance,
                               (JSON..=) "ConfigRuleName" Prelude.<$> configRuleName,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EvaluationModes" Prelude.<$> evaluationModes,
                               (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                               (JSON..=) "MaximumExecutionFrequency"
                                 Prelude.<$> maximumExecutionFrequency,
                               (JSON..=) "Scope" Prelude.<$> scope]))}
instance JSON.ToJSON ConfigRule where
  toJSON ConfigRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "Compliance" Prelude.<$> compliance,
                  (JSON..=) "ConfigRuleName" Prelude.<$> configRuleName,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EvaluationModes" Prelude.<$> evaluationModes,
                  (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                  (JSON..=) "MaximumExecutionFrequency"
                    Prelude.<$> maximumExecutionFrequency,
                  (JSON..=) "Scope" Prelude.<$> scope])))
instance Property "Compliance" ConfigRule where
  type PropertyType "Compliance" ConfigRule = ComplianceProperty
  set newValue ConfigRule {..}
    = ConfigRule {compliance = Prelude.pure newValue, ..}
instance Property "ConfigRuleName" ConfigRule where
  type PropertyType "ConfigRuleName" ConfigRule = Value Prelude.Text
  set newValue ConfigRule {..}
    = ConfigRule {configRuleName = Prelude.pure newValue, ..}
instance Property "Description" ConfigRule where
  type PropertyType "Description" ConfigRule = Value Prelude.Text
  set newValue ConfigRule {..}
    = ConfigRule {description = Prelude.pure newValue, ..}
instance Property "EvaluationModes" ConfigRule where
  type PropertyType "EvaluationModes" ConfigRule = [EvaluationModeConfigurationProperty]
  set newValue ConfigRule {..}
    = ConfigRule {evaluationModes = Prelude.pure newValue, ..}
instance Property "InputParameters" ConfigRule where
  type PropertyType "InputParameters" ConfigRule = JSON.Object
  set newValue ConfigRule {..}
    = ConfigRule {inputParameters = Prelude.pure newValue, ..}
instance Property "MaximumExecutionFrequency" ConfigRule where
  type PropertyType "MaximumExecutionFrequency" ConfigRule = Value Prelude.Text
  set newValue ConfigRule {..}
    = ConfigRule
        {maximumExecutionFrequency = Prelude.pure newValue, ..}
instance Property "Scope" ConfigRule where
  type PropertyType "Scope" ConfigRule = ScopeProperty
  set newValue ConfigRule {..}
    = ConfigRule {scope = Prelude.pure newValue, ..}
instance Property "Source" ConfigRule where
  type PropertyType "Source" ConfigRule = SourceProperty
  set newValue ConfigRule {..} = ConfigRule {source = newValue, ..}