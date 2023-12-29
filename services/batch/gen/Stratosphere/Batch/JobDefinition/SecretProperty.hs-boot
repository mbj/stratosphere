module Stratosphere.Batch.JobDefinition.SecretProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SecretProperty :: Prelude.Type
instance ToResourceProperties SecretProperty
instance Prelude.Eq SecretProperty
instance Prelude.Show SecretProperty
instance JSON.ToJSON SecretProperty