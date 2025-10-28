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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html>
    ConfigurationSetEventDestination {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html#cfn-ses-configurationseteventdestination-configurationsetname>
                                      configurationSetName :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html#cfn-ses-configurationseteventdestination-eventdestination>
                                      eventDestination :: EventDestinationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationSetEventDestination ::
  Value Prelude.Text
  -> EventDestinationProperty -> ConfigurationSetEventDestination
mkConfigurationSetEventDestination
  configurationSetName
  eventDestination
  = ConfigurationSetEventDestination
      {haddock_workaround_ = (),
       configurationSetName = configurationSetName,
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