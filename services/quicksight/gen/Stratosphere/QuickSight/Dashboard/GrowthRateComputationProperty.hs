module Stratosphere.QuickSight.Dashboard.GrowthRateComputationProperty (
        module Exports, GrowthRateComputationProperty(..),
        mkGrowthRateComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrowthRateComputationProperty
  = GrowthRateComputationProperty {computationId :: (Value Prelude.Text),
                                   name :: (Prelude.Maybe (Value Prelude.Text)),
                                   periodSize :: (Prelude.Maybe (Value Prelude.Double)),
                                   time :: DimensionFieldProperty,
                                   value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrowthRateComputationProperty ::
  Value Prelude.Text
  -> DimensionFieldProperty -> GrowthRateComputationProperty
mkGrowthRateComputationProperty computationId time
  = GrowthRateComputationProperty
      {computationId = computationId, time = time,
       name = Prelude.Nothing, periodSize = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties GrowthRateComputationProperty where
  toResourceProperties GrowthRateComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GrowthRateComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId, "Time" JSON..= time]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PeriodSize" Prelude.<$> periodSize,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON GrowthRateComputationProperty where
  toJSON GrowthRateComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId, "Time" JSON..= time]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PeriodSize" Prelude.<$> periodSize,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "ComputationId" GrowthRateComputationProperty where
  type PropertyType "ComputationId" GrowthRateComputationProperty = Value Prelude.Text
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {computationId = newValue, ..}
instance Property "Name" GrowthRateComputationProperty where
  type PropertyType "Name" GrowthRateComputationProperty = Value Prelude.Text
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {name = Prelude.pure newValue, ..}
instance Property "PeriodSize" GrowthRateComputationProperty where
  type PropertyType "PeriodSize" GrowthRateComputationProperty = Value Prelude.Double
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty
        {periodSize = Prelude.pure newValue, ..}
instance Property "Time" GrowthRateComputationProperty where
  type PropertyType "Time" GrowthRateComputationProperty = DimensionFieldProperty
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {time = newValue, ..}
instance Property "Value" GrowthRateComputationProperty where
  type PropertyType "Value" GrowthRateComputationProperty = MeasureFieldProperty
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {value = Prelude.pure newValue, ..}