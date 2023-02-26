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
  = VPCEndpointConnectionNotification {connectionEvents :: (ValueList Prelude.Text),
                                       connectionNotificationArn :: (Value Prelude.Text),
                                       serviceId :: (Prelude.Maybe (Value Prelude.Text)),
                                       vPCEndpointId :: (Prelude.Maybe (Value Prelude.Text))}
mkVPCEndpointConnectionNotification ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> VPCEndpointConnectionNotification
mkVPCEndpointConnectionNotification
  connectionEvents
  connectionNotificationArn
  = VPCEndpointConnectionNotification
      {connectionEvents = connectionEvents,
       connectionNotificationArn = connectionNotificationArn,
       serviceId = Prelude.Nothing, vPCEndpointId = Prelude.Nothing}
instance ToResourceProperties VPCEndpointConnectionNotification where
  toResourceProperties VPCEndpointConnectionNotification {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpointConnectionNotification",
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