module Stratosphere.CloudWatch.MetricStream.MetricStreamFilterProperty (
        MetricStreamFilterProperty(..), mkMetricStreamFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricStreamFilterProperty
  = MetricStreamFilterProperty {namespace :: (Value Prelude.Text)}
mkMetricStreamFilterProperty ::
  Value Prelude.Text -> MetricStreamFilterProperty
mkMetricStreamFilterProperty namespace
  = MetricStreamFilterProperty {namespace = namespace}
instance ToResourceProperties MetricStreamFilterProperty where
  toResourceProperties MetricStreamFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::MetricStream.MetricStreamFilter",
         supportsTags = Prelude.False,
         properties = ["Namespace" JSON..= namespace]}
instance JSON.ToJSON MetricStreamFilterProperty where
  toJSON MetricStreamFilterProperty {..}
    = JSON.object ["Namespace" JSON..= namespace]
instance Property "Namespace" MetricStreamFilterProperty where
  type PropertyType "Namespace" MetricStreamFilterProperty = Value Prelude.Text
  set newValue MetricStreamFilterProperty {}
    = MetricStreamFilterProperty {namespace = newValue, ..}