module Stratosphere.AppFlow.Flow.EventBridgeDestinationPropertiesProperty (
        module Exports, EventBridgeDestinationPropertiesProperty(..),
        mkEventBridgeDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeDestinationPropertiesProperty
  = EventBridgeDestinationPropertiesProperty {errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                              object :: (Value Prelude.Text)}
mkEventBridgeDestinationPropertiesProperty ::
  Value Prelude.Text -> EventBridgeDestinationPropertiesProperty
mkEventBridgeDestinationPropertiesProperty object
  = EventBridgeDestinationPropertiesProperty
      {object = object, errorHandlingConfig = Prelude.Nothing}
instance ToResourceProperties EventBridgeDestinationPropertiesProperty where
  toResourceProperties EventBridgeDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.EventBridgeDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "ErrorHandlingConfig"
                                 Prelude.<$> errorHandlingConfig]))}
instance JSON.ToJSON EventBridgeDestinationPropertiesProperty where
  toJSON EventBridgeDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "ErrorHandlingConfig"
                    Prelude.<$> errorHandlingConfig])))
instance Property "ErrorHandlingConfig" EventBridgeDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" EventBridgeDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue EventBridgeDestinationPropertiesProperty {..}
    = EventBridgeDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "Object" EventBridgeDestinationPropertiesProperty where
  type PropertyType "Object" EventBridgeDestinationPropertiesProperty = Value Prelude.Text
  set newValue EventBridgeDestinationPropertiesProperty {..}
    = EventBridgeDestinationPropertiesProperty {object = newValue, ..}