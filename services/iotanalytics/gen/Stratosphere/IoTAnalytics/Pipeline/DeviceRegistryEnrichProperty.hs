module Stratosphere.IoTAnalytics.Pipeline.DeviceRegistryEnrichProperty (
        DeviceRegistryEnrichProperty(..), mkDeviceRegistryEnrichProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceRegistryEnrichProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html>
    DeviceRegistryEnrichProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-attribute>
                                  attribute :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-next>
                                  next :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-rolearn>
                                  roleArn :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-thingname>
                                  thingName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceRegistryEnrichProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> DeviceRegistryEnrichProperty
mkDeviceRegistryEnrichProperty attribute name roleArn thingName
  = DeviceRegistryEnrichProperty
      {haddock_workaround_ = (), attribute = attribute, name = name,
       roleArn = roleArn, thingName = thingName, next = Prelude.Nothing}
instance ToResourceProperties DeviceRegistryEnrichProperty where
  toResourceProperties DeviceRegistryEnrichProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.DeviceRegistryEnrich",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attribute" JSON..= attribute, "Name" JSON..= name,
                            "RoleArn" JSON..= roleArn, "ThingName" JSON..= thingName]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON DeviceRegistryEnrichProperty where
  toJSON DeviceRegistryEnrichProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attribute" JSON..= attribute, "Name" JSON..= name,
               "RoleArn" JSON..= roleArn, "ThingName" JSON..= thingName]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "Attribute" DeviceRegistryEnrichProperty where
  type PropertyType "Attribute" DeviceRegistryEnrichProperty = Value Prelude.Text
  set newValue DeviceRegistryEnrichProperty {..}
    = DeviceRegistryEnrichProperty {attribute = newValue, ..}
instance Property "Name" DeviceRegistryEnrichProperty where
  type PropertyType "Name" DeviceRegistryEnrichProperty = Value Prelude.Text
  set newValue DeviceRegistryEnrichProperty {..}
    = DeviceRegistryEnrichProperty {name = newValue, ..}
instance Property "Next" DeviceRegistryEnrichProperty where
  type PropertyType "Next" DeviceRegistryEnrichProperty = Value Prelude.Text
  set newValue DeviceRegistryEnrichProperty {..}
    = DeviceRegistryEnrichProperty {next = Prelude.pure newValue, ..}
instance Property "RoleArn" DeviceRegistryEnrichProperty where
  type PropertyType "RoleArn" DeviceRegistryEnrichProperty = Value Prelude.Text
  set newValue DeviceRegistryEnrichProperty {..}
    = DeviceRegistryEnrichProperty {roleArn = newValue, ..}
instance Property "ThingName" DeviceRegistryEnrichProperty where
  type PropertyType "ThingName" DeviceRegistryEnrichProperty = Value Prelude.Text
  set newValue DeviceRegistryEnrichProperty {..}
    = DeviceRegistryEnrichProperty {thingName = newValue, ..}