module Stratosphere.Evidently.Launch.MetricDefinitionObjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricDefinitionObjectProperty :: Prelude.Type
instance ToResourceProperties MetricDefinitionObjectProperty
instance JSON.ToJSON MetricDefinitionObjectProperty