module Stratosphere.QuickSight.Analysis.TimeBasedForecastPropertiesProperty (
        TimeBasedForecastPropertiesProperty(..),
        mkTimeBasedForecastPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedForecastPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timebasedforecastproperties.html>
    TimeBasedForecastPropertiesProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timebasedforecastproperties.html#cfn-quicksight-analysis-timebasedforecastproperties-lowerboundary>
                                         lowerBoundary :: (Prelude.Maybe (Value Prelude.Double)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timebasedforecastproperties.html#cfn-quicksight-analysis-timebasedforecastproperties-periodsbackward>
                                         periodsBackward :: (Prelude.Maybe (Value Prelude.Double)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timebasedforecastproperties.html#cfn-quicksight-analysis-timebasedforecastproperties-periodsforward>
                                         periodsForward :: (Prelude.Maybe (Value Prelude.Double)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timebasedforecastproperties.html#cfn-quicksight-analysis-timebasedforecastproperties-predictioninterval>
                                         predictionInterval :: (Prelude.Maybe (Value Prelude.Double)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timebasedforecastproperties.html#cfn-quicksight-analysis-timebasedforecastproperties-seasonality>
                                         seasonality :: (Prelude.Maybe (Value Prelude.Double)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timebasedforecastproperties.html#cfn-quicksight-analysis-timebasedforecastproperties-upperboundary>
                                         upperBoundary :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeBasedForecastPropertiesProperty ::
  TimeBasedForecastPropertiesProperty
mkTimeBasedForecastPropertiesProperty
  = TimeBasedForecastPropertiesProperty
      {haddock_workaround_ = (), lowerBoundary = Prelude.Nothing,
       periodsBackward = Prelude.Nothing,
       periodsForward = Prelude.Nothing,
       predictionInterval = Prelude.Nothing,
       seasonality = Prelude.Nothing, upperBoundary = Prelude.Nothing}
instance ToResourceProperties TimeBasedForecastPropertiesProperty where
  toResourceProperties TimeBasedForecastPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TimeBasedForecastProperties",
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