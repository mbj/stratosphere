module Stratosphere.IoT.ThingGroup.ThingGroupPropertiesProperty (
        module Exports, ThingGroupPropertiesProperty(..),
        mkThingGroupPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.ThingGroup.AttributePayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThingGroupPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thinggroup-thinggroupproperties.html>
    ThingGroupPropertiesProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thinggroup-thinggroupproperties.html#cfn-iot-thinggroup-thinggroupproperties-attributepayload>
                                  attributePayload :: (Prelude.Maybe AttributePayloadProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thinggroup-thinggroupproperties.html#cfn-iot-thinggroup-thinggroupproperties-thinggroupdescription>
                                  thingGroupDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThingGroupPropertiesProperty :: ThingGroupPropertiesProperty
mkThingGroupPropertiesProperty
  = ThingGroupPropertiesProperty
      {haddock_workaround_ = (), attributePayload = Prelude.Nothing,
       thingGroupDescription = Prelude.Nothing}
instance ToResourceProperties ThingGroupPropertiesProperty where
  toResourceProperties ThingGroupPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingGroup.ThingGroupProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttributePayload" Prelude.<$> attributePayload,
                            (JSON..=) "ThingGroupDescription"
                              Prelude.<$> thingGroupDescription])}
instance JSON.ToJSON ThingGroupPropertiesProperty where
  toJSON ThingGroupPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttributePayload" Prelude.<$> attributePayload,
               (JSON..=) "ThingGroupDescription"
                 Prelude.<$> thingGroupDescription]))
instance Property "AttributePayload" ThingGroupPropertiesProperty where
  type PropertyType "AttributePayload" ThingGroupPropertiesProperty = AttributePayloadProperty
  set newValue ThingGroupPropertiesProperty {..}
    = ThingGroupPropertiesProperty
        {attributePayload = Prelude.pure newValue, ..}
instance Property "ThingGroupDescription" ThingGroupPropertiesProperty where
  type PropertyType "ThingGroupDescription" ThingGroupPropertiesProperty = Value Prelude.Text
  set newValue ThingGroupPropertiesProperty {..}
    = ThingGroupPropertiesProperty
        {thingGroupDescription = Prelude.pure newValue, ..}