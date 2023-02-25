module Stratosphere.IoTEvents.AlarmModel.IotTopicPublishProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IotTopicPublishProperty :: Prelude.Type
instance ToResourceProperties IotTopicPublishProperty
instance JSON.ToJSON IotTopicPublishProperty