module Stratosphere.Config.ConfigRule (
        module Exports, ConfigRule(..), mkConfigRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConfigRule.ScopeProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConfigRule.SourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigRule
  = ConfigRule {configRuleName :: (Prelude.Maybe (Value Prelude.Text)),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                inputParameters :: (Prelude.Maybe JSON.Object),
                maximumExecutionFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                scope :: (Prelude.Maybe ScopeProperty),
                source :: SourceProperty}
mkConfigRule :: SourceProperty -> ConfigRule
mkConfigRule source
  = ConfigRule
      {source = source, configRuleName = Prelude.Nothing,
       description = Prelude.Nothing, inputParameters = Prelude.Nothing,
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
                              [(JSON..=) "ConfigRuleName" Prelude.<$> configRuleName,
                               (JSON..=) "Description" Prelude.<$> description,
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
                 [(JSON..=) "ConfigRuleName" Prelude.<$> configRuleName,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InputParameters" Prelude.<$> inputParameters,
                  (JSON..=) "MaximumExecutionFrequency"
                    Prelude.<$> maximumExecutionFrequency,
                  (JSON..=) "Scope" Prelude.<$> scope])))
instance Property "ConfigRuleName" ConfigRule where
  type PropertyType "ConfigRuleName" ConfigRule = Value Prelude.Text
  set newValue ConfigRule {..}
    = ConfigRule {configRuleName = Prelude.pure newValue, ..}
instance Property "Description" ConfigRule where
  type PropertyType "Description" ConfigRule = Value Prelude.Text
  set newValue ConfigRule {..}
    = ConfigRule {description = Prelude.pure newValue, ..}
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