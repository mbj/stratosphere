module Stratosphere.IoT.Thing.AttributePayloadProperty (
        AttributePayloadProperty(..), mkAttributePayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributePayloadProperty
  = AttributePayloadProperty {attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkAttributePayloadProperty :: AttributePayloadProperty
mkAttributePayloadProperty
  = AttributePayloadProperty {attributes = Prelude.Nothing}
instance ToResourceProperties AttributePayloadProperty where
  toResourceProperties AttributePayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Thing.AttributePayload",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attributes" Prelude.<$> attributes])}
instance JSON.ToJSON AttributePayloadProperty where
  toJSON AttributePayloadProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attributes" Prelude.<$> attributes]))
instance Property "Attributes" AttributePayloadProperty where
  type PropertyType "Attributes" AttributePayloadProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AttributePayloadProperty {}
    = AttributePayloadProperty {attributes = Prelude.pure newValue, ..}