module Stratosphere.QuickSight.Template.FilledMapAggregatedFieldWellsProperty (
        module Exports, FilledMapAggregatedFieldWellsProperty(..),
        mkFilledMapAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapAggregatedFieldWellsProperty
  = FilledMapAggregatedFieldWellsProperty {geospatial :: (Prelude.Maybe [DimensionFieldProperty]),
                                           values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapAggregatedFieldWellsProperty ::
  FilledMapAggregatedFieldWellsProperty
mkFilledMapAggregatedFieldWellsProperty
  = FilledMapAggregatedFieldWellsProperty
      {geospatial = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties FilledMapAggregatedFieldWellsProperty where
  toResourceProperties FilledMapAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilledMapAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Geospatial" Prelude.<$> geospatial,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON FilledMapAggregatedFieldWellsProperty where
  toJSON FilledMapAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Geospatial" Prelude.<$> geospatial,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Geospatial" FilledMapAggregatedFieldWellsProperty where
  type PropertyType "Geospatial" FilledMapAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue FilledMapAggregatedFieldWellsProperty {..}
    = FilledMapAggregatedFieldWellsProperty
        {geospatial = Prelude.pure newValue, ..}
instance Property "Values" FilledMapAggregatedFieldWellsProperty where
  type PropertyType "Values" FilledMapAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue FilledMapAggregatedFieldWellsProperty {..}
    = FilledMapAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}