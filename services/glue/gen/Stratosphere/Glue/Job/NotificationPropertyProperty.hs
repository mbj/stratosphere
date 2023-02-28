module Stratosphere.Glue.Job.NotificationPropertyProperty (
        NotificationPropertyProperty(..), mkNotificationPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationPropertyProperty
  = NotificationPropertyProperty {notifyDelayAfter :: (Prelude.Maybe (Value Prelude.Integer))}
mkNotificationPropertyProperty :: NotificationPropertyProperty
mkNotificationPropertyProperty
  = NotificationPropertyProperty {notifyDelayAfter = Prelude.Nothing}
instance ToResourceProperties NotificationPropertyProperty where
  toResourceProperties NotificationPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Job.NotificationProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NotifyDelayAfter" Prelude.<$> notifyDelayAfter])}
instance JSON.ToJSON NotificationPropertyProperty where
  toJSON NotificationPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NotifyDelayAfter" Prelude.<$> notifyDelayAfter]))
instance Property "NotifyDelayAfter" NotificationPropertyProperty where
  type PropertyType "NotifyDelayAfter" NotificationPropertyProperty = Value Prelude.Integer
  set newValue NotificationPropertyProperty {}
    = NotificationPropertyProperty
        {notifyDelayAfter = Prelude.pure newValue, ..}