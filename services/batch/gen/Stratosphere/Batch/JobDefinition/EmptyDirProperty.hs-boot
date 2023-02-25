module Stratosphere.Batch.JobDefinition.EmptyDirProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EmptyDirProperty :: Prelude.Type
instance ToResourceProperties EmptyDirProperty
instance JSON.ToJSON EmptyDirProperty