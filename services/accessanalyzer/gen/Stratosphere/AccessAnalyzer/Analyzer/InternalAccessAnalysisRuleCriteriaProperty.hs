module Stratosphere.AccessAnalyzer.Analyzer.InternalAccessAnalysisRuleCriteriaProperty (
        InternalAccessAnalysisRuleCriteriaProperty(..),
        mkInternalAccessAnalysisRuleCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InternalAccessAnalysisRuleCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrulecriteria.html>
    InternalAccessAnalysisRuleCriteriaProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrulecriteria.html#cfn-accessanalyzer-analyzer-internalaccessanalysisrulecriteria-accountids>
                                                accountIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrulecriteria.html#cfn-accessanalyzer-analyzer-internalaccessanalysisrulecriteria-resourcearns>
                                                resourceArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrulecriteria.html#cfn-accessanalyzer-analyzer-internalaccessanalysisrulecriteria-resourcetypes>
                                                resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInternalAccessAnalysisRuleCriteriaProperty ::
  InternalAccessAnalysisRuleCriteriaProperty
mkInternalAccessAnalysisRuleCriteriaProperty
  = InternalAccessAnalysisRuleCriteriaProperty
      {haddock_workaround_ = (), accountIds = Prelude.Nothing,
       resourceArns = Prelude.Nothing, resourceTypes = Prelude.Nothing}
instance ToResourceProperties InternalAccessAnalysisRuleCriteriaProperty where
  toResourceProperties
    InternalAccessAnalysisRuleCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.InternalAccessAnalysisRuleCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountIds" Prelude.<$> accountIds,
                            (JSON..=) "ResourceArns" Prelude.<$> resourceArns,
                            (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes])}
instance JSON.ToJSON InternalAccessAnalysisRuleCriteriaProperty where
  toJSON InternalAccessAnalysisRuleCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountIds" Prelude.<$> accountIds,
               (JSON..=) "ResourceArns" Prelude.<$> resourceArns,
               (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes]))
instance Property "AccountIds" InternalAccessAnalysisRuleCriteriaProperty where
  type PropertyType "AccountIds" InternalAccessAnalysisRuleCriteriaProperty = ValueList Prelude.Text
  set newValue InternalAccessAnalysisRuleCriteriaProperty {..}
    = InternalAccessAnalysisRuleCriteriaProperty
        {accountIds = Prelude.pure newValue, ..}
instance Property "ResourceArns" InternalAccessAnalysisRuleCriteriaProperty where
  type PropertyType "ResourceArns" InternalAccessAnalysisRuleCriteriaProperty = ValueList Prelude.Text
  set newValue InternalAccessAnalysisRuleCriteriaProperty {..}
    = InternalAccessAnalysisRuleCriteriaProperty
        {resourceArns = Prelude.pure newValue, ..}
instance Property "ResourceTypes" InternalAccessAnalysisRuleCriteriaProperty where
  type PropertyType "ResourceTypes" InternalAccessAnalysisRuleCriteriaProperty = ValueList Prelude.Text
  set newValue InternalAccessAnalysisRuleCriteriaProperty {..}
    = InternalAccessAnalysisRuleCriteriaProperty
        {resourceTypes = Prelude.pure newValue, ..}