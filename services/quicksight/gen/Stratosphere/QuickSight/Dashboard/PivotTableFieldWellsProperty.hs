module Stratosphere.QuickSight.Dashboard.PivotTableFieldWellsProperty (
        module Exports, PivotTableFieldWellsProperty(..),
        mkPivotTableFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTableAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottablefieldwells.html>
    PivotTableFieldWellsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottablefieldwells.html#cfn-quicksight-dashboard-pivottablefieldwells-pivottableaggregatedfieldwells>
                                  pivotTableAggregatedFieldWells :: (Prelude.Maybe PivotTableAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableFieldWellsProperty :: PivotTableFieldWellsProperty
mkPivotTableFieldWellsProperty
  = PivotTableFieldWellsProperty
      {haddock_workaround_ = (),
       pivotTableAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldWellsProperty where
  toResourceProperties PivotTableFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PivotTableAggregatedFieldWells"
                              Prelude.<$> pivotTableAggregatedFieldWells])}
instance JSON.ToJSON PivotTableFieldWellsProperty where
  toJSON PivotTableFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PivotTableAggregatedFieldWells"
                 Prelude.<$> pivotTableAggregatedFieldWells]))
instance Property "PivotTableAggregatedFieldWells" PivotTableFieldWellsProperty where
  type PropertyType "PivotTableAggregatedFieldWells" PivotTableFieldWellsProperty = PivotTableAggregatedFieldWellsProperty
  set newValue PivotTableFieldWellsProperty {..}
    = PivotTableFieldWellsProperty
        {pivotTableAggregatedFieldWells = Prelude.pure newValue, ..}