module Stratosphere.IoT.TopicRule.CloudwatchMetricActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CloudwatchMetricActionProperty :: Prelude.Type
instance ToResourceProperties CloudwatchMetricActionProperty
instance JSON.ToJSON CloudwatchMetricActionProperty