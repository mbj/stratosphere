module Stratosphere.CleanRooms.ConfiguredTable.ConfiguredTableAnalysisRulePolicyV1Property (
        module Exports, ConfiguredTableAnalysisRulePolicyV1Property(..),
        mkConfiguredTableAnalysisRulePolicyV1Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleAggregationProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleCustomProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleListProperty as Exports
import Stratosphere.ResourceProperties
data ConfiguredTableAnalysisRulePolicyV1Property
  = ConfiguredTableAnalysisRulePolicyV1Property {aggregation :: (Prelude.Maybe AnalysisRuleAggregationProperty),
                                                 custom :: (Prelude.Maybe AnalysisRuleCustomProperty),
                                                 list :: (Prelude.Maybe AnalysisRuleListProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAnalysisRulePolicyV1Property ::
  ConfiguredTableAnalysisRulePolicyV1Property
mkConfiguredTableAnalysisRulePolicyV1Property
  = ConfiguredTableAnalysisRulePolicyV1Property
      {aggregation = Prelude.Nothing, custom = Prelude.Nothing,
       list = Prelude.Nothing}
instance ToResourceProperties ConfiguredTableAnalysisRulePolicyV1Property where
  toResourceProperties
    ConfiguredTableAnalysisRulePolicyV1Property {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.ConfiguredTableAnalysisRulePolicyV1",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                            (JSON..=) "Custom" Prelude.<$> custom,
                            (JSON..=) "List" Prelude.<$> list])}
instance JSON.ToJSON ConfiguredTableAnalysisRulePolicyV1Property where
  toJSON ConfiguredTableAnalysisRulePolicyV1Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Aggregation" Prelude.<$> aggregation,
               (JSON..=) "Custom" Prelude.<$> custom,
               (JSON..=) "List" Prelude.<$> list]))
instance Property "Aggregation" ConfiguredTableAnalysisRulePolicyV1Property where
  type PropertyType "Aggregation" ConfiguredTableAnalysisRulePolicyV1Property = AnalysisRuleAggregationProperty
  set newValue ConfiguredTableAnalysisRulePolicyV1Property {..}
    = ConfiguredTableAnalysisRulePolicyV1Property
        {aggregation = Prelude.pure newValue, ..}
instance Property "Custom" ConfiguredTableAnalysisRulePolicyV1Property where
  type PropertyType "Custom" ConfiguredTableAnalysisRulePolicyV1Property = AnalysisRuleCustomProperty
  set newValue ConfiguredTableAnalysisRulePolicyV1Property {..}
    = ConfiguredTableAnalysisRulePolicyV1Property
        {custom = Prelude.pure newValue, ..}
instance Property "List" ConfiguredTableAnalysisRulePolicyV1Property where
  type PropertyType "List" ConfiguredTableAnalysisRulePolicyV1Property = AnalysisRuleListProperty
  set newValue ConfiguredTableAnalysisRulePolicyV1Property {..}
    = ConfiguredTableAnalysisRulePolicyV1Property
        {list = Prelude.pure newValue, ..}