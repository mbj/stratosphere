module Stratosphere.EC2.TransitGatewayPeeringAttachment.PeeringAttachmentStatusProperty (
        PeeringAttachmentStatusProperty(..),
        mkPeeringAttachmentStatusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PeeringAttachmentStatusProperty
  = PeeringAttachmentStatusProperty {code :: (Prelude.Maybe (Value Prelude.Text)),
                                     message :: (Prelude.Maybe (Value Prelude.Text))}
mkPeeringAttachmentStatusProperty ::
  PeeringAttachmentStatusProperty
mkPeeringAttachmentStatusProperty
  = PeeringAttachmentStatusProperty
      {code = Prelude.Nothing, message = Prelude.Nothing}
instance ToResourceProperties PeeringAttachmentStatusProperty where
  toResourceProperties PeeringAttachmentStatusProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayPeeringAttachment.PeeringAttachmentStatus",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Code" Prelude.<$> code,
                            (JSON..=) "Message" Prelude.<$> message])}
instance JSON.ToJSON PeeringAttachmentStatusProperty where
  toJSON PeeringAttachmentStatusProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Code" Prelude.<$> code,
               (JSON..=) "Message" Prelude.<$> message]))
instance Property "Code" PeeringAttachmentStatusProperty where
  type PropertyType "Code" PeeringAttachmentStatusProperty = Value Prelude.Text
  set newValue PeeringAttachmentStatusProperty {..}
    = PeeringAttachmentStatusProperty
        {code = Prelude.pure newValue, ..}
instance Property "Message" PeeringAttachmentStatusProperty where
  type PropertyType "Message" PeeringAttachmentStatusProperty = Value Prelude.Text
  set newValue PeeringAttachmentStatusProperty {..}
    = PeeringAttachmentStatusProperty
        {message = Prelude.pure newValue, ..}