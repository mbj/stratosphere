module Stratosphere.AutoScaling.AutoScalingGroup.LifecycleHookSpecificationProperty (
        LifecycleHookSpecificationProperty(..),
        mkLifecycleHookSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecycleHookSpecificationProperty
  = LifecycleHookSpecificationProperty {defaultResult :: (Prelude.Maybe (Value Prelude.Text)),
                                        heartbeatTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                        lifecycleHookName :: (Value Prelude.Text),
                                        lifecycleTransition :: (Value Prelude.Text),
                                        notificationMetadata :: (Prelude.Maybe (Value Prelude.Text)),
                                        notificationTargetARN :: (Prelude.Maybe (Value Prelude.Text)),
                                        roleARN :: (Prelude.Maybe (Value Prelude.Text))}
mkLifecycleHookSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> LifecycleHookSpecificationProperty
mkLifecycleHookSpecificationProperty
  lifecycleHookName
  lifecycleTransition
  = LifecycleHookSpecificationProperty
      {lifecycleHookName = lifecycleHookName,
       lifecycleTransition = lifecycleTransition,
       defaultResult = Prelude.Nothing,
       heartbeatTimeout = Prelude.Nothing,
       notificationMetadata = Prelude.Nothing,
       notificationTargetARN = Prelude.Nothing, roleARN = Prelude.Nothing}
instance ToResourceProperties LifecycleHookSpecificationProperty where
  toResourceProperties LifecycleHookSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.LifecycleHookSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LifecycleHookName" JSON..= lifecycleHookName,
                            "LifecycleTransition" JSON..= lifecycleTransition]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultResult" Prelude.<$> defaultResult,
                               (JSON..=) "HeartbeatTimeout" Prelude.<$> heartbeatTimeout,
                               (JSON..=) "NotificationMetadata" Prelude.<$> notificationMetadata,
                               (JSON..=) "NotificationTargetARN"
                                 Prelude.<$> notificationTargetARN,
                               (JSON..=) "RoleARN" Prelude.<$> roleARN]))}
instance JSON.ToJSON LifecycleHookSpecificationProperty where
  toJSON LifecycleHookSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LifecycleHookName" JSON..= lifecycleHookName,
               "LifecycleTransition" JSON..= lifecycleTransition]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultResult" Prelude.<$> defaultResult,
                  (JSON..=) "HeartbeatTimeout" Prelude.<$> heartbeatTimeout,
                  (JSON..=) "NotificationMetadata" Prelude.<$> notificationMetadata,
                  (JSON..=) "NotificationTargetARN"
                    Prelude.<$> notificationTargetARN,
                  (JSON..=) "RoleARN" Prelude.<$> roleARN])))
instance Property "DefaultResult" LifecycleHookSpecificationProperty where
  type PropertyType "DefaultResult" LifecycleHookSpecificationProperty = Value Prelude.Text
  set newValue LifecycleHookSpecificationProperty {..}
    = LifecycleHookSpecificationProperty
        {defaultResult = Prelude.pure newValue, ..}
instance Property "HeartbeatTimeout" LifecycleHookSpecificationProperty where
  type PropertyType "HeartbeatTimeout" LifecycleHookSpecificationProperty = Value Prelude.Integer
  set newValue LifecycleHookSpecificationProperty {..}
    = LifecycleHookSpecificationProperty
        {heartbeatTimeout = Prelude.pure newValue, ..}
instance Property "LifecycleHookName" LifecycleHookSpecificationProperty where
  type PropertyType "LifecycleHookName" LifecycleHookSpecificationProperty = Value Prelude.Text
  set newValue LifecycleHookSpecificationProperty {..}
    = LifecycleHookSpecificationProperty
        {lifecycleHookName = newValue, ..}
instance Property "LifecycleTransition" LifecycleHookSpecificationProperty where
  type PropertyType "LifecycleTransition" LifecycleHookSpecificationProperty = Value Prelude.Text
  set newValue LifecycleHookSpecificationProperty {..}
    = LifecycleHookSpecificationProperty
        {lifecycleTransition = newValue, ..}
instance Property "NotificationMetadata" LifecycleHookSpecificationProperty where
  type PropertyType "NotificationMetadata" LifecycleHookSpecificationProperty = Value Prelude.Text
  set newValue LifecycleHookSpecificationProperty {..}
    = LifecycleHookSpecificationProperty
        {notificationMetadata = Prelude.pure newValue, ..}
instance Property "NotificationTargetARN" LifecycleHookSpecificationProperty where
  type PropertyType "NotificationTargetARN" LifecycleHookSpecificationProperty = Value Prelude.Text
  set newValue LifecycleHookSpecificationProperty {..}
    = LifecycleHookSpecificationProperty
        {notificationTargetARN = Prelude.pure newValue, ..}
instance Property "RoleARN" LifecycleHookSpecificationProperty where
  type PropertyType "RoleARN" LifecycleHookSpecificationProperty = Value Prelude.Text
  set newValue LifecycleHookSpecificationProperty {..}
    = LifecycleHookSpecificationProperty
        {roleARN = Prelude.pure newValue, ..}