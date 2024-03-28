module Stratosphere.QuickSight.Analysis.FilterOperationSelectedFieldsConfigurationProperty (
        module Exports,
        FilterOperationSelectedFieldsConfigurationProperty(..),
        mkFilterOperationSelectedFieldsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterOperationSelectedFieldsConfigurationProperty
  = FilterOperationSelectedFieldsConfigurationProperty {selectedColumns :: (Prelude.Maybe [ColumnIdentifierProperty]),
                                                        selectedFieldOptions :: (Prelude.Maybe (Value Prelude.Text)),
                                                        selectedFields :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterOperationSelectedFieldsConfigurationProperty ::
  FilterOperationSelectedFieldsConfigurationProperty
mkFilterOperationSelectedFieldsConfigurationProperty
  = FilterOperationSelectedFieldsConfigurationProperty
      {selectedColumns = Prelude.Nothing,
       selectedFieldOptions = Prelude.Nothing,
       selectedFields = Prelude.Nothing}
instance ToResourceProperties FilterOperationSelectedFieldsConfigurationProperty where
  toResourceProperties
    FilterOperationSelectedFieldsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterOperationSelectedFieldsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SelectedColumns" Prelude.<$> selectedColumns,
                            (JSON..=) "SelectedFieldOptions" Prelude.<$> selectedFieldOptions,
                            (JSON..=) "SelectedFields" Prelude.<$> selectedFields])}
instance JSON.ToJSON FilterOperationSelectedFieldsConfigurationProperty where
  toJSON FilterOperationSelectedFieldsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SelectedColumns" Prelude.<$> selectedColumns,
               (JSON..=) "SelectedFieldOptions" Prelude.<$> selectedFieldOptions,
               (JSON..=) "SelectedFields" Prelude.<$> selectedFields]))
instance Property "SelectedColumns" FilterOperationSelectedFieldsConfigurationProperty where
  type PropertyType "SelectedColumns" FilterOperationSelectedFieldsConfigurationProperty = [ColumnIdentifierProperty]
  set
    newValue
    FilterOperationSelectedFieldsConfigurationProperty {..}
    = FilterOperationSelectedFieldsConfigurationProperty
        {selectedColumns = Prelude.pure newValue, ..}
instance Property "SelectedFieldOptions" FilterOperationSelectedFieldsConfigurationProperty where
  type PropertyType "SelectedFieldOptions" FilterOperationSelectedFieldsConfigurationProperty = Value Prelude.Text
  set
    newValue
    FilterOperationSelectedFieldsConfigurationProperty {..}
    = FilterOperationSelectedFieldsConfigurationProperty
        {selectedFieldOptions = Prelude.pure newValue, ..}
instance Property "SelectedFields" FilterOperationSelectedFieldsConfigurationProperty where
  type PropertyType "SelectedFields" FilterOperationSelectedFieldsConfigurationProperty = ValueList Prelude.Text
  set
    newValue
    FilterOperationSelectedFieldsConfigurationProperty {..}
    = FilterOperationSelectedFieldsConfigurationProperty
        {selectedFields = Prelude.pure newValue, ..}