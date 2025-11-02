module Stratosphere.AccessAnalyzer.Analyzer.AnalysisRuleProperty (
        module Exports, AnalysisRuleProperty(..), mkAnalysisRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.AnalysisRuleCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-analysisrule.html>
    AnalysisRuleProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-analysisrule.html#cfn-accessanalyzer-analyzer-analysisrule-exclusions>
                          exclusions :: (Prelude.Maybe [AnalysisRuleCriteriaProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisRuleProperty :: AnalysisRuleProperty
mkAnalysisRuleProperty
  = AnalysisRuleProperty
      {haddock_workaround_ = (), exclusions = Prelude.Nothing}
instance ToResourceProperties AnalysisRuleProperty where
  toResourceProperties AnalysisRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.AnalysisRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclusions" Prelude.<$> exclusions])}
instance JSON.ToJSON AnalysisRuleProperty where
  toJSON AnalysisRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclusions" Prelude.<$> exclusions]))
instance Property "Exclusions" AnalysisRuleProperty where
  type PropertyType "Exclusions" AnalysisRuleProperty = [AnalysisRuleCriteriaProperty]
  set newValue AnalysisRuleProperty {..}
    = AnalysisRuleProperty {exclusions = Prelude.pure newValue, ..}