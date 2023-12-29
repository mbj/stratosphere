module Stratosphere.Greengrass.FunctionDefinitionVersion.ExecutionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExecutionProperty :: Prelude.Type
instance ToResourceProperties ExecutionProperty
instance Prelude.Eq ExecutionProperty
instance Prelude.Show ExecutionProperty
instance JSON.ToJSON ExecutionProperty