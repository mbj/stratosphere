module Stratosphere.IoTAnalytics.Pipeline.DeviceShadowEnrichProperty (
        DeviceShadowEnrichProperty(..), mkDeviceShadowEnrichProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceShadowEnrichProperty
  = DeviceShadowEnrichProperty {attribute :: (Value Prelude.Text),
                                name :: (Value Prelude.Text),
                                next :: (Prelude.Maybe (Value Prelude.Text)),
                                roleArn :: (Value Prelude.Text),
                                thingName :: (Value Prelude.Text)}
mkDeviceShadowEnrichProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> DeviceShadowEnrichProperty
mkDeviceShadowEnrichProperty attribute name roleArn thingName
  = DeviceShadowEnrichProperty
      {attribute = attribute, name = name, roleArn = roleArn,
       thingName = thingName, next = Prelude.Nothing}
instance ToResourceProperties DeviceShadowEnrichProperty where
  toResourceProperties DeviceShadowEnrichProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.DeviceShadowEnrich",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attribute" JSON..= attribute, "Name" JSON..= name,
                            "RoleArn" JSON..= roleArn, "ThingName" JSON..= thingName]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON DeviceShadowEnrichProperty where
  toJSON DeviceShadowEnrichProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attribute" JSON..= attribute, "Name" JSON..= name,
               "RoleArn" JSON..= roleArn, "ThingName" JSON..= thingName]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "Attribute" DeviceShadowEnrichProperty where
  type PropertyType "Attribute" DeviceShadowEnrichProperty = Value Prelude.Text
  set newValue DeviceShadowEnrichProperty {..}
    = DeviceShadowEnrichProperty {attribute = newValue, ..}
instance Property "Name" DeviceShadowEnrichProperty where
  type PropertyType "Name" DeviceShadowEnrichProperty = Value Prelude.Text
  set newValue DeviceShadowEnrichProperty {..}
    = DeviceShadowEnrichProperty {name = newValue, ..}
instance Property "Next" DeviceShadowEnrichProperty where
  type PropertyType "Next" DeviceShadowEnrichProperty = Value Prelude.Text
  set newValue DeviceShadowEnrichProperty {..}
    = DeviceShadowEnrichProperty {next = Prelude.pure newValue, ..}
instance Property "RoleArn" DeviceShadowEnrichProperty where
  type PropertyType "RoleArn" DeviceShadowEnrichProperty = Value Prelude.Text
  set newValue DeviceShadowEnrichProperty {..}
    = DeviceShadowEnrichProperty {roleArn = newValue, ..}
instance Property "ThingName" DeviceShadowEnrichProperty where
  type PropertyType "ThingName" DeviceShadowEnrichProperty = Value Prelude.Text
  set newValue DeviceShadowEnrichProperty {..}
    = DeviceShadowEnrichProperty {thingName = newValue, ..}