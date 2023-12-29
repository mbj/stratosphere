module Stratosphere.QuickSight.Dashboard.TimeBasedForecastPropertiesProperty (
        TimeBasedForecastPropertiesProperty(..),
        mkTimeBasedForecastPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedForecastPropertiesProperty
  = TimeBasedForecastPropertiesProperty {lowerBoundary :: (Prelude.Maybe (Value Prelude.Double)),
                                         periodsBackward :: (Prelude.Maybe (Value Prelude.Double)),
                                         periodsForward :: (Prelude.Maybe (Value Prelude.Double)),
                                         predictionInterval :: (Prelude.Maybe (Value Prelude.Double)),
                                         seasonality :: (Prelude.Maybe (Value Prelude.Double)),
                                         upperBoundary :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeBasedForecastPropertiesProperty ::
  TimeBasedForecastPropertiesProperty
mkTimeBasedForecastPropertiesProperty
  = TimeBasedForecastPropertiesProperty
      {lowerBoundary = Prelude.Nothing,
       periodsBackward = Prelude.Nothing,
       periodsForward = Prelude.Nothing,
       predictionInterval = Prelude.Nothing,
       seasonality = Prelude.Nothing, upperBoundary = Prelude.Nothing}
instance ToResourceProperties TimeBasedForecastPropertiesProperty where
  toResourceProperties TimeBasedForecastPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TimeBasedForecastProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LowerBoundary" Prelude.<$> lowerBoundary,
                            (JSON..=) "PeriodsBackward" Prelude.<$> periodsBackward,
                            (JSON..=) "PeriodsForward" Prelude.<$> periodsForward,
                            (JSON..=) "PredictionInterval" Prelude.<$> predictionInterval,
                            (JSON..=) "Seasonality" Prelude.<$> seasonality,
                            (JSON..=) "UpperBoundary" Prelude.<$> upperBoundary])}
instance JSON.ToJSON TimeBasedForecastPropertiesProperty where
  toJSON TimeBasedForecastPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LowerBoundary" Prelude.<$> lowerBoundary,
               (JSON..=) "PeriodsBackward" Prelude.<$> periodsBackward,
               (JSON..=) "PeriodsForward" Prelude.<$> periodsForward,
               (JSON..=) "PredictionInterval" Prelude.<$> predictionInterval,
               (JSON..=) "Seasonality" Prelude.<$> seasonality,
               (JSON..=) "UpperBoundary" Prelude.<$> upperBoundary]))
instance Property "LowerBoundary" TimeBasedForecastPropertiesProperty where
  type PropertyType "LowerBoundary" TimeBasedForecastPropertiesProperty = Value Prelude.Double
  set newValue TimeBasedForecastPropertiesProperty {..}
    = TimeBasedForecastPropertiesProperty
        {lowerBoundary = Prelude.pure newValue, ..}
instance Property "PeriodsBackward" TimeBasedForecastPropertiesProperty where
  type PropertyType "PeriodsBackward" TimeBasedForecastPropertiesProperty = Value Prelude.Double
  set newValue TimeBasedForecastPropertiesProperty {..}
    = TimeBasedForecastPropertiesProperty
        {periodsBackward = Prelude.pure newValue, ..}
instance Property "PeriodsForward" TimeBasedForecastPropertiesProperty where
  type PropertyType "PeriodsForward" TimeBasedForecastPropertiesProperty = Value Prelude.Double
  set newValue TimeBasedForecastPropertiesProperty {..}
    = TimeBasedForecastPropertiesProperty
        {periodsForward = Prelude.pure newValue, ..}
instance Property "PredictionInterval" TimeBasedForecastPropertiesProperty where
  type PropertyType "PredictionInterval" TimeBasedForecastPropertiesProperty = Value Prelude.Double
  set newValue TimeBasedForecastPropertiesProperty {..}
    = TimeBasedForecastPropertiesProperty
        {predictionInterval = Prelude.pure newValue, ..}
instance Property "Seasonality" TimeBasedForecastPropertiesProperty where
  type PropertyType "Seasonality" TimeBasedForecastPropertiesProperty = Value Prelude.Double
  set newValue TimeBasedForecastPropertiesProperty {..}
    = TimeBasedForecastPropertiesProperty
        {seasonality = Prelude.pure newValue, ..}
instance Property "UpperBoundary" TimeBasedForecastPropertiesProperty where
  type PropertyType "UpperBoundary" TimeBasedForecastPropertiesProperty = Value Prelude.Double
  set newValue TimeBasedForecastPropertiesProperty {..}
    = TimeBasedForecastPropertiesProperty
        {upperBoundary = Prelude.pure newValue, ..}