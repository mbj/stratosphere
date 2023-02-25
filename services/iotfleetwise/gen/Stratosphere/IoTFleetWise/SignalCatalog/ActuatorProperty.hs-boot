module Stratosphere.IoTFleetWise.SignalCatalog.ActuatorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActuatorProperty :: Prelude.Type
instance ToResourceProperties ActuatorProperty
instance JSON.ToJSON ActuatorProperty