module Stratosphere.SecurityHub.AutomationRule.AutomationRulesActionProperty (
        module Exports, AutomationRulesActionProperty(..),
        mkAutomationRulesActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.AutomationRulesFindingFieldsUpdateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomationRulesActionProperty
  = AutomationRulesActionProperty {findingFieldsUpdate :: AutomationRulesFindingFieldsUpdateProperty,
                                   type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomationRulesActionProperty ::
  AutomationRulesFindingFieldsUpdateProperty
  -> Value Prelude.Text -> AutomationRulesActionProperty
mkAutomationRulesActionProperty findingFieldsUpdate type'
  = AutomationRulesActionProperty
      {findingFieldsUpdate = findingFieldsUpdate, type' = type'}
instance ToResourceProperties AutomationRulesActionProperty where
  toResourceProperties AutomationRulesActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.AutomationRulesAction",
         supportsTags = Prelude.False,
         properties = ["FindingFieldsUpdate" JSON..= findingFieldsUpdate,
                       "Type" JSON..= type']}
instance JSON.ToJSON AutomationRulesActionProperty where
  toJSON AutomationRulesActionProperty {..}
    = JSON.object
        ["FindingFieldsUpdate" JSON..= findingFieldsUpdate,
         "Type" JSON..= type']
instance Property "FindingFieldsUpdate" AutomationRulesActionProperty where
  type PropertyType "FindingFieldsUpdate" AutomationRulesActionProperty = AutomationRulesFindingFieldsUpdateProperty
  set newValue AutomationRulesActionProperty {..}
    = AutomationRulesActionProperty
        {findingFieldsUpdate = newValue, ..}
instance Property "Type" AutomationRulesActionProperty where
  type PropertyType "Type" AutomationRulesActionProperty = Value Prelude.Text
  set newValue AutomationRulesActionProperty {..}
    = AutomationRulesActionProperty {type' = newValue, ..}