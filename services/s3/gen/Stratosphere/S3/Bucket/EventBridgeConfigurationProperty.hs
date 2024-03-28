module Stratosphere.S3.Bucket.EventBridgeConfigurationProperty (
        EventBridgeConfigurationProperty(..),
        mkEventBridgeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeConfigurationProperty
  = EventBridgeConfigurationProperty {eventBridgeEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeConfigurationProperty ::
  Value Prelude.Bool -> EventBridgeConfigurationProperty
mkEventBridgeConfigurationProperty eventBridgeEnabled
  = EventBridgeConfigurationProperty
      {eventBridgeEnabled = eventBridgeEnabled}
instance ToResourceProperties EventBridgeConfigurationProperty where
  toResourceProperties EventBridgeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.EventBridgeConfiguration",
         supportsTags = Prelude.False,
         properties = ["EventBridgeEnabled" JSON..= eventBridgeEnabled]}
instance JSON.ToJSON EventBridgeConfigurationProperty where
  toJSON EventBridgeConfigurationProperty {..}
    = JSON.object ["EventBridgeEnabled" JSON..= eventBridgeEnabled]
instance Property "EventBridgeEnabled" EventBridgeConfigurationProperty where
  type PropertyType "EventBridgeEnabled" EventBridgeConfigurationProperty = Value Prelude.Bool
  set newValue EventBridgeConfigurationProperty {}
    = EventBridgeConfigurationProperty
        {eventBridgeEnabled = newValue, ..}