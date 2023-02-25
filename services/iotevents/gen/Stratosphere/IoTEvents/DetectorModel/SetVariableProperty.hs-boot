module Stratosphere.IoTEvents.DetectorModel.SetVariableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SetVariableProperty :: Prelude.Type
instance ToResourceProperties SetVariableProperty
instance JSON.ToJSON SetVariableProperty