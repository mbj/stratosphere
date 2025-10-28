module Stratosphere.IoTAnalytics.Dataset.LateDataRuleProperty (
        module Exports, LateDataRuleProperty(..), mkLateDataRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.LateDataRuleConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LateDataRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-latedatarule.html>
    LateDataRuleProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-latedatarule.html#cfn-iotanalytics-dataset-latedatarule-ruleconfiguration>
                          ruleConfiguration :: LateDataRuleConfigurationProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-latedatarule.html#cfn-iotanalytics-dataset-latedatarule-rulename>
                          ruleName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLateDataRuleProperty ::
  LateDataRuleConfigurationProperty -> LateDataRuleProperty
mkLateDataRuleProperty ruleConfiguration
  = LateDataRuleProperty
      {haddock_workaround_ = (), ruleConfiguration = ruleConfiguration,
       ruleName = Prelude.Nothing}
instance ToResourceProperties LateDataRuleProperty where
  toResourceProperties LateDataRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.LateDataRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RuleConfiguration" JSON..= ruleConfiguration]
                           (Prelude.catMaybes [(JSON..=) "RuleName" Prelude.<$> ruleName]))}
instance JSON.ToJSON LateDataRuleProperty where
  toJSON LateDataRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RuleConfiguration" JSON..= ruleConfiguration]
              (Prelude.catMaybes [(JSON..=) "RuleName" Prelude.<$> ruleName])))
instance Property "RuleConfiguration" LateDataRuleProperty where
  type PropertyType "RuleConfiguration" LateDataRuleProperty = LateDataRuleConfigurationProperty
  set newValue LateDataRuleProperty {..}
    = LateDataRuleProperty {ruleConfiguration = newValue, ..}
instance Property "RuleName" LateDataRuleProperty where
  type PropertyType "RuleName" LateDataRuleProperty = Value Prelude.Text
  set newValue LateDataRuleProperty {..}
    = LateDataRuleProperty {ruleName = Prelude.pure newValue, ..}