module Stratosphere.QuickSight.Template.TableAggregatedFieldWellsProperty (
        module Exports, TableAggregatedFieldWellsProperty(..),
        mkTableAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data TableAggregatedFieldWellsProperty
  = TableAggregatedFieldWellsProperty {groupBy :: (Prelude.Maybe [DimensionFieldProperty]),
                                       values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableAggregatedFieldWellsProperty ::
  TableAggregatedFieldWellsProperty
mkTableAggregatedFieldWellsProperty
  = TableAggregatedFieldWellsProperty
      {groupBy = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties TableAggregatedFieldWellsProperty where
  toResourceProperties TableAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupBy" Prelude.<$> groupBy,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON TableAggregatedFieldWellsProperty where
  toJSON TableAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupBy" Prelude.<$> groupBy,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "GroupBy" TableAggregatedFieldWellsProperty where
  type PropertyType "GroupBy" TableAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue TableAggregatedFieldWellsProperty {..}
    = TableAggregatedFieldWellsProperty
        {groupBy = Prelude.pure newValue, ..}
instance Property "Values" TableAggregatedFieldWellsProperty where
  type PropertyType "Values" TableAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue TableAggregatedFieldWellsProperty {..}
    = TableAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}