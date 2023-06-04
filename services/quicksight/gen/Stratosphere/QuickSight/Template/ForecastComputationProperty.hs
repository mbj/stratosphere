module Stratosphere.QuickSight.Template.ForecastComputationProperty (
        module Exports, ForecastComputationProperty(..),
        mkForecastComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ForecastComputationProperty
  = ForecastComputationProperty {computationId :: (Value Prelude.Text),
                                 customSeasonalityValue :: (Prelude.Maybe (Value Prelude.Double)),
                                 lowerBoundary :: (Prelude.Maybe (Value Prelude.Double)),
                                 name :: (Prelude.Maybe (Value Prelude.Text)),
                                 periodsBackward :: (Prelude.Maybe (Value Prelude.Double)),
                                 periodsForward :: (Prelude.Maybe (Value Prelude.Double)),
                                 predictionInterval :: (Prelude.Maybe (Value Prelude.Double)),
                                 seasonality :: (Prelude.Maybe (Value Prelude.Text)),
                                 time :: DimensionFieldProperty,
                                 upperBoundary :: (Prelude.Maybe (Value Prelude.Double)),
                                 value :: (Prelude.Maybe MeasureFieldProperty)}
mkForecastComputationProperty ::
  Value Prelude.Text
  -> DimensionFieldProperty -> ForecastComputationProperty
mkForecastComputationProperty computationId time
  = ForecastComputationProperty
      {computationId = computationId, time = time,
       customSeasonalityValue = Prelude.Nothing,
       lowerBoundary = Prelude.Nothing, name = Prelude.Nothing,
       periodsBackward = Prelude.Nothing,
       periodsForward = Prelude.Nothing,
       predictionInterval = Prelude.Nothing,
       seasonality = Prelude.Nothing, upperBoundary = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ForecastComputationProperty where
  toResourceProperties ForecastComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ForecastComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId, "Time" JSON..= time]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomSeasonalityValue"
                                 Prelude.<$> customSeasonalityValue,
                               (JSON..=) "LowerBoundary" Prelude.<$> lowerBoundary,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PeriodsBackward" Prelude.<$> periodsBackward,
                               (JSON..=) "PeriodsForward" Prelude.<$> periodsForward,
                               (JSON..=) "PredictionInterval" Prelude.<$> predictionInterval,
                               (JSON..=) "Seasonality" Prelude.<$> seasonality,
                               (JSON..=) "UpperBoundary" Prelude.<$> upperBoundary,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON ForecastComputationProperty where
  toJSON ForecastComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId, "Time" JSON..= time]
              (Prelude.catMaybes
                 [(JSON..=) "CustomSeasonalityValue"
                    Prelude.<$> customSeasonalityValue,
                  (JSON..=) "LowerBoundary" Prelude.<$> lowerBoundary,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PeriodsBackward" Prelude.<$> periodsBackward,
                  (JSON..=) "PeriodsForward" Prelude.<$> periodsForward,
                  (JSON..=) "PredictionInterval" Prelude.<$> predictionInterval,
                  (JSON..=) "Seasonality" Prelude.<$> seasonality,
                  (JSON..=) "UpperBoundary" Prelude.<$> upperBoundary,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "ComputationId" ForecastComputationProperty where
  type PropertyType "ComputationId" ForecastComputationProperty = Value Prelude.Text
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty {computationId = newValue, ..}
instance Property "CustomSeasonalityValue" ForecastComputationProperty where
  type PropertyType "CustomSeasonalityValue" ForecastComputationProperty = Value Prelude.Double
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty
        {customSeasonalityValue = Prelude.pure newValue, ..}
instance Property "LowerBoundary" ForecastComputationProperty where
  type PropertyType "LowerBoundary" ForecastComputationProperty = Value Prelude.Double
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty
        {lowerBoundary = Prelude.pure newValue, ..}
instance Property "Name" ForecastComputationProperty where
  type PropertyType "Name" ForecastComputationProperty = Value Prelude.Text
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty {name = Prelude.pure newValue, ..}
instance Property "PeriodsBackward" ForecastComputationProperty where
  type PropertyType "PeriodsBackward" ForecastComputationProperty = Value Prelude.Double
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty
        {periodsBackward = Prelude.pure newValue, ..}
instance Property "PeriodsForward" ForecastComputationProperty where
  type PropertyType "PeriodsForward" ForecastComputationProperty = Value Prelude.Double
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty
        {periodsForward = Prelude.pure newValue, ..}
instance Property "PredictionInterval" ForecastComputationProperty where
  type PropertyType "PredictionInterval" ForecastComputationProperty = Value Prelude.Double
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty
        {predictionInterval = Prelude.pure newValue, ..}
instance Property "Seasonality" ForecastComputationProperty where
  type PropertyType "Seasonality" ForecastComputationProperty = Value Prelude.Text
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty
        {seasonality = Prelude.pure newValue, ..}
instance Property "Time" ForecastComputationProperty where
  type PropertyType "Time" ForecastComputationProperty = DimensionFieldProperty
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty {time = newValue, ..}
instance Property "UpperBoundary" ForecastComputationProperty where
  type PropertyType "UpperBoundary" ForecastComputationProperty = Value Prelude.Double
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty
        {upperBoundary = Prelude.pure newValue, ..}
instance Property "Value" ForecastComputationProperty where
  type PropertyType "Value" ForecastComputationProperty = MeasureFieldProperty
  set newValue ForecastComputationProperty {..}
    = ForecastComputationProperty {value = Prelude.pure newValue, ..}