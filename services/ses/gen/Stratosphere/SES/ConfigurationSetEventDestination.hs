module Stratosphere.SES.ConfigurationSetEventDestination (
        module Exports, ConfigurationSetEventDestination(..),
        mkConfigurationSetEventDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.EventDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationSetEventDestination
  = ConfigurationSetEventDestination {configurationSetName :: (Value Prelude.Text),
                                      eventDestination :: EventDestinationProperty}
mkConfigurationSetEventDestination ::
  Value Prelude.Text
  -> EventDestinationProperty -> ConfigurationSetEventDestination
mkConfigurationSetEventDestination
  configurationSetName
  eventDestination
  = ConfigurationSetEventDestination
      {configurationSetName = configurationSetName,
       eventDestination = eventDestination}
instance ToResourceProperties ConfigurationSetEventDestination where
  toResourceProperties ConfigurationSetEventDestination {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination",
         supportsTags = Prelude.False,
         properties = ["ConfigurationSetName" JSON..= configurationSetName,
                       "EventDestination" JSON..= eventDestination]}
instance JSON.ToJSON ConfigurationSetEventDestination where
  toJSON ConfigurationSetEventDestination {..}
    = JSON.object
        ["ConfigurationSetName" JSON..= configurationSetName,
         "EventDestination" JSON..= eventDestination]
instance Property "ConfigurationSetName" ConfigurationSetEventDestination where
  type PropertyType "ConfigurationSetName" ConfigurationSetEventDestination = Value Prelude.Text
  set newValue ConfigurationSetEventDestination {..}
    = ConfigurationSetEventDestination
        {configurationSetName = newValue, ..}
instance Property "EventDestination" ConfigurationSetEventDestination where
  type PropertyType "EventDestination" ConfigurationSetEventDestination = EventDestinationProperty
  set newValue ConfigurationSetEventDestination {..}
    = ConfigurationSetEventDestination
        {eventDestination = newValue, ..}