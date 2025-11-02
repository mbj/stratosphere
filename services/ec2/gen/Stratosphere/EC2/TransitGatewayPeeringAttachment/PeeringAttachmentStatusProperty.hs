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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewaypeeringattachment-peeringattachmentstatus.html>
    PeeringAttachmentStatusProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewaypeeringattachment-peeringattachmentstatus.html#cfn-ec2-transitgatewaypeeringattachment-peeringattachmentstatus-code>
                                     code :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewaypeeringattachment-peeringattachmentstatus.html#cfn-ec2-transitgatewaypeeringattachment-peeringattachmentstatus-message>
                                     message :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPeeringAttachmentStatusProperty ::
  PeeringAttachmentStatusProperty
mkPeeringAttachmentStatusProperty
  = PeeringAttachmentStatusProperty
      {haddock_workaround_ = (), code = Prelude.Nothing,
       message = Prelude.Nothing}
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