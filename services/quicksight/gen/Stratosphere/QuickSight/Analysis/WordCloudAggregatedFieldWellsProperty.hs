module Stratosphere.QuickSight.Analysis.WordCloudAggregatedFieldWellsProperty (
        module Exports, WordCloudAggregatedFieldWellsProperty(..),
        mkWordCloudAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data WordCloudAggregatedFieldWellsProperty
  = WordCloudAggregatedFieldWellsProperty {groupBy :: (Prelude.Maybe [DimensionFieldProperty]),
                                           size :: (Prelude.Maybe [MeasureFieldProperty])}
mkWordCloudAggregatedFieldWellsProperty ::
  WordCloudAggregatedFieldWellsProperty
mkWordCloudAggregatedFieldWellsProperty
  = WordCloudAggregatedFieldWellsProperty
      {groupBy = Prelude.Nothing, size = Prelude.Nothing}
instance ToResourceProperties WordCloudAggregatedFieldWellsProperty where
  toResourceProperties WordCloudAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.WordCloudAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupBy" Prelude.<$> groupBy,
                            (JSON..=) "Size" Prelude.<$> size])}
instance JSON.ToJSON WordCloudAggregatedFieldWellsProperty where
  toJSON WordCloudAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupBy" Prelude.<$> groupBy,
               (JSON..=) "Size" Prelude.<$> size]))
instance Property "GroupBy" WordCloudAggregatedFieldWellsProperty where
  type PropertyType "GroupBy" WordCloudAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue WordCloudAggregatedFieldWellsProperty {..}
    = WordCloudAggregatedFieldWellsProperty
        {groupBy = Prelude.pure newValue, ..}
instance Property "Size" WordCloudAggregatedFieldWellsProperty where
  type PropertyType "Size" WordCloudAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue WordCloudAggregatedFieldWellsProperty {..}
    = WordCloudAggregatedFieldWellsProperty
        {size = Prelude.pure newValue, ..}