module Stratosphere.QuickSight.Analysis.FilledMapAggregatedFieldWellsProperty (
        module Exports, FilledMapAggregatedFieldWellsProperty(..),
        mkFilledMapAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapaggregatedfieldwells.html>
    FilledMapAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapaggregatedfieldwells.html#cfn-quicksight-analysis-filledmapaggregatedfieldwells-geospatial>
                                           geospatial :: (Prelude.Maybe [DimensionFieldProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapaggregatedfieldwells.html#cfn-quicksight-analysis-filledmapaggregatedfieldwells-values>
                                           values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapAggregatedFieldWellsProperty ::
  FilledMapAggregatedFieldWellsProperty
mkFilledMapAggregatedFieldWellsProperty
  = FilledMapAggregatedFieldWellsProperty
      {haddock_workaround_ = (), geospatial = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties FilledMapAggregatedFieldWellsProperty where
  toResourceProperties FilledMapAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilledMapAggregatedFieldWells",
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