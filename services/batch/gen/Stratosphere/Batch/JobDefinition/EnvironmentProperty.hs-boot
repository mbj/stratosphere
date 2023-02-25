module Stratosphere.Batch.JobDefinition.EnvironmentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EnvironmentProperty :: Prelude.Type
instance ToResourceProperties EnvironmentProperty
instance JSON.ToJSON EnvironmentProperty