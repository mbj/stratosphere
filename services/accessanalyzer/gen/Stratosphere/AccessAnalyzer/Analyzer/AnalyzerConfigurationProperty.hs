module Stratosphere.AccessAnalyzer.Analyzer.AnalyzerConfigurationProperty (
        module Exports, AnalyzerConfigurationProperty(..),
        mkAnalyzerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.UnusedAccessConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AnalyzerConfigurationProperty
  = AnalyzerConfigurationProperty {unusedAccessConfiguration :: (Prelude.Maybe UnusedAccessConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalyzerConfigurationProperty :: AnalyzerConfigurationProperty
mkAnalyzerConfigurationProperty
  = AnalyzerConfigurationProperty
      {unusedAccessConfiguration = Prelude.Nothing}
instance ToResourceProperties AnalyzerConfigurationProperty where
  toResourceProperties AnalyzerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.AnalyzerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UnusedAccessConfiguration"
                              Prelude.<$> unusedAccessConfiguration])}
instance JSON.ToJSON AnalyzerConfigurationProperty where
  toJSON AnalyzerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UnusedAccessConfiguration"
                 Prelude.<$> unusedAccessConfiguration]))
instance Property "UnusedAccessConfiguration" AnalyzerConfigurationProperty where
  type PropertyType "UnusedAccessConfiguration" AnalyzerConfigurationProperty = UnusedAccessConfigurationProperty
  set newValue AnalyzerConfigurationProperty {}
    = AnalyzerConfigurationProperty
        {unusedAccessConfiguration = Prelude.pure newValue, ..}