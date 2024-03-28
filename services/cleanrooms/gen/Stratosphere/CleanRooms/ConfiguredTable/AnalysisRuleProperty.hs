module Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleProperty (
        module Exports, AnalysisRuleProperty(..), mkAnalysisRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.ConfiguredTableAnalysisRulePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisRuleProperty
  = AnalysisRuleProperty {policy :: ConfiguredTableAnalysisRulePolicyProperty,
                          type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisRuleProperty ::
  ConfiguredTableAnalysisRulePolicyProperty
  -> Value Prelude.Text -> AnalysisRuleProperty
mkAnalysisRuleProperty policy type'
  = AnalysisRuleProperty {policy = policy, type' = type'}
instance ToResourceProperties AnalysisRuleProperty where
  toResourceProperties AnalysisRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.AnalysisRule",
         supportsTags = Prelude.False,
         properties = ["Policy" JSON..= policy, "Type" JSON..= type']}
instance JSON.ToJSON AnalysisRuleProperty where
  toJSON AnalysisRuleProperty {..}
    = JSON.object ["Policy" JSON..= policy, "Type" JSON..= type']
instance Property "Policy" AnalysisRuleProperty where
  type PropertyType "Policy" AnalysisRuleProperty = ConfiguredTableAnalysisRulePolicyProperty
  set newValue AnalysisRuleProperty {..}
    = AnalysisRuleProperty {policy = newValue, ..}
instance Property "Type" AnalysisRuleProperty where
  type PropertyType "Type" AnalysisRuleProperty = Value Prelude.Text
  set newValue AnalysisRuleProperty {..}
    = AnalysisRuleProperty {type' = newValue, ..}