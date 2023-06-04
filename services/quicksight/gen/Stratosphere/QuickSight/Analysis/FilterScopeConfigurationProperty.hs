module Stratosphere.QuickSight.Analysis.FilterScopeConfigurationProperty (
        module Exports, FilterScopeConfigurationProperty(..),
        mkFilterScopeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SelectedSheetsFilterScopeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FilterScopeConfigurationProperty
  = FilterScopeConfigurationProperty {selectedSheets :: (Prelude.Maybe SelectedSheetsFilterScopeConfigurationProperty)}
mkFilterScopeConfigurationProperty ::
  FilterScopeConfigurationProperty
mkFilterScopeConfigurationProperty
  = FilterScopeConfigurationProperty
      {selectedSheets = Prelude.Nothing}
instance ToResourceProperties FilterScopeConfigurationProperty where
  toResourceProperties FilterScopeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterScopeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SelectedSheets" Prelude.<$> selectedSheets])}
instance JSON.ToJSON FilterScopeConfigurationProperty where
  toJSON FilterScopeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SelectedSheets" Prelude.<$> selectedSheets]))
instance Property "SelectedSheets" FilterScopeConfigurationProperty where
  type PropertyType "SelectedSheets" FilterScopeConfigurationProperty = SelectedSheetsFilterScopeConfigurationProperty
  set newValue FilterScopeConfigurationProperty {}
    = FilterScopeConfigurationProperty
        {selectedSheets = Prelude.pure newValue, ..}