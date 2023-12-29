module Stratosphere.Batch.JobDefinition.TimeoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimeoutProperty :: Prelude.Type
instance ToResourceProperties TimeoutProperty
instance Prelude.Eq TimeoutProperty
instance Prelude.Show TimeoutProperty
instance JSON.ToJSON TimeoutProperty