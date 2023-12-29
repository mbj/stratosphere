module Stratosphere.Batch.JobDefinition.EksSecretProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksSecretProperty :: Prelude.Type
instance ToResourceProperties EksSecretProperty
instance Prelude.Eq EksSecretProperty
instance Prelude.Show EksSecretProperty
instance JSON.ToJSON EksSecretProperty