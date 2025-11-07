module Stratosphere.AccessAnalyzer.Analyzer.InternalAccessAnalysisRuleProperty (
        module Exports, InternalAccessAnalysisRuleProperty(..),
        mkInternalAccessAnalysisRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.InternalAccessAnalysisRuleCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data InternalAccessAnalysisRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrule.html>
    InternalAccessAnalysisRuleProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrule.html#cfn-accessanalyzer-analyzer-internalaccessanalysisrule-inclusions>
                                        inclusions :: (Prelude.Maybe [InternalAccessAnalysisRuleCriteriaProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInternalAccessAnalysisRuleProperty ::
  InternalAccessAnalysisRuleProperty
mkInternalAccessAnalysisRuleProperty
  = InternalAccessAnalysisRuleProperty
      {haddock_workaround_ = (), inclusions = Prelude.Nothing}
instance ToResourceProperties InternalAccessAnalysisRuleProperty where
  toResourceProperties InternalAccessAnalysisRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.InternalAccessAnalysisRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Inclusions" Prelude.<$> inclusions])}
instance JSON.ToJSON InternalAccessAnalysisRuleProperty where
  toJSON InternalAccessAnalysisRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Inclusions" Prelude.<$> inclusions]))
instance Property "Inclusions" InternalAccessAnalysisRuleProperty where
  type PropertyType "Inclusions" InternalAccessAnalysisRuleProperty = [InternalAccessAnalysisRuleCriteriaProperty]
  set newValue InternalAccessAnalysisRuleProperty {..}
    = InternalAccessAnalysisRuleProperty
        {inclusions = Prelude.pure newValue, ..}