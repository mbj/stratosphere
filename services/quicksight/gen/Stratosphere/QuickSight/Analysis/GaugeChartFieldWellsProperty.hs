module Stratosphere.QuickSight.Analysis.GaugeChartFieldWellsProperty (
        module Exports, GaugeChartFieldWellsProperty(..),
        mkGaugeChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartfieldwells.html>
    GaugeChartFieldWellsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartfieldwells.html#cfn-quicksight-analysis-gaugechartfieldwells-targetvalues>
                                  targetValues :: (Prelude.Maybe [MeasureFieldProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartfieldwells.html#cfn-quicksight-analysis-gaugechartfieldwells-values>
                                  values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartFieldWellsProperty :: GaugeChartFieldWellsProperty
mkGaugeChartFieldWellsProperty
  = GaugeChartFieldWellsProperty
      {haddock_workaround_ = (), targetValues = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties GaugeChartFieldWellsProperty where
  toResourceProperties GaugeChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GaugeChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetValues" Prelude.<$> targetValues,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON GaugeChartFieldWellsProperty where
  toJSON GaugeChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetValues" Prelude.<$> targetValues,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "TargetValues" GaugeChartFieldWellsProperty where
  type PropertyType "TargetValues" GaugeChartFieldWellsProperty = [MeasureFieldProperty]
  set newValue GaugeChartFieldWellsProperty {..}
    = GaugeChartFieldWellsProperty
        {targetValues = Prelude.pure newValue, ..}
instance Property "Values" GaugeChartFieldWellsProperty where
  type PropertyType "Values" GaugeChartFieldWellsProperty = [MeasureFieldProperty]
  set newValue GaugeChartFieldWellsProperty {..}
    = GaugeChartFieldWellsProperty {values = Prelude.pure newValue, ..}