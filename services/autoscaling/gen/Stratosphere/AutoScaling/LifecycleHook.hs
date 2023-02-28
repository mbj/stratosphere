module Stratosphere.AutoScaling.LifecycleHook (
        LifecycleHook(..), mkLifecycleHook
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecycleHook
  = LifecycleHook {autoScalingGroupName :: (Value Prelude.Text),
                   defaultResult :: (Prelude.Maybe (Value Prelude.Text)),
                   heartbeatTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                   lifecycleHookName :: (Prelude.Maybe (Value Prelude.Text)),
                   lifecycleTransition :: (Value Prelude.Text),
                   notificationMetadata :: (Prelude.Maybe (Value Prelude.Text)),
                   notificationTargetARN :: (Prelude.Maybe (Value Prelude.Text)),
                   roleARN :: (Prelude.Maybe (Value Prelude.Text))}
mkLifecycleHook ::
  Value Prelude.Text -> Value Prelude.Text -> LifecycleHook
mkLifecycleHook autoScalingGroupName lifecycleTransition
  = LifecycleHook
      {autoScalingGroupName = autoScalingGroupName,
       lifecycleTransition = lifecycleTransition,
       defaultResult = Prelude.Nothing,
       heartbeatTimeout = Prelude.Nothing,
       lifecycleHookName = Prelude.Nothing,
       notificationMetadata = Prelude.Nothing,
       notificationTargetARN = Prelude.Nothing, roleARN = Prelude.Nothing}
instance ToResourceProperties LifecycleHook where
  toResourceProperties LifecycleHook {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::LifecycleHook",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoScalingGroupName" JSON..= autoScalingGroupName,
                            "LifecycleTransition" JSON..= lifecycleTransition]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultResult" Prelude.<$> defaultResult,
                               (JSON..=) "HeartbeatTimeout" Prelude.<$> heartbeatTimeout,
                               (JSON..=) "LifecycleHookName" Prelude.<$> lifecycleHookName,
                               (JSON..=) "NotificationMetadata" Prelude.<$> notificationMetadata,
                               (JSON..=) "NotificationTargetARN"
                                 Prelude.<$> notificationTargetARN,
                               (JSON..=) "RoleARN" Prelude.<$> roleARN]))}
instance JSON.ToJSON LifecycleHook where
  toJSON LifecycleHook {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoScalingGroupName" JSON..= autoScalingGroupName,
               "LifecycleTransition" JSON..= lifecycleTransition]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultResult" Prelude.<$> defaultResult,
                  (JSON..=) "HeartbeatTimeout" Prelude.<$> heartbeatTimeout,
                  (JSON..=) "LifecycleHookName" Prelude.<$> lifecycleHookName,
                  (JSON..=) "NotificationMetadata" Prelude.<$> notificationMetadata,
                  (JSON..=) "NotificationTargetARN"
                    Prelude.<$> notificationTargetARN,
                  (JSON..=) "RoleARN" Prelude.<$> roleARN])))
instance Property "AutoScalingGroupName" LifecycleHook where
  type PropertyType "AutoScalingGroupName" LifecycleHook = Value Prelude.Text
  set newValue LifecycleHook {..}
    = LifecycleHook {autoScalingGroupName = newValue, ..}
instance Property "DefaultResult" LifecycleHook where
  type PropertyType "DefaultResult" LifecycleHook = Value Prelude.Text
  set newValue LifecycleHook {..}
    = LifecycleHook {defaultResult = Prelude.pure newValue, ..}
instance Property "HeartbeatTimeout" LifecycleHook where
  type PropertyType "HeartbeatTimeout" LifecycleHook = Value Prelude.Integer
  set newValue LifecycleHook {..}
    = LifecycleHook {heartbeatTimeout = Prelude.pure newValue, ..}
instance Property "LifecycleHookName" LifecycleHook where
  type PropertyType "LifecycleHookName" LifecycleHook = Value Prelude.Text
  set newValue LifecycleHook {..}
    = LifecycleHook {lifecycleHookName = Prelude.pure newValue, ..}
instance Property "LifecycleTransition" LifecycleHook where
  type PropertyType "LifecycleTransition" LifecycleHook = Value Prelude.Text
  set newValue LifecycleHook {..}
    = LifecycleHook {lifecycleTransition = newValue, ..}
instance Property "NotificationMetadata" LifecycleHook where
  type PropertyType "NotificationMetadata" LifecycleHook = Value Prelude.Text
  set newValue LifecycleHook {..}
    = LifecycleHook {notificationMetadata = Prelude.pure newValue, ..}
instance Property "NotificationTargetARN" LifecycleHook where
  type PropertyType "NotificationTargetARN" LifecycleHook = Value Prelude.Text
  set newValue LifecycleHook {..}
    = LifecycleHook {notificationTargetARN = Prelude.pure newValue, ..}
instance Property "RoleARN" LifecycleHook where
  type PropertyType "RoleARN" LifecycleHook = Value Prelude.Text
  set newValue LifecycleHook {..}
    = LifecycleHook {roleARN = Prelude.pure newValue, ..}