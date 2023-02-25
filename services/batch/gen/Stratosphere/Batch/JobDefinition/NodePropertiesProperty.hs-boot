module Stratosphere.Batch.JobDefinition.NodePropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NodePropertiesProperty :: Prelude.Type
instance ToResourceProperties NodePropertiesProperty
instance JSON.ToJSON NodePropertiesProperty