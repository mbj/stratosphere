module Stratosphere.InternetMonitor.Monitor.HealthEventsConfigProperty (
        module Exports, HealthEventsConfigProperty(..),
        mkHealthEventsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InternetMonitor.Monitor.LocalHealthEventsConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthEventsConfigProperty
  = HealthEventsConfigProperty {availabilityLocalHealthEventsConfig :: (Prelude.Maybe LocalHealthEventsConfigProperty),
                                availabilityScoreThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                performanceLocalHealthEventsConfig :: (Prelude.Maybe LocalHealthEventsConfigProperty),
                                performanceScoreThreshold :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthEventsConfigProperty :: HealthEventsConfigProperty
mkHealthEventsConfigProperty
  = HealthEventsConfigProperty
      {availabilityLocalHealthEventsConfig = Prelude.Nothing,
       availabilityScoreThreshold = Prelude.Nothing,
       performanceLocalHealthEventsConfig = Prelude.Nothing,
       performanceScoreThreshold = Prelude.Nothing}
instance ToResourceProperties HealthEventsConfigProperty where
  toResourceProperties HealthEventsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::InternetMonitor::Monitor.HealthEventsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityLocalHealthEventsConfig"
                              Prelude.<$> availabilityLocalHealthEventsConfig,
                            (JSON..=) "AvailabilityScoreThreshold"
                              Prelude.<$> availabilityScoreThreshold,
                            (JSON..=) "PerformanceLocalHealthEventsConfig"
                              Prelude.<$> performanceLocalHealthEventsConfig,
                            (JSON..=) "PerformanceScoreThreshold"
                              Prelude.<$> performanceScoreThreshold])}
instance JSON.ToJSON HealthEventsConfigProperty where
  toJSON HealthEventsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityLocalHealthEventsConfig"
                 Prelude.<$> availabilityLocalHealthEventsConfig,
               (JSON..=) "AvailabilityScoreThreshold"
                 Prelude.<$> availabilityScoreThreshold,
               (JSON..=) "PerformanceLocalHealthEventsConfig"
                 Prelude.<$> performanceLocalHealthEventsConfig,
               (JSON..=) "PerformanceScoreThreshold"
                 Prelude.<$> performanceScoreThreshold]))
instance Property "AvailabilityLocalHealthEventsConfig" HealthEventsConfigProperty where
  type PropertyType "AvailabilityLocalHealthEventsConfig" HealthEventsConfigProperty = LocalHealthEventsConfigProperty
  set newValue HealthEventsConfigProperty {..}
    = HealthEventsConfigProperty
        {availabilityLocalHealthEventsConfig = Prelude.pure newValue, ..}
instance Property "AvailabilityScoreThreshold" HealthEventsConfigProperty where
  type PropertyType "AvailabilityScoreThreshold" HealthEventsConfigProperty = Value Prelude.Double
  set newValue HealthEventsConfigProperty {..}
    = HealthEventsConfigProperty
        {availabilityScoreThreshold = Prelude.pure newValue, ..}
instance Property "PerformanceLocalHealthEventsConfig" HealthEventsConfigProperty where
  type PropertyType "PerformanceLocalHealthEventsConfig" HealthEventsConfigProperty = LocalHealthEventsConfigProperty
  set newValue HealthEventsConfigProperty {..}
    = HealthEventsConfigProperty
        {performanceLocalHealthEventsConfig = Prelude.pure newValue, ..}
instance Property "PerformanceScoreThreshold" HealthEventsConfigProperty where
  type PropertyType "PerformanceScoreThreshold" HealthEventsConfigProperty = Value Prelude.Double
  set newValue HealthEventsConfigProperty {..}
    = HealthEventsConfigProperty
        {performanceScoreThreshold = Prelude.pure newValue, ..}