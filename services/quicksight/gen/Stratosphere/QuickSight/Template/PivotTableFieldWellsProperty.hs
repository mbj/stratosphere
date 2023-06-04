module Stratosphere.QuickSight.Template.PivotTableFieldWellsProperty (
        module Exports, PivotTableFieldWellsProperty(..),
        mkPivotTableFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableFieldWellsProperty
  = PivotTableFieldWellsProperty {pivotTableAggregatedFieldWells :: (Prelude.Maybe PivotTableAggregatedFieldWellsProperty)}
mkPivotTableFieldWellsProperty :: PivotTableFieldWellsProperty
mkPivotTableFieldWellsProperty
  = PivotTableFieldWellsProperty
      {pivotTableAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldWellsProperty where
  toResourceProperties PivotTableFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PivotTableAggregatedFieldWells"
                              Prelude.<$> pivotTableAggregatedFieldWells])}
instance JSON.ToJSON PivotTableFieldWellsProperty where
  toJSON PivotTableFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PivotTableAggregatedFieldWells"
                 Prelude.<$> pivotTableAggregatedFieldWells]))
instance Property "PivotTableAggregatedFieldWells" PivotTableFieldWellsProperty where
  type PropertyType "PivotTableAggregatedFieldWells" PivotTableFieldWellsProperty = PivotTableAggregatedFieldWellsProperty
  set newValue PivotTableFieldWellsProperty {}
    = PivotTableFieldWellsProperty
        {pivotTableAggregatedFieldWells = Prelude.pure newValue, ..}