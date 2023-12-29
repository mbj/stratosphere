module Stratosphere.QuickSight.Dashboard.FilterScopeConfigurationProperty (
        module Exports, FilterScopeConfigurationProperty(..),
        mkFilterScopeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SelectedSheetsFilterScopeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FilterScopeConfigurationProperty
  = FilterScopeConfigurationProperty {selectedSheets :: (Prelude.Maybe SelectedSheetsFilterScopeConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterScopeConfigurationProperty ::
  FilterScopeConfigurationProperty
mkFilterScopeConfigurationProperty
  = FilterScopeConfigurationProperty
      {selectedSheets = Prelude.Nothing}
instance ToResourceProperties FilterScopeConfigurationProperty where
  toResourceProperties FilterScopeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilterScopeConfiguration",
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