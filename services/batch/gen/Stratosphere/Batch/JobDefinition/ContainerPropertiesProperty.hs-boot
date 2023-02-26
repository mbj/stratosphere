module Stratosphere.Batch.JobDefinition.ContainerPropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContainerPropertiesProperty :: Prelude.Type
instance ToResourceProperties ContainerPropertiesProperty
instance JSON.ToJSON ContainerPropertiesProperty