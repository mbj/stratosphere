module Stratosphere.Greengrass.FunctionDefinitionVersion.FunctionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FunctionProperty :: Prelude.Type
instance ToResourceProperties FunctionProperty
instance JSON.ToJSON FunctionProperty