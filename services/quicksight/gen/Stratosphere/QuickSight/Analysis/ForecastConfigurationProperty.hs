module Stratosphere.QuickSight.Analysis.ForecastConfigurationProperty (
        module Exports, ForecastConfigurationProperty(..),
        mkForecastConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ForecastScenarioProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TimeBasedForecastPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data ForecastConfigurationProperty
  = ForecastConfigurationProperty {forecastProperties :: (Prelude.Maybe TimeBasedForecastPropertiesProperty),
                                   scenario :: (Prelude.Maybe ForecastScenarioProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForecastConfigurationProperty :: ForecastConfigurationProperty
mkForecastConfigurationProperty
  = ForecastConfigurationProperty
      {forecastProperties = Prelude.Nothing, scenario = Prelude.Nothing}
instance ToResourceProperties ForecastConfigurationProperty where
  toResourceProperties ForecastConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ForecastConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ForecastProperties" Prelude.<$> forecastProperties,
                            (JSON..=) "Scenario" Prelude.<$> scenario])}
instance JSON.ToJSON ForecastConfigurationProperty where
  toJSON ForecastConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ForecastProperties" Prelude.<$> forecastProperties,
               (JSON..=) "Scenario" Prelude.<$> scenario]))
instance Property "ForecastProperties" ForecastConfigurationProperty where
  type PropertyType "ForecastProperties" ForecastConfigurationProperty = TimeBasedForecastPropertiesProperty
  set newValue ForecastConfigurationProperty {..}
    = ForecastConfigurationProperty
        {forecastProperties = Prelude.pure newValue, ..}
instance Property "Scenario" ForecastConfigurationProperty where
  type PropertyType "Scenario" ForecastConfigurationProperty = ForecastScenarioProperty
  set newValue ForecastConfigurationProperty {..}
    = ForecastConfigurationProperty
        {scenario = Prelude.pure newValue, ..}