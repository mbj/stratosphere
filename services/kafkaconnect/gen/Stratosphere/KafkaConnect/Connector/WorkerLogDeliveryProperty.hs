module Stratosphere.KafkaConnect.Connector.WorkerLogDeliveryProperty (
        module Exports, WorkerLogDeliveryProperty(..),
        mkWorkerLogDeliveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.CloudWatchLogsLogDeliveryProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.FirehoseLogDeliveryProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.S3LogDeliveryProperty as Exports
import Stratosphere.ResourceProperties
data WorkerLogDeliveryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerlogdelivery.html>
    WorkerLogDeliveryProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerlogdelivery.html#cfn-kafkaconnect-connector-workerlogdelivery-cloudwatchlogs>
                               cloudWatchLogs :: (Prelude.Maybe CloudWatchLogsLogDeliveryProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerlogdelivery.html#cfn-kafkaconnect-connector-workerlogdelivery-firehose>
                               firehose :: (Prelude.Maybe FirehoseLogDeliveryProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerlogdelivery.html#cfn-kafkaconnect-connector-workerlogdelivery-s3>
                               s3 :: (Prelude.Maybe S3LogDeliveryProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkerLogDeliveryProperty :: WorkerLogDeliveryProperty
mkWorkerLogDeliveryProperty
  = WorkerLogDeliveryProperty
      {haddock_workaround_ = (), cloudWatchLogs = Prelude.Nothing,
       firehose = Prelude.Nothing, s3 = Prelude.Nothing}
instance ToResourceProperties WorkerLogDeliveryProperty where
  toResourceProperties WorkerLogDeliveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.WorkerLogDelivery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
                            (JSON..=) "Firehose" Prelude.<$> firehose,
                            (JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON WorkerLogDeliveryProperty where
  toJSON WorkerLogDeliveryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
               (JSON..=) "Firehose" Prelude.<$> firehose,
               (JSON..=) "S3" Prelude.<$> s3]))
instance Property "CloudWatchLogs" WorkerLogDeliveryProperty where
  type PropertyType "CloudWatchLogs" WorkerLogDeliveryProperty = CloudWatchLogsLogDeliveryProperty
  set newValue WorkerLogDeliveryProperty {..}
    = WorkerLogDeliveryProperty
        {cloudWatchLogs = Prelude.pure newValue, ..}
instance Property "Firehose" WorkerLogDeliveryProperty where
  type PropertyType "Firehose" WorkerLogDeliveryProperty = FirehoseLogDeliveryProperty
  set newValue WorkerLogDeliveryProperty {..}
    = WorkerLogDeliveryProperty {firehose = Prelude.pure newValue, ..}
instance Property "S3" WorkerLogDeliveryProperty where
  type PropertyType "S3" WorkerLogDeliveryProperty = S3LogDeliveryProperty
  set newValue WorkerLogDeliveryProperty {..}
    = WorkerLogDeliveryProperty {s3 = Prelude.pure newValue, ..}