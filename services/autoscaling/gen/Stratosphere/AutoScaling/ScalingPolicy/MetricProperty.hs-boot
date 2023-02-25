module Stratosphere.AutoScaling.ScalingPolicy.MetricProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricProperty :: Prelude.Type
instance ToResourceProperties MetricProperty
instance JSON.ToJSON MetricProperty