module Stratosphere.Greengrass.FunctionDefinition.DefaultConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DefaultConfigProperty :: Prelude.Type
instance ToResourceProperties DefaultConfigProperty
instance Prelude.Eq DefaultConfigProperty
instance Prelude.Show DefaultConfigProperty
instance JSON.ToJSON DefaultConfigProperty