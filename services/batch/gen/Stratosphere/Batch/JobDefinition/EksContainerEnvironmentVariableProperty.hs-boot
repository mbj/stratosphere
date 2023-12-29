module Stratosphere.Batch.JobDefinition.EksContainerEnvironmentVariableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksContainerEnvironmentVariableProperty :: Prelude.Type
instance ToResourceProperties EksContainerEnvironmentVariableProperty
instance Prelude.Eq EksContainerEnvironmentVariableProperty
instance Prelude.Show EksContainerEnvironmentVariableProperty
instance JSON.ToJSON EksContainerEnvironmentVariableProperty