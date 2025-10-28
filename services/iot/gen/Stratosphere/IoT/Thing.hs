module Stratosphere.IoT.Thing (
        module Exports, Thing(..), mkThing
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.Thing.AttributePayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Thing
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html>
    Thing {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-attributepayload>
           attributePayload :: (Prelude.Maybe AttributePayloadProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-thingname>
           thingName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThing :: Thing
mkThing
  = Thing
      {haddock_workaround_ = (), attributePayload = Prelude.Nothing,
       thingName = Prelude.Nothing}
instance ToResourceProperties Thing where
  toResourceProperties Thing {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Thing", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttributePayload" Prelude.<$> attributePayload,
                            (JSON..=) "ThingName" Prelude.<$> thingName])}
instance JSON.ToJSON Thing where
  toJSON Thing {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttributePayload" Prelude.<$> attributePayload,
               (JSON..=) "ThingName" Prelude.<$> thingName]))
instance Property "AttributePayload" Thing where
  type PropertyType "AttributePayload" Thing = AttributePayloadProperty
  set newValue Thing {..}
    = Thing {attributePayload = Prelude.pure newValue, ..}
instance Property "ThingName" Thing where
  type PropertyType "ThingName" Thing = Value Prelude.Text
  set newValue Thing {..}
    = Thing {thingName = Prelude.pure newValue, ..}