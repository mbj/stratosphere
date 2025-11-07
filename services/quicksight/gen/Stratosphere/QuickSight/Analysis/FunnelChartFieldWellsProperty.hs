module Stratosphere.QuickSight.Analysis.FunnelChartFieldWellsProperty (
        module Exports, FunnelChartFieldWellsProperty(..),
        mkFunnelChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FunnelChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data FunnelChartFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartfieldwells.html>
    FunnelChartFieldWellsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartfieldwells.html#cfn-quicksight-analysis-funnelchartfieldwells-funnelchartaggregatedfieldwells>
                                   funnelChartAggregatedFieldWells :: (Prelude.Maybe FunnelChartAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunnelChartFieldWellsProperty :: FunnelChartFieldWellsProperty
mkFunnelChartFieldWellsProperty
  = FunnelChartFieldWellsProperty
      {haddock_workaround_ = (),
       funnelChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties FunnelChartFieldWellsProperty where
  toResourceProperties FunnelChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FunnelChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FunnelChartAggregatedFieldWells"
                              Prelude.<$> funnelChartAggregatedFieldWells])}
instance JSON.ToJSON FunnelChartFieldWellsProperty where
  toJSON FunnelChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FunnelChartAggregatedFieldWells"
                 Prelude.<$> funnelChartAggregatedFieldWells]))
instance Property "FunnelChartAggregatedFieldWells" FunnelChartFieldWellsProperty where
  type PropertyType "FunnelChartAggregatedFieldWells" FunnelChartFieldWellsProperty = FunnelChartAggregatedFieldWellsProperty
  set newValue FunnelChartFieldWellsProperty {..}
    = FunnelChartFieldWellsProperty
        {funnelChartAggregatedFieldWells = Prelude.pure newValue, ..}