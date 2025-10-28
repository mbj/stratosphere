module Stratosphere.Lightsail.Alarm (
        Alarm(..), mkAlarm
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alarm
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html>
    Alarm {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-alarmname>
           alarmName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-comparisonoperator>
           comparisonOperator :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-contactprotocols>
           contactProtocols :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-datapointstoalarm>
           datapointsToAlarm :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-evaluationperiods>
           evaluationPeriods :: (Value Prelude.Integer),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-metricname>
           metricName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-monitoredresourcename>
           monitoredResourceName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-notificationenabled>
           notificationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-notificationtriggers>
           notificationTriggers :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-threshold>
           threshold :: (Value Prelude.Double),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-alarm.html#cfn-lightsail-alarm-treatmissingdata>
           treatMissingData :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), alarmName = alarmName,
       comparisonOperator = comparisonOperator,
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
        {awsType = "AWS::Lightsail::Alarm", supportsTags = Prelude.False,
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