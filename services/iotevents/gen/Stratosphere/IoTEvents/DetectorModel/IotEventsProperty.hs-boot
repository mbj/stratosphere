module Stratosphere.IoTEvents.DetectorModel.IotEventsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IotEventsProperty :: Prelude.Type
instance ToResourceProperties IotEventsProperty
instance Prelude.Eq IotEventsProperty
instance Prelude.Show IotEventsProperty
instance JSON.ToJSON IotEventsProperty