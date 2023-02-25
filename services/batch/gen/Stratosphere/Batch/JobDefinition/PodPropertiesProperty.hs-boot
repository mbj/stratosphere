module Stratosphere.Batch.JobDefinition.PodPropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PodPropertiesProperty :: Prelude.Type
instance ToResourceProperties PodPropertiesProperty
instance JSON.ToJSON PodPropertiesProperty