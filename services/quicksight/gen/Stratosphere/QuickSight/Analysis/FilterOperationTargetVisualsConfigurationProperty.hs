module Stratosphere.QuickSight.Analysis.FilterOperationTargetVisualsConfigurationProperty (
        module Exports,
        FilterOperationTargetVisualsConfigurationProperty(..),
        mkFilterOperationTargetVisualsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SameSheetTargetVisualConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FilterOperationTargetVisualsConfigurationProperty
  = FilterOperationTargetVisualsConfigurationProperty {sameSheetTargetVisualConfiguration :: (Prelude.Maybe SameSheetTargetVisualConfigurationProperty)}
mkFilterOperationTargetVisualsConfigurationProperty ::
  FilterOperationTargetVisualsConfigurationProperty
mkFilterOperationTargetVisualsConfigurationProperty
  = FilterOperationTargetVisualsConfigurationProperty
      {sameSheetTargetVisualConfiguration = Prelude.Nothing}
instance ToResourceProperties FilterOperationTargetVisualsConfigurationProperty where
  toResourceProperties
    FilterOperationTargetVisualsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterOperationTargetVisualsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SameSheetTargetVisualConfiguration"
                              Prelude.<$> sameSheetTargetVisualConfiguration])}
instance JSON.ToJSON FilterOperationTargetVisualsConfigurationProperty where
  toJSON FilterOperationTargetVisualsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SameSheetTargetVisualConfiguration"
                 Prelude.<$> sameSheetTargetVisualConfiguration]))
instance Property "SameSheetTargetVisualConfiguration" FilterOperationTargetVisualsConfigurationProperty where
  type PropertyType "SameSheetTargetVisualConfiguration" FilterOperationTargetVisualsConfigurationProperty = SameSheetTargetVisualConfigurationProperty
  set newValue FilterOperationTargetVisualsConfigurationProperty {}
    = FilterOperationTargetVisualsConfigurationProperty
        {sameSheetTargetVisualConfiguration = Prelude.pure newValue, ..}