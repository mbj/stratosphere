module Stratosphere.Lightsail.Alarm (
        Alarm(..), mkAlarm
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alarm
  = Alarm {alarmName :: (Value Prelude.Text),
           comparisonOperator :: (Value Prelude.Text),
           contactProtocols :: (Prelude.Maybe (ValueList Prelude.Text)),
           datapointsToAlarm :: (Prelude.Maybe (Value Prelude.Integer)),
           evaluationPeriods :: (Value Prelude.Integer),
           metricName :: (Value Prelude.Text),
           monitoredResourceName :: (Value Prelude.Text),
           notificationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           notificationTriggers :: (Prelude.Maybe (ValueList Prelude.Text)),
           threshold :: (Value Prelude.Double),
           treatMissingData :: (Prelude.Maybe (Value Prelude.Text))}
mkAlarm ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Text
           -> Value Prelude.Text -> Value Prelude.Double -> Alarm
mkAlarm
  alarmName
  comparisonOperator
  evaluationPeriods
  metricName
  monitoredResourceName
  threshold
  = Alarm
      {alarmName = alarmName, comparisonOperator = comparisonOperator,
       evaluationPeriods = evaluationPeriods, metricName = metricName,
       monitoredResourceName = monitoredResourceName,
       threshold = threshold, contactProtocols = Prelude.Nothing,
       datapointsToAlarm = Prelude.Nothing,
       notificationEnabled = Prelude.Nothing,
       notificationTriggers = Prelude.Nothing,
       treatMissingData = Prelude.Nothing}
instance ToResourceProperties Alarm where
  toResourceProperties Alarm {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Alarm",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AlarmName" JSON..= alarmName,
                            "ComparisonOperator" JSON..= comparisonOperator,
                            "EvaluationPeriods" JSON..= evaluationPeriods,
                            "MetricName" JSON..= metricName,
                            "MonitoredResourceName" JSON..= monitoredResourceName,
                            "Threshold" JSON..= threshold]
                           (Prelude.catMaybes
                              [(JSON..=) "ContactProtocols" Prelude.<$> contactProtocols,
                               (JSON..=) "DatapointsToAlarm" Prelude.<$> datapointsToAlarm,
                               (JSON..=) "NotificationEnabled" Prelude.<$> notificationEnabled,
                               (JSON..=) "NotificationTriggers" Prelude.<$> notificationTriggers,
                               (JSON..=) "TreatMissingData" Prelude.<$> treatMissingData]))}
instance JSON.ToJSON Alarm where
  toJSON Alarm {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AlarmName" JSON..= alarmName,
               "ComparisonOperator" JSON..= comparisonOperator,
               "EvaluationPeriods" JSON..= evaluationPeriods,
               "MetricName" JSON..= metricName,
               "MonitoredResourceName" JSON..= monitoredResourceName,
               "Threshold" JSON..= threshold]
              (Prelude.catMaybes
                 [(JSON..=) "ContactProtocols" Prelude.<$> contactProtocols,
                  (JSON..=) "DatapointsToAlarm" Prelude.<$> datapointsToAlarm,
                  (JSON..=) "NotificationEnabled" Prelude.<$> notificationEnabled,
                  (JSON..=) "NotificationTriggers" Prelude.<$> notificationTriggers,
                  (JSON..=) "TreatMissingData" Prelude.<$> treatMissingData])))
instance Property "AlarmName" Alarm where
  type PropertyType "AlarmName" Alarm = Value Prelude.Text
  set newValue Alarm {..} = Alarm {alarmName = newValue, ..}
instance Property "ComparisonOperator" Alarm where
  type PropertyType "ComparisonOperator" Alarm = Value Prelude.Text
  set newValue Alarm {..} = Alarm {comparisonOperator = newValue, ..}
instance Property "ContactProtocols" Alarm where
  type PropertyType "ContactProtocols" Alarm = ValueList Prelude.Text
  set newValue Alarm {..}
    = Alarm {contactProtocols = Prelude.pure newValue, ..}
instance Property "DatapointsToAlarm" Alarm where
  type PropertyType "DatapointsToAlarm" Alarm = Value Prelude.Integer
  set newValue Alarm {..}
    = Alarm {datapointsToAlarm = Prelude.pure newValue, ..}
instance Property "EvaluationPeriods" Alarm where
  type PropertyType "EvaluationPeriods" Alarm = Value Prelude.Integer
  set newValue Alarm {..} = Alarm {evaluationPeriods = newValue, ..}
instance Property "MetricName" Alarm where
  type PropertyType "MetricName" Alarm = Value Prelude.Text
  set newValue Alarm {..} = Alarm {metricName = newValue, ..}
instance Property "MonitoredResourceName" Alarm where
  type PropertyType "MonitoredResourceName" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {monitoredResourceName = newValue, ..}
instance Property "NotificationEnabled" Alarm where
  type PropertyType "NotificationEnabled" Alarm = Value Prelude.Bool
  set newValue Alarm {..}
    = Alarm {notificationEnabled = Prelude.pure newValue, ..}
instance Property "NotificationTriggers" Alarm where
  type PropertyType "NotificationTriggers" Alarm = ValueList Prelude.Text
  set newValue Alarm {..}
    = Alarm {notificationTriggers = Prelude.pure newValue, ..}
instance Property "Threshold" Alarm where
  type PropertyType "Threshold" Alarm = Value Prelude.Double
  set newValue Alarm {..} = Alarm {threshold = newValue, ..}
instance Property "TreatMissingData" Alarm where
  type PropertyType "TreatMissingData" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {treatMissingData = Prelude.pure newValue, ..}