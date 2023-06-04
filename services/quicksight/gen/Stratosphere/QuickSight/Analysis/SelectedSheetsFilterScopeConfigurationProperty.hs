module Stratosphere.QuickSight.Analysis.SelectedSheetsFilterScopeConfigurationProperty (
        module Exports, SelectedSheetsFilterScopeConfigurationProperty(..),
        mkSelectedSheetsFilterScopeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetVisualScopingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SelectedSheetsFilterScopeConfigurationProperty
  = SelectedSheetsFilterScopeConfigurationProperty {sheetVisualScopingConfigurations :: (Prelude.Maybe [SheetVisualScopingConfigurationProperty])}
mkSelectedSheetsFilterScopeConfigurationProperty ::
  SelectedSheetsFilterScopeConfigurationProperty
mkSelectedSheetsFilterScopeConfigurationProperty
  = SelectedSheetsFilterScopeConfigurationProperty
      {sheetVisualScopingConfigurations = Prelude.Nothing}
instance ToResourceProperties SelectedSheetsFilterScopeConfigurationProperty where
  toResourceProperties
    SelectedSheetsFilterScopeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SelectedSheetsFilterScopeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SheetVisualScopingConfigurations"
                              Prelude.<$> sheetVisualScopingConfigurations])}
instance JSON.ToJSON SelectedSheetsFilterScopeConfigurationProperty where
  toJSON SelectedSheetsFilterScopeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SheetVisualScopingConfigurations"
                 Prelude.<$> sheetVisualScopingConfigurations]))
instance Property "SheetVisualScopingConfigurations" SelectedSheetsFilterScopeConfigurationProperty where
  type PropertyType "SheetVisualScopingConfigurations" SelectedSheetsFilterScopeConfigurationProperty = [SheetVisualScopingConfigurationProperty]
  set newValue SelectedSheetsFilterScopeConfigurationProperty {}
    = SelectedSheetsFilterScopeConfigurationProperty
        {sheetVisualScopingConfigurations = Prelude.pure newValue, ..}