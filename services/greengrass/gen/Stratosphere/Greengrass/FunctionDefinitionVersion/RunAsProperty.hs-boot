module Stratosphere.Greengrass.FunctionDefinitionVersion.RunAsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RunAsProperty :: Prelude.Type
instance ToResourceProperties RunAsProperty
instance Prelude.Eq RunAsProperty
instance Prelude.Show RunAsProperty
instance JSON.ToJSON RunAsProperty