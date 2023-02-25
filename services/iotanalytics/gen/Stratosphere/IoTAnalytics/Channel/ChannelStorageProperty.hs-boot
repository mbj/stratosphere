module Stratosphere.IoTAnalytics.Channel.ChannelStorageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ChannelStorageProperty :: Prelude.Type
instance ToResourceProperties ChannelStorageProperty
instance JSON.ToJSON ChannelStorageProperty