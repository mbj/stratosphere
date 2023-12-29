module Stratosphere.Pipes.Pipe.BatchEnvironmentVariableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BatchEnvironmentVariableProperty :: Prelude.Type
instance ToResourceProperties BatchEnvironmentVariableProperty
instance Prelude.Eq BatchEnvironmentVariableProperty
instance Prelude.Show BatchEnvironmentVariableProperty
instance JSON.ToJSON BatchEnvironmentVariableProperty