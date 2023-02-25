module Stratosphere.PinpointEmail.ConfigurationSetEventDestination (
        module Exports, ConfigurationSetEventDestination(..),
        mkConfigurationSetEventDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSetEventDestination.EventDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationSetEventDestination
  = ConfigurationSetEventDestination {configurationSetName :: (Value Prelude.Text),
                                      eventDestination :: (Prelude.Maybe EventDestinationProperty),
                                      eventDestinationName :: (Value Prelude.Text)}
mkConfigurationSetEventDestination ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConfigurationSetEventDestination
mkConfigurationSetEventDestination
  configurationSetName
  eventDestinationName
  = ConfigurationSetEventDestination
      {configurationSetName = configurationSetName,
       eventDestinationName = eventDestinationName,
       eventDestination = Prelude.Nothing}
instance ToResourceProperties ConfigurationSetEventDestination where
  toResourceProperties ConfigurationSetEventDestination {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSetEventDestination",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationSetName" JSON..= configurationSetName,
                            "EventDestinationName" JSON..= eventDestinationName]
                           (Prelude.catMaybes
                              [(JSON..=) "EventDestination" Prelude.<$> eventDestination]))}
instance JSON.ToJSON ConfigurationSetEventDestination where
  toJSON ConfigurationSetEventDestination {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationSetName" JSON..= configurationSetName,
               "EventDestinationName" JSON..= eventDestinationName]
              (Prelude.catMaybes
                 [(JSON..=) "EventDestination" Prelude.<$> eventDestination])))
instance Property "ConfigurationSetName" ConfigurationSetEventDestination where
  type PropertyType "ConfigurationSetName" ConfigurationSetEventDestination = Value Prelude.Text
  set newValue ConfigurationSetEventDestination {..}
    = ConfigurationSetEventDestination
        {configurationSetName = newValue, ..}
instance Property "EventDestination" ConfigurationSetEventDestination where
  type PropertyType "EventDestination" ConfigurationSetEventDestination = EventDestinationProperty
  set newValue ConfigurationSetEventDestination {..}
    = ConfigurationSetEventDestination
        {eventDestination = Prelude.pure newValue, ..}
instance Property "EventDestinationName" ConfigurationSetEventDestination where
  type PropertyType "EventDestinationName" ConfigurationSetEventDestination = Value Prelude.Text
  set newValue ConfigurationSetEventDestination {..}
    = ConfigurationSetEventDestination
        {eventDestinationName = newValue, ..}