module Stratosphere.IoTEvents.AlarmModel.IotEventsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IotEventsProperty :: Prelude.Type
instance ToResourceProperties IotEventsProperty
instance JSON.ToJSON IotEventsProperty