module Stratosphere.IoTEvents.Input.InputDefinitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputDefinitionProperty :: Prelude.Type
instance ToResourceProperties InputDefinitionProperty
instance JSON.ToJSON InputDefinitionProperty