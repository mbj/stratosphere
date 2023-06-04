module Stratosphere.QuickSight.Analysis.AnalysisDefaultsProperty (
        module Exports, AnalysisDefaultsProperty(..),
        mkAnalysisDefaultsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultNewSheetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisDefaultsProperty
  = AnalysisDefaultsProperty {defaultNewSheetConfiguration :: DefaultNewSheetConfigurationProperty}
mkAnalysisDefaultsProperty ::
  DefaultNewSheetConfigurationProperty -> AnalysisDefaultsProperty
mkAnalysisDefaultsProperty defaultNewSheetConfiguration
  = AnalysisDefaultsProperty
      {defaultNewSheetConfiguration = defaultNewSheetConfiguration}
instance ToResourceProperties AnalysisDefaultsProperty where
  toResourceProperties AnalysisDefaultsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AnalysisDefaults",
         supportsTags = Prelude.False,
         properties = ["DefaultNewSheetConfiguration"
                         JSON..= defaultNewSheetConfiguration]}
instance JSON.ToJSON AnalysisDefaultsProperty where
  toJSON AnalysisDefaultsProperty {..}
    = JSON.object
        ["DefaultNewSheetConfiguration"
           JSON..= defaultNewSheetConfiguration]
instance Property "DefaultNewSheetConfiguration" AnalysisDefaultsProperty where
  type PropertyType "DefaultNewSheetConfiguration" AnalysisDefaultsProperty = DefaultNewSheetConfigurationProperty
  set newValue AnalysisDefaultsProperty {}
    = AnalysisDefaultsProperty
        {defaultNewSheetConfiguration = newValue, ..}