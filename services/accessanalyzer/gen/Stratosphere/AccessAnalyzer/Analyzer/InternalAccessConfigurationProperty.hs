module Stratosphere.AccessAnalyzer.Analyzer.InternalAccessConfigurationProperty (
        module Exports, InternalAccessConfigurationProperty(..),
        mkInternalAccessConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.InternalAccessAnalysisRuleProperty as Exports
import Stratosphere.ResourceProperties
data InternalAccessConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessconfiguration.html>
    InternalAccessConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessconfiguration.html#cfn-accessanalyzer-analyzer-internalaccessconfiguration-internalaccessanalysisrule>
                                         internalAccessAnalysisRule :: (Prelude.Maybe InternalAccessAnalysisRuleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInternalAccessConfigurationProperty ::
  InternalAccessConfigurationProperty
mkInternalAccessConfigurationProperty
  = InternalAccessConfigurationProperty
      {haddock_workaround_ = (),
       internalAccessAnalysisRule = Prelude.Nothing}
instance ToResourceProperties InternalAccessConfigurationProperty where
  toResourceProperties InternalAccessConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.InternalAccessConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InternalAccessAnalysisRule"
                              Prelude.<$> internalAccessAnalysisRule])}
instance JSON.ToJSON InternalAccessConfigurationProperty where
  toJSON InternalAccessConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InternalAccessAnalysisRule"
                 Prelude.<$> internalAccessAnalysisRule]))
instance Property "InternalAccessAnalysisRule" InternalAccessConfigurationProperty where
  type PropertyType "InternalAccessAnalysisRule" InternalAccessConfigurationProperty = InternalAccessAnalysisRuleProperty
  set newValue InternalAccessConfigurationProperty {..}
    = InternalAccessConfigurationProperty
        {internalAccessAnalysisRule = Prelude.pure newValue, ..}