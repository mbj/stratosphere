module Stratosphere.IoTFleetWise.SignalCatalog.ActuatorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActuatorProperty :: Prelude.Type
instance ToResourceProperties ActuatorProperty
instance Prelude.Eq ActuatorProperty
instance Prelude.Show ActuatorProperty
instance JSON.ToJSON ActuatorProperty