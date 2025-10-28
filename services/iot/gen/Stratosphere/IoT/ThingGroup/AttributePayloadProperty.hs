module Stratosphere.IoT.ThingGroup.AttributePayloadProperty (
        AttributePayloadProperty(..), mkAttributePayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributePayloadProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thinggroup-attributepayload.html>
    AttributePayloadProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thinggroup-attributepayload.html#cfn-iot-thinggroup-attributepayload-attributes>
                              attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributePayloadProperty :: AttributePayloadProperty
mkAttributePayloadProperty
  = AttributePayloadProperty
      {haddock_workaround_ = (), attributes = Prelude.Nothing}
instance ToResourceProperties AttributePayloadProperty where
  toResourceProperties AttributePayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingGroup.AttributePayload",
         supportsTags = Prelude.False,
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
  set newValue AttributePayloadProperty {..}
    = AttributePayloadProperty {attributes = Prelude.pure newValue, ..}