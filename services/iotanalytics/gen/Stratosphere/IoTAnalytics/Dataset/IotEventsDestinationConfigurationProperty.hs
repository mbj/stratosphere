module Stratosphere.IoTAnalytics.Dataset.IotEventsDestinationConfigurationProperty (
        IotEventsDestinationConfigurationProperty(..),
        mkIotEventsDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotEventsDestinationConfigurationProperty
  = IotEventsDestinationConfigurationProperty {inputName :: (Value Prelude.Text),
                                               roleArn :: (Value Prelude.Text)}
mkIotEventsDestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IotEventsDestinationConfigurationProperty
mkIotEventsDestinationConfigurationProperty inputName roleArn
  = IotEventsDestinationConfigurationProperty
      {inputName = inputName, roleArn = roleArn}
instance ToResourceProperties IotEventsDestinationConfigurationProperty where
  toResourceProperties IotEventsDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.IotEventsDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = ["InputName" JSON..= inputName,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON IotEventsDestinationConfigurationProperty where
  toJSON IotEventsDestinationConfigurationProperty {..}
    = JSON.object
        ["InputName" JSON..= inputName, "RoleArn" JSON..= roleArn]
instance Property "InputName" IotEventsDestinationConfigurationProperty where
  type PropertyType "InputName" IotEventsDestinationConfigurationProperty = Value Prelude.Text
  set newValue IotEventsDestinationConfigurationProperty {..}
    = IotEventsDestinationConfigurationProperty
        {inputName = newValue, ..}
instance Property "RoleArn" IotEventsDestinationConfigurationProperty where
  type PropertyType "RoleArn" IotEventsDestinationConfigurationProperty = Value Prelude.Text
  set newValue IotEventsDestinationConfigurationProperty {..}
    = IotEventsDestinationConfigurationProperty
        {roleArn = newValue, ..}