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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-eventbridgedestinationproperties.html>
    EventBridgeDestinationPropertiesProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-eventbridgedestinationproperties.html#cfn-appflow-flow-eventbridgedestinationproperties-errorhandlingconfig>
                                              errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-eventbridgedestinationproperties.html#cfn-appflow-flow-eventbridgedestinationproperties-object>
                                              object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeDestinationPropertiesProperty ::
  Value Prelude.Text -> EventBridgeDestinationPropertiesProperty
mkEventBridgeDestinationPropertiesProperty object
  = EventBridgeDestinationPropertiesProperty
      {haddock_workaround_ = (), object = object,
       errorHandlingConfig = Prelude.Nothing}
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