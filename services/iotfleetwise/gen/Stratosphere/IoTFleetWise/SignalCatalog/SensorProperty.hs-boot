module Stratosphere.IoTFleetWise.SignalCatalog.SensorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SensorProperty :: Prelude.Type
instance ToResourceProperties SensorProperty
instance Prelude.Eq SensorProperty
instance Prelude.Show SensorProperty
instance JSON.ToJSON SensorProperty