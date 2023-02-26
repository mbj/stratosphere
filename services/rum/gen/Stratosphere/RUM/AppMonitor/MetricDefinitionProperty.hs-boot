module Stratosphere.RUM.AppMonitor.MetricDefinitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricDefinitionProperty :: Prelude.Type
instance ToResourceProperties MetricDefinitionProperty
instance JSON.ToJSON MetricDefinitionProperty