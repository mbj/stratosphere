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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html>
    IotEventsDestinationConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html#cfn-iotanalytics-dataset-ioteventsdestinationconfiguration-inputname>
                                               inputName :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html#cfn-iotanalytics-dataset-ioteventsdestinationconfiguration-rolearn>
                                               roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotEventsDestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IotEventsDestinationConfigurationProperty
mkIotEventsDestinationConfigurationProperty inputName roleArn
  = IotEventsDestinationConfigurationProperty
      {haddock_workaround_ = (), inputName = inputName,
       roleArn = roleArn}
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