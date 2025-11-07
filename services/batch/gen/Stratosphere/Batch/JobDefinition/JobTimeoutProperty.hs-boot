module Stratosphere.Batch.JobDefinition.JobTimeoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JobTimeoutProperty :: Prelude.Type
instance ToResourceProperties JobTimeoutProperty
instance Prelude.Eq JobTimeoutProperty
instance Prelude.Show JobTimeoutProperty
instance JSON.ToJSON JobTimeoutProperty