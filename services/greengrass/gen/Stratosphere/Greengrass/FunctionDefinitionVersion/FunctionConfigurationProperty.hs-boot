module Stratosphere.Greengrass.FunctionDefinitionVersion.FunctionConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FunctionConfigurationProperty :: Prelude.Type
instance ToResourceProperties FunctionConfigurationProperty
instance JSON.ToJSON FunctionConfigurationProperty