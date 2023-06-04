module Stratosphere.QuickSight.Template.SankeyDiagramAggregatedFieldWellsProperty (
        module Exports, SankeyDiagramAggregatedFieldWellsProperty(..),
        mkSankeyDiagramAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data SankeyDiagramAggregatedFieldWellsProperty
  = SankeyDiagramAggregatedFieldWellsProperty {destination :: (Prelude.Maybe [DimensionFieldProperty]),
                                               source :: (Prelude.Maybe [DimensionFieldProperty]),
                                               weight :: (Prelude.Maybe [MeasureFieldProperty])}
mkSankeyDiagramAggregatedFieldWellsProperty ::
  SankeyDiagramAggregatedFieldWellsProperty
mkSankeyDiagramAggregatedFieldWellsProperty
  = SankeyDiagramAggregatedFieldWellsProperty
      {destination = Prelude.Nothing, source = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties SankeyDiagramAggregatedFieldWellsProperty where
  toResourceProperties SankeyDiagramAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SankeyDiagramAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "Source" Prelude.<$> source,
                            (JSON..=) "Weight" Prelude.<$> weight])}
instance JSON.ToJSON SankeyDiagramAggregatedFieldWellsProperty where
  toJSON SankeyDiagramAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "Source" Prelude.<$> source,
               (JSON..=) "Weight" Prelude.<$> weight]))
instance Property "Destination" SankeyDiagramAggregatedFieldWellsProperty where
  type PropertyType "Destination" SankeyDiagramAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue SankeyDiagramAggregatedFieldWellsProperty {..}
    = SankeyDiagramAggregatedFieldWellsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "Source" SankeyDiagramAggregatedFieldWellsProperty where
  type PropertyType "Source" SankeyDiagramAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue SankeyDiagramAggregatedFieldWellsProperty {..}
    = SankeyDiagramAggregatedFieldWellsProperty
        {source = Prelude.pure newValue, ..}
instance Property "Weight" SankeyDiagramAggregatedFieldWellsProperty where
  type PropertyType "Weight" SankeyDiagramAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue SankeyDiagramAggregatedFieldWellsProperty {..}
    = SankeyDiagramAggregatedFieldWellsProperty
        {weight = Prelude.pure newValue, ..}