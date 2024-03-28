module Stratosphere.QuickSight.Template.GrowthRateComputationProperty (
        module Exports, GrowthRateComputationProperty(..),
        mkGrowthRateComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrowthRateComputationProperty
  = GrowthRateComputationProperty {computationId :: (Value Prelude.Text),
                                   name :: (Prelude.Maybe (Value Prelude.Text)),
                                   periodSize :: (Prelude.Maybe (Value Prelude.Double)),
                                   time :: (Prelude.Maybe DimensionFieldProperty),
                                   value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrowthRateComputationProperty ::
  Value Prelude.Text -> GrowthRateComputationProperty
mkGrowthRateComputationProperty computationId
  = GrowthRateComputationProperty
      {computationId = computationId, name = Prelude.Nothing,
       periodSize = Prelude.Nothing, time = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties GrowthRateComputationProperty where
  toResourceProperties GrowthRateComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GrowthRateComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PeriodSize" Prelude.<$> periodSize,
                               (JSON..=) "Time" Prelude.<$> time,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON GrowthRateComputationProperty where
  toJSON GrowthRateComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PeriodSize" Prelude.<$> periodSize,
                  (JSON..=) "Time" Prelude.<$> time,
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
    = GrowthRateComputationProperty {time = Prelude.pure newValue, ..}
instance Property "Value" GrowthRateComputationProperty where
  type PropertyType "Value" GrowthRateComputationProperty = MeasureFieldProperty
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {value = Prelude.pure newValue, ..}