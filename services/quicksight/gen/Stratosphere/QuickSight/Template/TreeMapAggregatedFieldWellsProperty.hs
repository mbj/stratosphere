module Stratosphere.QuickSight.Template.TreeMapAggregatedFieldWellsProperty (
        module Exports, TreeMapAggregatedFieldWellsProperty(..),
        mkTreeMapAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data TreeMapAggregatedFieldWellsProperty
  = TreeMapAggregatedFieldWellsProperty {colors :: (Prelude.Maybe [MeasureFieldProperty]),
                                         groups :: (Prelude.Maybe [DimensionFieldProperty]),
                                         sizes :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTreeMapAggregatedFieldWellsProperty ::
  TreeMapAggregatedFieldWellsProperty
mkTreeMapAggregatedFieldWellsProperty
  = TreeMapAggregatedFieldWellsProperty
      {colors = Prelude.Nothing, groups = Prelude.Nothing,
       sizes = Prelude.Nothing}
instance ToResourceProperties TreeMapAggregatedFieldWellsProperty where
  toResourceProperties TreeMapAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TreeMapAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Colors" Prelude.<$> colors,
                            (JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "Sizes" Prelude.<$> sizes])}
instance JSON.ToJSON TreeMapAggregatedFieldWellsProperty where
  toJSON TreeMapAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Colors" Prelude.<$> colors,
               (JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "Sizes" Prelude.<$> sizes]))
instance Property "Colors" TreeMapAggregatedFieldWellsProperty where
  type PropertyType "Colors" TreeMapAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue TreeMapAggregatedFieldWellsProperty {..}
    = TreeMapAggregatedFieldWellsProperty
        {colors = Prelude.pure newValue, ..}
instance Property "Groups" TreeMapAggregatedFieldWellsProperty where
  type PropertyType "Groups" TreeMapAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue TreeMapAggregatedFieldWellsProperty {..}
    = TreeMapAggregatedFieldWellsProperty
        {groups = Prelude.pure newValue, ..}
instance Property "Sizes" TreeMapAggregatedFieldWellsProperty where
  type PropertyType "Sizes" TreeMapAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue TreeMapAggregatedFieldWellsProperty {..}
    = TreeMapAggregatedFieldWellsProperty
        {sizes = Prelude.pure newValue, ..}