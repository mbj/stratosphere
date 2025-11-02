module Stratosphere.AccessAnalyzer.Analyzer.UnusedAccessConfigurationProperty (
        module Exports, UnusedAccessConfigurationProperty(..),
        mkUnusedAccessConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.AnalysisRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnusedAccessConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-unusedaccessconfiguration.html>
    UnusedAccessConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-unusedaccessconfiguration.html#cfn-accessanalyzer-analyzer-unusedaccessconfiguration-analysisrule>
                                       analysisRule :: (Prelude.Maybe AnalysisRuleProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-unusedaccessconfiguration.html#cfn-accessanalyzer-analyzer-unusedaccessconfiguration-unusedaccessage>
                                       unusedAccessAge :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUnusedAccessConfigurationProperty ::
  UnusedAccessConfigurationProperty
mkUnusedAccessConfigurationProperty
  = UnusedAccessConfigurationProperty
      {haddock_workaround_ = (), analysisRule = Prelude.Nothing,
       unusedAccessAge = Prelude.Nothing}
instance ToResourceProperties UnusedAccessConfigurationProperty where
  toResourceProperties UnusedAccessConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.UnusedAccessConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnalysisRule" Prelude.<$> analysisRule,
                            (JSON..=) "UnusedAccessAge" Prelude.<$> unusedAccessAge])}
instance JSON.ToJSON UnusedAccessConfigurationProperty where
  toJSON UnusedAccessConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnalysisRule" Prelude.<$> analysisRule,
               (JSON..=) "UnusedAccessAge" Prelude.<$> unusedAccessAge]))
instance Property "AnalysisRule" UnusedAccessConfigurationProperty where
  type PropertyType "AnalysisRule" UnusedAccessConfigurationProperty = AnalysisRuleProperty
  set newValue UnusedAccessConfigurationProperty {..}
    = UnusedAccessConfigurationProperty
        {analysisRule = Prelude.pure newValue, ..}
instance Property "UnusedAccessAge" UnusedAccessConfigurationProperty where
  type PropertyType "UnusedAccessAge" UnusedAccessConfigurationProperty = Value Prelude.Integer
  set newValue UnusedAccessConfigurationProperty {..}
    = UnusedAccessConfigurationProperty
        {unusedAccessAge = Prelude.pure newValue, ..}