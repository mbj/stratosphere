module Stratosphere.Batch.JobDefinition.EksContainerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksContainerProperty :: Prelude.Type
instance ToResourceProperties EksContainerProperty
instance JSON.ToJSON EksContainerProperty