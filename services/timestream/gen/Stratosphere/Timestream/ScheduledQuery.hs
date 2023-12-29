module Stratosphere.Timestream.ScheduledQuery (
        module Exports, ScheduledQuery(..), mkScheduledQuery
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.ErrorReportConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.NotificationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.ScheduleConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.TargetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ScheduledQuery
  = ScheduledQuery {clientToken :: (Prelude.Maybe (Value Prelude.Text)),
                    errorReportConfiguration :: ErrorReportConfigurationProperty,
                    kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                    notificationConfiguration :: NotificationConfigurationProperty,
                    queryString :: (Value Prelude.Text),
                    scheduleConfiguration :: ScheduleConfigurationProperty,
                    scheduledQueryExecutionRoleArn :: (Value Prelude.Text),
                    scheduledQueryName :: (Prelude.Maybe (Value Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag]),
                    targetConfiguration :: (Prelude.Maybe TargetConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduledQuery ::
  ErrorReportConfigurationProperty
  -> NotificationConfigurationProperty
     -> Value Prelude.Text
        -> ScheduleConfigurationProperty
           -> Value Prelude.Text -> ScheduledQuery
mkScheduledQuery
  errorReportConfiguration
  notificationConfiguration
  queryString
  scheduleConfiguration
  scheduledQueryExecutionRoleArn
  = ScheduledQuery
      {errorReportConfiguration = errorReportConfiguration,
       notificationConfiguration = notificationConfiguration,
       queryString = queryString,
       scheduleConfiguration = scheduleConfiguration,
       scheduledQueryExecutionRoleArn = scheduledQueryExecutionRoleArn,
       clientToken = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       scheduledQueryName = Prelude.Nothing, tags = Prelude.Nothing,
       targetConfiguration = Prelude.Nothing}
instance ToResourceProperties ScheduledQuery where
  toResourceProperties ScheduledQuery {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ErrorReportConfiguration" JSON..= errorReportConfiguration,
                            "NotificationConfiguration" JSON..= notificationConfiguration,
                            "QueryString" JSON..= queryString,
                            "ScheduleConfiguration" JSON..= scheduleConfiguration,
                            "ScheduledQueryExecutionRoleArn"
                              JSON..= scheduledQueryExecutionRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "ScheduledQueryName" Prelude.<$> scheduledQueryName,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TargetConfiguration" Prelude.<$> targetConfiguration]))}
instance JSON.ToJSON ScheduledQuery where
  toJSON ScheduledQuery {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ErrorReportConfiguration" JSON..= errorReportConfiguration,
               "NotificationConfiguration" JSON..= notificationConfiguration,
               "QueryString" JSON..= queryString,
               "ScheduleConfiguration" JSON..= scheduleConfiguration,
               "ScheduledQueryExecutionRoleArn"
                 JSON..= scheduledQueryExecutionRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "ScheduledQueryName" Prelude.<$> scheduledQueryName,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TargetConfiguration" Prelude.<$> targetConfiguration])))
instance Property "ClientToken" ScheduledQuery where
  type PropertyType "ClientToken" ScheduledQuery = Value Prelude.Text
  set newValue ScheduledQuery {..}
    = ScheduledQuery {clientToken = Prelude.pure newValue, ..}
instance Property "ErrorReportConfiguration" ScheduledQuery where
  type PropertyType "ErrorReportConfiguration" ScheduledQuery = ErrorReportConfigurationProperty
  set newValue ScheduledQuery {..}
    = ScheduledQuery {errorReportConfiguration = newValue, ..}
instance Property "KmsKeyId" ScheduledQuery where
  type PropertyType "KmsKeyId" ScheduledQuery = Value Prelude.Text
  set newValue ScheduledQuery {..}
    = ScheduledQuery {kmsKeyId = Prelude.pure newValue, ..}
instance Property "NotificationConfiguration" ScheduledQuery where
  type PropertyType "NotificationConfiguration" ScheduledQuery = NotificationConfigurationProperty
  set newValue ScheduledQuery {..}
    = ScheduledQuery {notificationConfiguration = newValue, ..}
instance Property "QueryString" ScheduledQuery where
  type PropertyType "QueryString" ScheduledQuery = Value Prelude.Text
  set newValue ScheduledQuery {..}
    = ScheduledQuery {queryString = newValue, ..}
instance Property "ScheduleConfiguration" ScheduledQuery where
  type PropertyType "ScheduleConfiguration" ScheduledQuery = ScheduleConfigurationProperty
  set newValue ScheduledQuery {..}
    = ScheduledQuery {scheduleConfiguration = newValue, ..}
instance Property "ScheduledQueryExecutionRoleArn" ScheduledQuery where
  type PropertyType "ScheduledQueryExecutionRoleArn" ScheduledQuery = Value Prelude.Text
  set newValue ScheduledQuery {..}
    = ScheduledQuery {scheduledQueryExecutionRoleArn = newValue, ..}
instance Property "ScheduledQueryName" ScheduledQuery where
  type PropertyType "ScheduledQueryName" ScheduledQuery = Value Prelude.Text
  set newValue ScheduledQuery {..}
    = ScheduledQuery {scheduledQueryName = Prelude.pure newValue, ..}
instance Property "Tags" ScheduledQuery where
  type PropertyType "Tags" ScheduledQuery = [Tag]
  set newValue ScheduledQuery {..}
    = ScheduledQuery {tags = Prelude.pure newValue, ..}
instance Property "TargetConfiguration" ScheduledQuery where
  type PropertyType "TargetConfiguration" ScheduledQuery = TargetConfigurationProperty
  set newValue ScheduledQuery {..}
    = ScheduledQuery {targetConfiguration = Prelude.pure newValue, ..}