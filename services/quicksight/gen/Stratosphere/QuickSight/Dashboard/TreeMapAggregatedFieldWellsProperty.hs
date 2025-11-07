module Stratosphere.QuickSight.Dashboard.TreeMapAggregatedFieldWellsProperty (
        module Exports, TreeMapAggregatedFieldWellsProperty(..),
        mkTreeMapAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data TreeMapAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-treemapaggregatedfieldwells.html>
    TreeMapAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-treemapaggregatedfieldwells.html#cfn-quicksight-dashboard-treemapaggregatedfieldwells-colors>
                                         colors :: (Prelude.Maybe [MeasureFieldProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-treemapaggregatedfieldwells.html#cfn-quicksight-dashboard-treemapaggregatedfieldwells-groups>
                                         groups :: (Prelude.Maybe [DimensionFieldProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-treemapaggregatedfieldwells.html#cfn-quicksight-dashboard-treemapaggregatedfieldwells-sizes>
                                         sizes :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTreeMapAggregatedFieldWellsProperty ::
  TreeMapAggregatedFieldWellsProperty
mkTreeMapAggregatedFieldWellsProperty
  = TreeMapAggregatedFieldWellsProperty
      {haddock_workaround_ = (), colors = Prelude.Nothing,
       groups = Prelude.Nothing, sizes = Prelude.Nothing}
instance ToResourceProperties TreeMapAggregatedFieldWellsProperty where
  toResourceProperties TreeMapAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TreeMapAggregatedFieldWells",
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