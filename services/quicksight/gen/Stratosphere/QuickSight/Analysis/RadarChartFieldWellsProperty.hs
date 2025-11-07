module Stratosphere.QuickSight.Analysis.RadarChartFieldWellsProperty (
        module Exports, RadarChartFieldWellsProperty(..),
        mkRadarChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.RadarChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data RadarChartFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartfieldwells.html>
    RadarChartFieldWellsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartfieldwells.html#cfn-quicksight-analysis-radarchartfieldwells-radarchartaggregatedfieldwells>
                                  radarChartAggregatedFieldWells :: (Prelude.Maybe RadarChartAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartFieldWellsProperty :: RadarChartFieldWellsProperty
mkRadarChartFieldWellsProperty
  = RadarChartFieldWellsProperty
      {haddock_workaround_ = (),
       radarChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties RadarChartFieldWellsProperty where
  toResourceProperties RadarChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RadarChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RadarChartAggregatedFieldWells"
                              Prelude.<$> radarChartAggregatedFieldWells])}
instance JSON.ToJSON RadarChartFieldWellsProperty where
  toJSON RadarChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RadarChartAggregatedFieldWells"
                 Prelude.<$> radarChartAggregatedFieldWells]))
instance Property "RadarChartAggregatedFieldWells" RadarChartFieldWellsProperty where
  type PropertyType "RadarChartAggregatedFieldWells" RadarChartFieldWellsProperty = RadarChartAggregatedFieldWellsProperty
  set newValue RadarChartFieldWellsProperty {..}
    = RadarChartFieldWellsProperty
        {radarChartAggregatedFieldWells = Prelude.pure newValue, ..}