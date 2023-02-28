module Stratosphere.IoTAnalytics.Pipeline.DeviceRegistryEnrichProperty (
        DeviceRegistryEnrichProperty(..), mkDeviceRegistryEnrichProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceRegistryEnrichProperty
  = DeviceRegistryEnrichProperty {attribute :: (Value Prelude.Text),
                                  name :: (Value Prelude.Text),
                                  next :: (Prelude.Maybe (Value Prelude.Text)),
                                  roleArn :: (Value Prelude.Text),
                                  thingName :: (Value Prelude.Text)}
mkDeviceRegistryEnrichProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> DeviceRegistryEnrichProperty
mkDeviceRegistryEnrichProperty attribute name roleArn thingName
  = DeviceRegistryEnrichProperty
      {attribute = attribute, name = name, roleArn = roleArn,
       thingName = thingName, next = Prelude.Nothing}
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