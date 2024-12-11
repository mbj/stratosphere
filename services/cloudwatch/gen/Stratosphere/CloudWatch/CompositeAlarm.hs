module Stratosphere.CloudWatch.CompositeAlarm (
        CompositeAlarm(..), mkCompositeAlarm
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CompositeAlarm
  = CompositeAlarm {actionsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    actionsSuppressor :: (Prelude.Maybe (Value Prelude.Text)),
                    actionsSuppressorExtensionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                    actionsSuppressorWaitPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                    alarmActions :: (Prelude.Maybe (ValueList Prelude.Text)),
                    alarmDescription :: (Prelude.Maybe (Value Prelude.Text)),
                    alarmName :: (Prelude.Maybe (Value Prelude.Text)),
                    alarmRule :: (Value Prelude.Text),
                    insufficientDataActions :: (Prelude.Maybe (ValueList Prelude.Text)),
                    oKActions :: (Prelude.Maybe (ValueList Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompositeAlarm :: Value Prelude.Text -> CompositeAlarm
mkCompositeAlarm alarmRule
  = CompositeAlarm
      {alarmRule = alarmRule, actionsEnabled = Prelude.Nothing,
       actionsSuppressor = Prelude.Nothing,
       actionsSuppressorExtensionPeriod = Prelude.Nothing,
       actionsSuppressorWaitPeriod = Prelude.Nothing,
       alarmActions = Prelude.Nothing, alarmDescription = Prelude.Nothing,
       alarmName = Prelude.Nothing,
       insufficientDataActions = Prelude.Nothing,
       oKActions = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CompositeAlarm where
  toResourceProperties CompositeAlarm {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::CompositeAlarm",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AlarmRule" JSON..= alarmRule]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionsEnabled" Prelude.<$> actionsEnabled,
                               (JSON..=) "ActionsSuppressor" Prelude.<$> actionsSuppressor,
                               (JSON..=) "ActionsSuppressorExtensionPeriod"
                                 Prelude.<$> actionsSuppressorExtensionPeriod,
                               (JSON..=) "ActionsSuppressorWaitPeriod"
                                 Prelude.<$> actionsSuppressorWaitPeriod,
                               (JSON..=) "AlarmActions" Prelude.<$> alarmActions,
                               (JSON..=) "AlarmDescription" Prelude.<$> alarmDescription,
                               (JSON..=) "AlarmName" Prelude.<$> alarmName,
                               (JSON..=) "InsufficientDataActions"
                                 Prelude.<$> insufficientDataActions,
                               (JSON..=) "OKActions" Prelude.<$> oKActions,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CompositeAlarm where
  toJSON CompositeAlarm {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AlarmRule" JSON..= alarmRule]
              (Prelude.catMaybes
                 [(JSON..=) "ActionsEnabled" Prelude.<$> actionsEnabled,
                  (JSON..=) "ActionsSuppressor" Prelude.<$> actionsSuppressor,
                  (JSON..=) "ActionsSuppressorExtensionPeriod"
                    Prelude.<$> actionsSuppressorExtensionPeriod,
                  (JSON..=) "ActionsSuppressorWaitPeriod"
                    Prelude.<$> actionsSuppressorWaitPeriod,
                  (JSON..=) "AlarmActions" Prelude.<$> alarmActions,
                  (JSON..=) "AlarmDescription" Prelude.<$> alarmDescription,
                  (JSON..=) "AlarmName" Prelude.<$> alarmName,
                  (JSON..=) "InsufficientDataActions"
                    Prelude.<$> insufficientDataActions,
                  (JSON..=) "OKActions" Prelude.<$> oKActions,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ActionsEnabled" CompositeAlarm where
  type PropertyType "ActionsEnabled" CompositeAlarm = Value Prelude.Bool
  set newValue CompositeAlarm {..}
    = CompositeAlarm {actionsEnabled = Prelude.pure newValue, ..}
instance Property "ActionsSuppressor" CompositeAlarm where
  type PropertyType "ActionsSuppressor" CompositeAlarm = Value Prelude.Text
  set newValue CompositeAlarm {..}
    = CompositeAlarm {actionsSuppressor = Prelude.pure newValue, ..}
instance Property "ActionsSuppressorExtensionPeriod" CompositeAlarm where
  type PropertyType "ActionsSuppressorExtensionPeriod" CompositeAlarm = Value Prelude.Integer
  set newValue CompositeAlarm {..}
    = CompositeAlarm
        {actionsSuppressorExtensionPeriod = Prelude.pure newValue, ..}
instance Property "ActionsSuppressorWaitPeriod" CompositeAlarm where
  type PropertyType "ActionsSuppressorWaitPeriod" CompositeAlarm = Value Prelude.Integer
  set newValue CompositeAlarm {..}
    = CompositeAlarm
        {actionsSuppressorWaitPeriod = Prelude.pure newValue, ..}
instance Property "AlarmActions" CompositeAlarm where
  type PropertyType "AlarmActions" CompositeAlarm = ValueList Prelude.Text
  set newValue CompositeAlarm {..}
    = CompositeAlarm {alarmActions = Prelude.pure newValue, ..}
instance Property "AlarmDescription" CompositeAlarm where
  type PropertyType "AlarmDescription" CompositeAlarm = Value Prelude.Text
  set newValue CompositeAlarm {..}
    = CompositeAlarm {alarmDescription = Prelude.pure newValue, ..}
instance Property "AlarmName" CompositeAlarm where
  type PropertyType "AlarmName" CompositeAlarm = Value Prelude.Text
  set newValue CompositeAlarm {..}
    = CompositeAlarm {alarmName = Prelude.pure newValue, ..}
instance Property "AlarmRule" CompositeAlarm where
  type PropertyType "AlarmRule" CompositeAlarm = Value Prelude.Text
  set newValue CompositeAlarm {..}
    = CompositeAlarm {alarmRule = newValue, ..}
instance Property "InsufficientDataActions" CompositeAlarm where
  type PropertyType "InsufficientDataActions" CompositeAlarm = ValueList Prelude.Text
  set newValue CompositeAlarm {..}
    = CompositeAlarm
        {insufficientDataActions = Prelude.pure newValue, ..}
instance Property "OKActions" CompositeAlarm where
  type PropertyType "OKActions" CompositeAlarm = ValueList Prelude.Text
  set newValue CompositeAlarm {..}
    = CompositeAlarm {oKActions = Prelude.pure newValue, ..}
instance Property "Tags" CompositeAlarm where
  type PropertyType "Tags" CompositeAlarm = [Tag]
  set newValue CompositeAlarm {..}
    = CompositeAlarm {tags = Prelude.pure newValue, ..}