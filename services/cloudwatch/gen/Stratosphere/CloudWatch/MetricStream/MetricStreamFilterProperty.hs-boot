module Stratosphere.CloudWatch.MetricStream.MetricStreamFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricStreamFilterProperty :: Prelude.Type
instance ToResourceProperties MetricStreamFilterProperty
instance Prelude.Eq MetricStreamFilterProperty
instance Prelude.Show MetricStreamFilterProperty
instance JSON.ToJSON MetricStreamFilterProperty