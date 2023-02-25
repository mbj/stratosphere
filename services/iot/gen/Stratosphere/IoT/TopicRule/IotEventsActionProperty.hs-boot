module Stratosphere.IoT.TopicRule.IotEventsActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IotEventsActionProperty :: Prelude.Type
instance ToResourceProperties IotEventsActionProperty
instance JSON.ToJSON IotEventsActionProperty