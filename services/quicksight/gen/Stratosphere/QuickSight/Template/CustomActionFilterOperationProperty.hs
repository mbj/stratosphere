module Stratosphere.QuickSight.Template.CustomActionFilterOperationProperty (
        module Exports, CustomActionFilterOperationProperty(..),
        mkCustomActionFilterOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilterOperationSelectedFieldsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilterOperationTargetVisualsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CustomActionFilterOperationProperty
  = CustomActionFilterOperationProperty {selectedFieldsConfiguration :: FilterOperationSelectedFieldsConfigurationProperty,
                                         targetVisualsConfiguration :: FilterOperationTargetVisualsConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionFilterOperationProperty ::
  FilterOperationSelectedFieldsConfigurationProperty
  -> FilterOperationTargetVisualsConfigurationProperty
     -> CustomActionFilterOperationProperty
mkCustomActionFilterOperationProperty
  selectedFieldsConfiguration
  targetVisualsConfiguration
  = CustomActionFilterOperationProperty
      {selectedFieldsConfiguration = selectedFieldsConfiguration,
       targetVisualsConfiguration = targetVisualsConfiguration}
instance ToResourceProperties CustomActionFilterOperationProperty where
  toResourceProperties CustomActionFilterOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CustomActionFilterOperation",
         supportsTags = Prelude.False,
         properties = ["SelectedFieldsConfiguration"
                         JSON..= selectedFieldsConfiguration,
                       "TargetVisualsConfiguration" JSON..= targetVisualsConfiguration]}
instance JSON.ToJSON CustomActionFilterOperationProperty where
  toJSON CustomActionFilterOperationProperty {..}
    = JSON.object
        ["SelectedFieldsConfiguration" JSON..= selectedFieldsConfiguration,
         "TargetVisualsConfiguration" JSON..= targetVisualsConfiguration]
instance Property "SelectedFieldsConfiguration" CustomActionFilterOperationProperty where
  type PropertyType "SelectedFieldsConfiguration" CustomActionFilterOperationProperty = FilterOperationSelectedFieldsConfigurationProperty
  set newValue CustomActionFilterOperationProperty {..}
    = CustomActionFilterOperationProperty
        {selectedFieldsConfiguration = newValue, ..}
instance Property "TargetVisualsConfiguration" CustomActionFilterOperationProperty where
  type PropertyType "TargetVisualsConfiguration" CustomActionFilterOperationProperty = FilterOperationTargetVisualsConfigurationProperty
  set newValue CustomActionFilterOperationProperty {..}
    = CustomActionFilterOperationProperty
        {targetVisualsConfiguration = newValue, ..}