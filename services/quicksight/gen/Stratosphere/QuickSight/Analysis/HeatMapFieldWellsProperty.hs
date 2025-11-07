module Stratosphere.QuickSight.Analysis.HeatMapFieldWellsProperty (
        module Exports, HeatMapFieldWellsProperty(..),
        mkHeatMapFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.HeatMapAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data HeatMapFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-heatmapfieldwells.html>
    HeatMapFieldWellsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-heatmapfieldwells.html#cfn-quicksight-analysis-heatmapfieldwells-heatmapaggregatedfieldwells>
                               heatMapAggregatedFieldWells :: (Prelude.Maybe HeatMapAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeatMapFieldWellsProperty :: HeatMapFieldWellsProperty
mkHeatMapFieldWellsProperty
  = HeatMapFieldWellsProperty
      {haddock_workaround_ = (),
       heatMapAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties HeatMapFieldWellsProperty where
  toResourceProperties HeatMapFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.HeatMapFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeatMapAggregatedFieldWells"
                              Prelude.<$> heatMapAggregatedFieldWells])}
instance JSON.ToJSON HeatMapFieldWellsProperty where
  toJSON HeatMapFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeatMapAggregatedFieldWells"
                 Prelude.<$> heatMapAggregatedFieldWells]))
instance Property "HeatMapAggregatedFieldWells" HeatMapFieldWellsProperty where
  type PropertyType "HeatMapAggregatedFieldWells" HeatMapFieldWellsProperty = HeatMapAggregatedFieldWellsProperty
  set newValue HeatMapFieldWellsProperty {..}
    = HeatMapFieldWellsProperty
        {heatMapAggregatedFieldWells = Prelude.pure newValue, ..}