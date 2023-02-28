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
  = Thing {attributePayload :: (Prelude.Maybe AttributePayloadProperty),
           thingName :: (Prelude.Maybe (Value Prelude.Text))}
mkThing :: Thing
mkThing
  = Thing
      {attributePayload = Prelude.Nothing, thingName = Prelude.Nothing}
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