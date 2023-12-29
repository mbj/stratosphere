module Stratosphere.QuickSight.Template.ScatterPlotFieldWellsProperty (
        module Exports, ScatterPlotFieldWellsProperty(..),
        mkScatterPlotFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ScatterPlotCategoricallyAggregatedFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ScatterPlotUnaggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotFieldWellsProperty
  = ScatterPlotFieldWellsProperty {scatterPlotCategoricallyAggregatedFieldWells :: (Prelude.Maybe ScatterPlotCategoricallyAggregatedFieldWellsProperty),
                                   scatterPlotUnaggregatedFieldWells :: (Prelude.Maybe ScatterPlotUnaggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScatterPlotFieldWellsProperty :: ScatterPlotFieldWellsProperty
mkScatterPlotFieldWellsProperty
  = ScatterPlotFieldWellsProperty
      {scatterPlotCategoricallyAggregatedFieldWells = Prelude.Nothing,
       scatterPlotUnaggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties ScatterPlotFieldWellsProperty where
  toResourceProperties ScatterPlotFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ScatterPlotFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScatterPlotCategoricallyAggregatedFieldWells"
                              Prelude.<$> scatterPlotCategoricallyAggregatedFieldWells,
                            (JSON..=) "ScatterPlotUnaggregatedFieldWells"
                              Prelude.<$> scatterPlotUnaggregatedFieldWells])}
instance JSON.ToJSON ScatterPlotFieldWellsProperty where
  toJSON ScatterPlotFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScatterPlotCategoricallyAggregatedFieldWells"
                 Prelude.<$> scatterPlotCategoricallyAggregatedFieldWells,
               (JSON..=) "ScatterPlotUnaggregatedFieldWells"
                 Prelude.<$> scatterPlotUnaggregatedFieldWells]))
instance Property "ScatterPlotCategoricallyAggregatedFieldWells" ScatterPlotFieldWellsProperty where
  type PropertyType "ScatterPlotCategoricallyAggregatedFieldWells" ScatterPlotFieldWellsProperty = ScatterPlotCategoricallyAggregatedFieldWellsProperty
  set newValue ScatterPlotFieldWellsProperty {..}
    = ScatterPlotFieldWellsProperty
        {scatterPlotCategoricallyAggregatedFieldWells = Prelude.pure
                                                          newValue,
         ..}
instance Property "ScatterPlotUnaggregatedFieldWells" ScatterPlotFieldWellsProperty where
  type PropertyType "ScatterPlotUnaggregatedFieldWells" ScatterPlotFieldWellsProperty = ScatterPlotUnaggregatedFieldWellsProperty
  set newValue ScatterPlotFieldWellsProperty {..}
    = ScatterPlotFieldWellsProperty
        {scatterPlotUnaggregatedFieldWells = Prelude.pure newValue, ..}