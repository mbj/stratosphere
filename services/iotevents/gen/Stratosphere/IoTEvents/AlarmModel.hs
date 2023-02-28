module Stratosphere.IoTEvents.AlarmModel (
        module Exports, AlarmModel(..), mkAlarmModel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AlarmCapabilitiesProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AlarmEventActionsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AlarmRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AlarmModel
  = AlarmModel {alarmCapabilities :: (Prelude.Maybe AlarmCapabilitiesProperty),
                alarmEventActions :: (Prelude.Maybe AlarmEventActionsProperty),
                alarmModelDescription :: (Prelude.Maybe (Value Prelude.Text)),
                alarmModelName :: (Prelude.Maybe (Value Prelude.Text)),
                alarmRule :: AlarmRuleProperty,
                key :: (Prelude.Maybe (Value Prelude.Text)),
                roleArn :: (Value Prelude.Text),
                severity :: (Prelude.Maybe (Value Prelude.Integer)),
                tags :: (Prelude.Maybe [Tag])}
mkAlarmModel ::
  AlarmRuleProperty -> Value Prelude.Text -> AlarmModel
mkAlarmModel alarmRule roleArn
  = AlarmModel
      {alarmRule = alarmRule, roleArn = roleArn,
       alarmCapabilities = Prelude.Nothing,
       alarmEventActions = Prelude.Nothing,
       alarmModelDescription = Prelude.Nothing,
       alarmModelName = Prelude.Nothing, key = Prelude.Nothing,
       severity = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AlarmModel where
  toResourceProperties AlarmModel {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AlarmRule" JSON..= alarmRule, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AlarmCapabilities" Prelude.<$> alarmCapabilities,
                               (JSON..=) "AlarmEventActions" Prelude.<$> alarmEventActions,
                               (JSON..=) "AlarmModelDescription"
                                 Prelude.<$> alarmModelDescription,
                               (JSON..=) "AlarmModelName" Prelude.<$> alarmModelName,
                               (JSON..=) "Key" Prelude.<$> key,
                               (JSON..=) "Severity" Prelude.<$> severity,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AlarmModel where
  toJSON AlarmModel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AlarmRule" JSON..= alarmRule, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AlarmCapabilities" Prelude.<$> alarmCapabilities,
                  (JSON..=) "AlarmEventActions" Prelude.<$> alarmEventActions,
                  (JSON..=) "AlarmModelDescription"
                    Prelude.<$> alarmModelDescription,
                  (JSON..=) "AlarmModelName" Prelude.<$> alarmModelName,
                  (JSON..=) "Key" Prelude.<$> key,
                  (JSON..=) "Severity" Prelude.<$> severity,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AlarmCapabilities" AlarmModel where
  type PropertyType "AlarmCapabilities" AlarmModel = AlarmCapabilitiesProperty
  set newValue AlarmModel {..}
    = AlarmModel {alarmCapabilities = Prelude.pure newValue, ..}
instance Property "AlarmEventActions" AlarmModel where
  type PropertyType "AlarmEventActions" AlarmModel = AlarmEventActionsProperty
  set newValue AlarmModel {..}
    = AlarmModel {alarmEventActions = Prelude.pure newValue, ..}
instance Property "AlarmModelDescription" AlarmModel where
  type PropertyType "AlarmModelDescription" AlarmModel = Value Prelude.Text
  set newValue AlarmModel {..}
    = AlarmModel {alarmModelDescription = Prelude.pure newValue, ..}
instance Property "AlarmModelName" AlarmModel where
  type PropertyType "AlarmModelName" AlarmModel = Value Prelude.Text
  set newValue AlarmModel {..}
    = AlarmModel {alarmModelName = Prelude.pure newValue, ..}
instance Property "AlarmRule" AlarmModel where
  type PropertyType "AlarmRule" AlarmModel = AlarmRuleProperty
  set newValue AlarmModel {..}
    = AlarmModel {alarmRule = newValue, ..}
instance Property "Key" AlarmModel where
  type PropertyType "Key" AlarmModel = Value Prelude.Text
  set newValue AlarmModel {..}
    = AlarmModel {key = Prelude.pure newValue, ..}
instance Property "RoleArn" AlarmModel where
  type PropertyType "RoleArn" AlarmModel = Value Prelude.Text
  set newValue AlarmModel {..} = AlarmModel {roleArn = newValue, ..}
instance Property "Severity" AlarmModel where
  type PropertyType "Severity" AlarmModel = Value Prelude.Integer
  set newValue AlarmModel {..}
    = AlarmModel {severity = Prelude.pure newValue, ..}
instance Property "Tags" AlarmModel where
  type PropertyType "Tags" AlarmModel = [Tag]
  set newValue AlarmModel {..}
    = AlarmModel {tags = Prelude.pure newValue, ..}