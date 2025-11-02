module Stratosphere.Budgets.Budget.NotificationProperty (
        NotificationProperty(..), mkNotificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html>
    NotificationProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-comparisonoperator>
                          comparisonOperator :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-notificationtype>
                          notificationType :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-threshold>
                          threshold :: (Value Prelude.Double),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-thresholdtype>
                          thresholdType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> NotificationProperty
mkNotificationProperty
  comparisonOperator
  notificationType
  threshold
  = NotificationProperty
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
       notificationType = notificationType, threshold = threshold,
       thresholdType = Prelude.Nothing}
instance ToResourceProperties NotificationProperty where
  toResourceProperties NotificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.Notification",
         supportsTags = Prelude.False,
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