module Stratosphere.AccessAnalyzer.Analyzer.AnalysisRuleCriteriaProperty (
        AnalysisRuleCriteriaProperty(..), mkAnalysisRuleCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisRuleCriteriaProperty
  = AnalysisRuleCriteriaProperty {accountIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  resourceTags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisRuleCriteriaProperty :: AnalysisRuleCriteriaProperty
mkAnalysisRuleCriteriaProperty
  = AnalysisRuleCriteriaProperty
      {accountIds = Prelude.Nothing, resourceTags = Prelude.Nothing}
instance ToResourceProperties AnalysisRuleCriteriaProperty where
  toResourceProperties AnalysisRuleCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.AnalysisRuleCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountIds" Prelude.<$> accountIds,
                            (JSON..=) "ResourceTags" Prelude.<$> resourceTags])}
instance JSON.ToJSON AnalysisRuleCriteriaProperty where
  toJSON AnalysisRuleCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountIds" Prelude.<$> accountIds,
               (JSON..=) "ResourceTags" Prelude.<$> resourceTags]))
instance Property "AccountIds" AnalysisRuleCriteriaProperty where
  type PropertyType "AccountIds" AnalysisRuleCriteriaProperty = ValueList Prelude.Text
  set newValue AnalysisRuleCriteriaProperty {..}
    = AnalysisRuleCriteriaProperty
        {accountIds = Prelude.pure newValue, ..}
instance Property "ResourceTags" AnalysisRuleCriteriaProperty where
  type PropertyType "ResourceTags" AnalysisRuleCriteriaProperty = JSON.Object
  set newValue AnalysisRuleCriteriaProperty {..}
    = AnalysisRuleCriteriaProperty
        {resourceTags = Prelude.pure newValue, ..}