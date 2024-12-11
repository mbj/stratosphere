module Stratosphere.Lambda.EventSourceMapping.MetricsConfigProperty (
        MetricsConfigProperty(..), mkMetricsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricsConfigProperty
  = MetricsConfigProperty {metrics :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricsConfigProperty :: MetricsConfigProperty
mkMetricsConfigProperty
  = MetricsConfigProperty {metrics = Prelude.Nothing}
instance ToResourceProperties MetricsConfigProperty where
  toResourceProperties MetricsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.MetricsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Metrics" Prelude.<$> metrics])}
instance JSON.ToJSON MetricsConfigProperty where
  toJSON MetricsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Metrics" Prelude.<$> metrics]))
instance Property "Metrics" MetricsConfigProperty where
  type PropertyType "Metrics" MetricsConfigProperty = ValueList Prelude.Text
  set newValue MetricsConfigProperty {}
    = MetricsConfigProperty {metrics = Prelude.pure newValue, ..}