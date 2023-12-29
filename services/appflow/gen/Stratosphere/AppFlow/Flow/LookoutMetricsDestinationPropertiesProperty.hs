module Stratosphere.AppFlow.Flow.LookoutMetricsDestinationPropertiesProperty (
        LookoutMetricsDestinationPropertiesProperty(..),
        mkLookoutMetricsDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LookoutMetricsDestinationPropertiesProperty
  = LookoutMetricsDestinationPropertiesProperty {object :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLookoutMetricsDestinationPropertiesProperty ::
  LookoutMetricsDestinationPropertiesProperty
mkLookoutMetricsDestinationPropertiesProperty
  = LookoutMetricsDestinationPropertiesProperty
      {object = Prelude.Nothing}
instance ToResourceProperties LookoutMetricsDestinationPropertiesProperty where
  toResourceProperties
    LookoutMetricsDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.LookoutMetricsDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Object" Prelude.<$> object])}
instance JSON.ToJSON LookoutMetricsDestinationPropertiesProperty where
  toJSON LookoutMetricsDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Object" Prelude.<$> object]))
instance Property "Object" LookoutMetricsDestinationPropertiesProperty where
  type PropertyType "Object" LookoutMetricsDestinationPropertiesProperty = Value Prelude.Text
  set newValue LookoutMetricsDestinationPropertiesProperty {}
    = LookoutMetricsDestinationPropertiesProperty
        {object = Prelude.pure newValue, ..}