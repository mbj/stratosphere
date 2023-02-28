module Stratosphere.AccessAnalyzer.Analyzer.ArchiveRuleProperty (
        module Exports, ArchiveRuleProperty(..), mkArchiveRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.FilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArchiveRuleProperty
  = ArchiveRuleProperty {filter :: [FilterProperty],
                         ruleName :: (Value Prelude.Text)}
mkArchiveRuleProperty ::
  [FilterProperty] -> Value Prelude.Text -> ArchiveRuleProperty
mkArchiveRuleProperty filter ruleName
  = ArchiveRuleProperty {filter = filter, ruleName = ruleName}
instance ToResourceProperties ArchiveRuleProperty where
  toResourceProperties ArchiveRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.ArchiveRule",
         supportsTags = Prelude.False,
         properties = ["Filter" JSON..= filter,
                       "RuleName" JSON..= ruleName]}
instance JSON.ToJSON ArchiveRuleProperty where
  toJSON ArchiveRuleProperty {..}
    = JSON.object
        ["Filter" JSON..= filter, "RuleName" JSON..= ruleName]
instance Property "Filter" ArchiveRuleProperty where
  type PropertyType "Filter" ArchiveRuleProperty = [FilterProperty]
  set newValue ArchiveRuleProperty {..}
    = ArchiveRuleProperty {filter = newValue, ..}
instance Property "RuleName" ArchiveRuleProperty where
  type PropertyType "RuleName" ArchiveRuleProperty = Value Prelude.Text
  set newValue ArchiveRuleProperty {..}
    = ArchiveRuleProperty {ruleName = newValue, ..}