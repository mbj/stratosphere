module Stratosphere.Batch.JobDefinition.ResourcesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourcesProperty :: Prelude.Type
instance ToResourceProperties ResourcesProperty
instance JSON.ToJSON ResourcesProperty