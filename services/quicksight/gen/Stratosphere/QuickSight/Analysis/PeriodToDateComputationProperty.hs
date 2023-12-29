module Stratosphere.QuickSight.Analysis.PeriodToDateComputationProperty (
        module Exports, PeriodToDateComputationProperty(..),
        mkPeriodToDateComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PeriodToDateComputationProperty
  = PeriodToDateComputationProperty {computationId :: (Value Prelude.Text),
                                     name :: (Prelude.Maybe (Value Prelude.Text)),
                                     periodTimeGranularity :: (Prelude.Maybe (Value Prelude.Text)),
                                     time :: DimensionFieldProperty,
                                     value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPeriodToDateComputationProperty ::
  Value Prelude.Text
  -> DimensionFieldProperty -> PeriodToDateComputationProperty
mkPeriodToDateComputationProperty computationId time
  = PeriodToDateComputationProperty
      {computationId = computationId, time = time,
       name = Prelude.Nothing, periodTimeGranularity = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties PeriodToDateComputationProperty where
  toResourceProperties PeriodToDateComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PeriodToDateComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId, "Time" JSON..= time]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PeriodTimeGranularity"
                                 Prelude.<$> periodTimeGranularity,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON PeriodToDateComputationProperty where
  toJSON PeriodToDateComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId, "Time" JSON..= time]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PeriodTimeGranularity"
                    Prelude.<$> periodTimeGranularity,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "ComputationId" PeriodToDateComputationProperty where
  type PropertyType "ComputationId" PeriodToDateComputationProperty = Value Prelude.Text
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty {computationId = newValue, ..}
instance Property "Name" PeriodToDateComputationProperty where
  type PropertyType "Name" PeriodToDateComputationProperty = Value Prelude.Text
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "PeriodTimeGranularity" PeriodToDateComputationProperty where
  type PropertyType "PeriodTimeGranularity" PeriodToDateComputationProperty = Value Prelude.Text
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty
        {periodTimeGranularity = Prelude.pure newValue, ..}
instance Property "Time" PeriodToDateComputationProperty where
  type PropertyType "Time" PeriodToDateComputationProperty = DimensionFieldProperty
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty {time = newValue, ..}
instance Property "Value" PeriodToDateComputationProperty where
  type PropertyType "Value" PeriodToDateComputationProperty = MeasureFieldProperty
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty
        {value = Prelude.pure newValue, ..}