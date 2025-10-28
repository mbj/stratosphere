module Stratosphere.AutoScaling.ScheduledAction (
        ScheduledAction(..), mkScheduledAction
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduledAction
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html>
    ScheduledAction {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html#cfn-autoscaling-scheduledaction-autoscalinggroupname>
                     autoScalingGroupName :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html#cfn-autoscaling-scheduledaction-desiredcapacity>
                     desiredCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html#cfn-autoscaling-scheduledaction-endtime>
                     endTime :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html#cfn-autoscaling-scheduledaction-maxsize>
                     maxSize :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html#cfn-autoscaling-scheduledaction-minsize>
                     minSize :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html#cfn-autoscaling-scheduledaction-recurrence>
                     recurrence :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html#cfn-autoscaling-scheduledaction-starttime>
                     startTime :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scheduledaction.html#cfn-autoscaling-scheduledaction-timezone>
                     timeZone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduledAction :: Value Prelude.Text -> ScheduledAction
mkScheduledAction autoScalingGroupName
  = ScheduledAction
      {haddock_workaround_ = (),
       autoScalingGroupName = autoScalingGroupName,
       desiredCapacity = Prelude.Nothing, endTime = Prelude.Nothing,
       maxSize = Prelude.Nothing, minSize = Prelude.Nothing,
       recurrence = Prelude.Nothing, startTime = Prelude.Nothing,
       timeZone = Prelude.Nothing}
instance ToResourceProperties ScheduledAction where
  toResourceProperties ScheduledAction {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScheduledAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoScalingGroupName" JSON..= autoScalingGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "DesiredCapacity" Prelude.<$> desiredCapacity,
                               (JSON..=) "EndTime" Prelude.<$> endTime,
                               (JSON..=) "MaxSize" Prelude.<$> maxSize,
                               (JSON..=) "MinSize" Prelude.<$> minSize,
                               (JSON..=) "Recurrence" Prelude.<$> recurrence,
                               (JSON..=) "StartTime" Prelude.<$> startTime,
                               (JSON..=) "TimeZone" Prelude.<$> timeZone]))}
instance JSON.ToJSON ScheduledAction where
  toJSON ScheduledAction {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoScalingGroupName" JSON..= autoScalingGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "DesiredCapacity" Prelude.<$> desiredCapacity,
                  (JSON..=) "EndTime" Prelude.<$> endTime,
                  (JSON..=) "MaxSize" Prelude.<$> maxSize,
                  (JSON..=) "MinSize" Prelude.<$> minSize,
                  (JSON..=) "Recurrence" Prelude.<$> recurrence,
                  (JSON..=) "StartTime" Prelude.<$> startTime,
                  (JSON..=) "TimeZone" Prelude.<$> timeZone])))
instance Property "AutoScalingGroupName" ScheduledAction where
  type PropertyType "AutoScalingGroupName" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {autoScalingGroupName = newValue, ..}
instance Property "DesiredCapacity" ScheduledAction where
  type PropertyType "DesiredCapacity" ScheduledAction = Value Prelude.Integer
  set newValue ScheduledAction {..}
    = ScheduledAction {desiredCapacity = Prelude.pure newValue, ..}
instance Property "EndTime" ScheduledAction where
  type PropertyType "EndTime" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {endTime = Prelude.pure newValue, ..}
instance Property "MaxSize" ScheduledAction where
  type PropertyType "MaxSize" ScheduledAction = Value Prelude.Integer
  set newValue ScheduledAction {..}
    = ScheduledAction {maxSize = Prelude.pure newValue, ..}
instance Property "MinSize" ScheduledAction where
  type PropertyType "MinSize" ScheduledAction = Value Prelude.Integer
  set newValue ScheduledAction {..}
    = ScheduledAction {minSize = Prelude.pure newValue, ..}
instance Property "Recurrence" ScheduledAction where
  type PropertyType "Recurrence" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {recurrence = Prelude.pure newValue, ..}
instance Property "StartTime" ScheduledAction where
  type PropertyType "StartTime" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {startTime = Prelude.pure newValue, ..}
instance Property "TimeZone" ScheduledAction where
  type PropertyType "TimeZone" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {timeZone = Prelude.pure newValue, ..}