module Stratosphere.QuickSight.Dashboard.ScatterPlotFieldWellsProperty (
        module Exports, ScatterPlotFieldWellsProperty(..),
        mkScatterPlotFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ScatterPlotCategoricallyAggregatedFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ScatterPlotUnaggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotfieldwells.html>
    ScatterPlotFieldWellsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotfieldwells.html#cfn-quicksight-dashboard-scatterplotfieldwells-scatterplotcategoricallyaggregatedfieldwells>
                                   scatterPlotCategoricallyAggregatedFieldWells :: (Prelude.Maybe ScatterPlotCategoricallyAggregatedFieldWellsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotfieldwells.html#cfn-quicksight-dashboard-scatterplotfieldwells-scatterplotunaggregatedfieldwells>
                                   scatterPlotUnaggregatedFieldWells :: (Prelude.Maybe ScatterPlotUnaggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScatterPlotFieldWellsProperty :: ScatterPlotFieldWellsProperty
mkScatterPlotFieldWellsProperty
  = ScatterPlotFieldWellsProperty
      {haddock_workaround_ = (),
       scatterPlotCategoricallyAggregatedFieldWells = Prelude.Nothing,
       scatterPlotUnaggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties ScatterPlotFieldWellsProperty where
  toResourceProperties ScatterPlotFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ScatterPlotFieldWells",
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