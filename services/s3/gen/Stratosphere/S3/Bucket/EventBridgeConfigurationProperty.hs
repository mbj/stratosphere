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
  = EventBridgeConfigurationProperty {eventBridgeEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeConfigurationProperty ::
  EventBridgeConfigurationProperty
mkEventBridgeConfigurationProperty
  = EventBridgeConfigurationProperty
      {eventBridgeEnabled = Prelude.Nothing}
instance ToResourceProperties EventBridgeConfigurationProperty where
  toResourceProperties EventBridgeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.EventBridgeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EventBridgeEnabled" Prelude.<$> eventBridgeEnabled])}
instance JSON.ToJSON EventBridgeConfigurationProperty where
  toJSON EventBridgeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EventBridgeEnabled" Prelude.<$> eventBridgeEnabled]))
instance Property "EventBridgeEnabled" EventBridgeConfigurationProperty where
  type PropertyType "EventBridgeEnabled" EventBridgeConfigurationProperty = Value Prelude.Bool
  set newValue EventBridgeConfigurationProperty {}
    = EventBridgeConfigurationProperty
        {eventBridgeEnabled = Prelude.pure newValue, ..}