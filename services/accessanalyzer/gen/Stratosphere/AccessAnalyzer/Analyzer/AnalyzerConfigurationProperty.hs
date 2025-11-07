module Stratosphere.AccessAnalyzer.Analyzer.AnalyzerConfigurationProperty (
        module Exports, AnalyzerConfigurationProperty(..),
        mkAnalyzerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.InternalAccessConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.UnusedAccessConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AnalyzerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-analyzerconfiguration.html>
    AnalyzerConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-analyzerconfiguration.html#cfn-accessanalyzer-analyzer-analyzerconfiguration-internalaccessconfiguration>
                                   internalAccessConfiguration :: (Prelude.Maybe InternalAccessConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-analyzerconfiguration.html#cfn-accessanalyzer-analyzer-analyzerconfiguration-unusedaccessconfiguration>
                                   unusedAccessConfiguration :: (Prelude.Maybe UnusedAccessConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalyzerConfigurationProperty :: AnalyzerConfigurationProperty
mkAnalyzerConfigurationProperty
  = AnalyzerConfigurationProperty
      {haddock_workaround_ = (),
       internalAccessConfiguration = Prelude.Nothing,
       unusedAccessConfiguration = Prelude.Nothing}
instance ToResourceProperties AnalyzerConfigurationProperty where
  toResourceProperties AnalyzerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.AnalyzerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InternalAccessConfiguration"
                              Prelude.<$> internalAccessConfiguration,
                            (JSON..=) "UnusedAccessConfiguration"
                              Prelude.<$> unusedAccessConfiguration])}
instance JSON.ToJSON AnalyzerConfigurationProperty where
  toJSON AnalyzerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InternalAccessConfiguration"
                 Prelude.<$> internalAccessConfiguration,
               (JSON..=) "UnusedAccessConfiguration"
                 Prelude.<$> unusedAccessConfiguration]))
instance Property "InternalAccessConfiguration" AnalyzerConfigurationProperty where
  type PropertyType "InternalAccessConfiguration" AnalyzerConfigurationProperty = InternalAccessConfigurationProperty
  set newValue AnalyzerConfigurationProperty {..}
    = AnalyzerConfigurationProperty
        {internalAccessConfiguration = Prelude.pure newValue, ..}
instance Property "UnusedAccessConfiguration" AnalyzerConfigurationProperty where
  type PropertyType "UnusedAccessConfiguration" AnalyzerConfigurationProperty = UnusedAccessConfigurationProperty
  set newValue AnalyzerConfigurationProperty {..}
    = AnalyzerConfigurationProperty
        {unusedAccessConfiguration = Prelude.pure newValue, ..}