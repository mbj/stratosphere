module Stratosphere.EC2.VPCEndpointConnectionNotification (
        VPCEndpointConnectionNotification(..),
        mkVPCEndpointConnectionNotification
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCEndpointConnectionNotification
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html>
    VPCEndpointConnectionNotification {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-connectionevents>
                                       connectionEvents :: (ValueList Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-connectionnotificationarn>
                                       connectionNotificationArn :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-serviceid>
                                       serviceId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-vpcendpointid>
                                       vPCEndpointId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCEndpointConnectionNotification ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> VPCEndpointConnectionNotification
mkVPCEndpointConnectionNotification
  connectionEvents
  connectionNotificationArn
  = VPCEndpointConnectionNotification
      {haddock_workaround_ = (), connectionEvents = connectionEvents,
       connectionNotificationArn = connectionNotificationArn,
       serviceId = Prelude.Nothing, vPCEndpointId = Prelude.Nothing}
instance ToResourceProperties VPCEndpointConnectionNotification where
  toResourceProperties VPCEndpointConnectionNotification {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpointConnectionNotification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionEvents" JSON..= connectionEvents,
                            "ConnectionNotificationArn" JSON..= connectionNotificationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ServiceId" Prelude.<$> serviceId,
                               (JSON..=) "VPCEndpointId" Prelude.<$> vPCEndpointId]))}
instance JSON.ToJSON VPCEndpointConnectionNotification where
  toJSON VPCEndpointConnectionNotification {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionEvents" JSON..= connectionEvents,
               "ConnectionNotificationArn" JSON..= connectionNotificationArn]
              (Prelude.catMaybes
                 [(JSON..=) "ServiceId" Prelude.<$> serviceId,
                  (JSON..=) "VPCEndpointId" Prelude.<$> vPCEndpointId])))
instance Property "ConnectionEvents" VPCEndpointConnectionNotification where
  type PropertyType "ConnectionEvents" VPCEndpointConnectionNotification = ValueList Prelude.Text
  set newValue VPCEndpointConnectionNotification {..}
    = VPCEndpointConnectionNotification
        {connectionEvents = newValue, ..}
instance Property "ConnectionNotificationArn" VPCEndpointConnectionNotification where
  type PropertyType "ConnectionNotificationArn" VPCEndpointConnectionNotification = Value Prelude.Text
  set newValue VPCEndpointConnectionNotification {..}
    = VPCEndpointConnectionNotification
        {connectionNotificationArn = newValue, ..}
instance Property "ServiceId" VPCEndpointConnectionNotification where
  type PropertyType "ServiceId" VPCEndpointConnectionNotification = Value Prelude.Text
  set newValue VPCEndpointConnectionNotification {..}
    = VPCEndpointConnectionNotification
        {serviceId = Prelude.pure newValue, ..}
instance Property "VPCEndpointId" VPCEndpointConnectionNotification where
  type PropertyType "VPCEndpointId" VPCEndpointConnectionNotification = Value Prelude.Text
  set newValue VPCEndpointConnectionNotification {..}
    = VPCEndpointConnectionNotification
        {vPCEndpointId = Prelude.pure newValue, ..}