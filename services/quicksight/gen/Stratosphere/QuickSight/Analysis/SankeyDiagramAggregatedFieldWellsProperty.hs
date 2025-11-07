module Stratosphere.QuickSight.Analysis.SankeyDiagramAggregatedFieldWellsProperty (
        module Exports, SankeyDiagramAggregatedFieldWellsProperty(..),
        mkSankeyDiagramAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data SankeyDiagramAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sankeydiagramaggregatedfieldwells.html>
    SankeyDiagramAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sankeydiagramaggregatedfieldwells.html#cfn-quicksight-analysis-sankeydiagramaggregatedfieldwells-destination>
                                               destination :: (Prelude.Maybe [DimensionFieldProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sankeydiagramaggregatedfieldwells.html#cfn-quicksight-analysis-sankeydiagramaggregatedfieldwells-source>
                                               source :: (Prelude.Maybe [DimensionFieldProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sankeydiagramaggregatedfieldwells.html#cfn-quicksight-analysis-sankeydiagramaggregatedfieldwells-weight>
                                               weight :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSankeyDiagramAggregatedFieldWellsProperty ::
  SankeyDiagramAggregatedFieldWellsProperty
mkSankeyDiagramAggregatedFieldWellsProperty
  = SankeyDiagramAggregatedFieldWellsProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing,
       source = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties SankeyDiagramAggregatedFieldWellsProperty where
  toResourceProperties SankeyDiagramAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SankeyDiagramAggregatedFieldWells",
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