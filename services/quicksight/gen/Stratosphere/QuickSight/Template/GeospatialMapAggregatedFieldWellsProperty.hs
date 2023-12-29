module Stratosphere.QuickSight.Template.GeospatialMapAggregatedFieldWellsProperty (
        module Exports, GeospatialMapAggregatedFieldWellsProperty(..),
        mkGeospatialMapAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialMapAggregatedFieldWellsProperty
  = GeospatialMapAggregatedFieldWellsProperty {colors :: (Prelude.Maybe [DimensionFieldProperty]),
                                               geospatial :: (Prelude.Maybe [DimensionFieldProperty]),
                                               values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapAggregatedFieldWellsProperty ::
  GeospatialMapAggregatedFieldWellsProperty
mkGeospatialMapAggregatedFieldWellsProperty
  = GeospatialMapAggregatedFieldWellsProperty
      {colors = Prelude.Nothing, geospatial = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties GeospatialMapAggregatedFieldWellsProperty where
  toResourceProperties GeospatialMapAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialMapAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Colors" Prelude.<$> colors,
                            (JSON..=) "Geospatial" Prelude.<$> geospatial,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON GeospatialMapAggregatedFieldWellsProperty where
  toJSON GeospatialMapAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Colors" Prelude.<$> colors,
               (JSON..=) "Geospatial" Prelude.<$> geospatial,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Colors" GeospatialMapAggregatedFieldWellsProperty where
  type PropertyType "Colors" GeospatialMapAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue GeospatialMapAggregatedFieldWellsProperty {..}
    = GeospatialMapAggregatedFieldWellsProperty
        {colors = Prelude.pure newValue, ..}
instance Property "Geospatial" GeospatialMapAggregatedFieldWellsProperty where
  type PropertyType "Geospatial" GeospatialMapAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue GeospatialMapAggregatedFieldWellsProperty {..}
    = GeospatialMapAggregatedFieldWellsProperty
        {geospatial = Prelude.pure newValue, ..}
instance Property "Values" GeospatialMapAggregatedFieldWellsProperty where
  type PropertyType "Values" GeospatialMapAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue GeospatialMapAggregatedFieldWellsProperty {..}
    = GeospatialMapAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}