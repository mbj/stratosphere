module Stratosphere.Budgets.Budget.NotificationProperty (
        NotificationProperty(..), mkNotificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationProperty
  = NotificationProperty {comparisonOperator :: (Value Prelude.Text),
                          notificationType :: (Value Prelude.Text),
                          threshold :: (Value Prelude.Double),
                          thresholdType :: (Prelude.Maybe (Value Prelude.Text))}
mkNotificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> NotificationProperty
mkNotificationProperty
  comparisonOperator
  notificationType
  threshold
  = NotificationProperty
      {comparisonOperator = comparisonOperator,
       notificationType = notificationType, threshold = threshold,
       thresholdType = Prelude.Nothing}
instance ToResourceProperties NotificationProperty where
  toResourceProperties NotificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.Notification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComparisonOperator" JSON..= comparisonOperator,
                            "NotificationType" JSON..= notificationType,
                            "Threshold" JSON..= threshold]
                           (Prelude.catMaybes
                              [(JSON..=) "ThresholdType" Prelude.<$> thresholdType]))}
instance JSON.ToJSON NotificationProperty where
  toJSON NotificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComparisonOperator" JSON..= comparisonOperator,
               "NotificationType" JSON..= notificationType,
               "Threshold" JSON..= threshold]
              (Prelude.catMaybes
                 [(JSON..=) "ThresholdType" Prelude.<$> thresholdType])))
instance Property "ComparisonOperator" NotificationProperty where
  type PropertyType "ComparisonOperator" NotificationProperty = Value Prelude.Text
  set newValue NotificationProperty {..}
    = NotificationProperty {comparisonOperator = newValue, ..}
instance Property "NotificationType" NotificationProperty where
  type PropertyType "NotificationType" NotificationProperty = Value Prelude.Text
  set newValue NotificationProperty {..}
    = NotificationProperty {notificationType = newValue, ..}
instance Property "Threshold" NotificationProperty where
  type PropertyType "Threshold" NotificationProperty = Value Prelude.Double
  set newValue NotificationProperty {..}
    = NotificationProperty {threshold = newValue, ..}
instance Property "ThresholdType" NotificationProperty where
  type PropertyType "ThresholdType" NotificationProperty = Value Prelude.Text
  set newValue NotificationProperty {..}
    = NotificationProperty {thresholdType = Prelude.pure newValue, ..}