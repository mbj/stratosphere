module Stratosphere.IoT.TopicRule.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.CloudwatchAlarmActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.CloudwatchLogsActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.CloudwatchMetricActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.DynamoDBActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.DynamoDBv2ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.ElasticsearchActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.FirehoseActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.HttpActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.IotAnalyticsActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.IotEventsActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.IotSiteWiseActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.KafkaActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.KinesisActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.LambdaActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.LocationActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.OpenSearchActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.RepublishActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.S3ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.SnsActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.SqsActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.StepFunctionsActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.TimestreamActionProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = ActionProperty {cloudwatchAlarm :: (Prelude.Maybe CloudwatchAlarmActionProperty),
                    cloudwatchLogs :: (Prelude.Maybe CloudwatchLogsActionProperty),
                    cloudwatchMetric :: (Prelude.Maybe CloudwatchMetricActionProperty),
                    dynamoDB :: (Prelude.Maybe DynamoDBActionProperty),
                    dynamoDBv2 :: (Prelude.Maybe DynamoDBv2ActionProperty),
                    elasticsearch :: (Prelude.Maybe ElasticsearchActionProperty),
                    firehose :: (Prelude.Maybe FirehoseActionProperty),
                    http :: (Prelude.Maybe HttpActionProperty),
                    iotAnalytics :: (Prelude.Maybe IotAnalyticsActionProperty),
                    iotEvents :: (Prelude.Maybe IotEventsActionProperty),
                    iotSiteWise :: (Prelude.Maybe IotSiteWiseActionProperty),
                    kafka :: (Prelude.Maybe KafkaActionProperty),
                    kinesis :: (Prelude.Maybe KinesisActionProperty),
                    lambda :: (Prelude.Maybe LambdaActionProperty),
                    location :: (Prelude.Maybe LocationActionProperty),
                    openSearch :: (Prelude.Maybe OpenSearchActionProperty),
                    republish :: (Prelude.Maybe RepublishActionProperty),
                    s3 :: (Prelude.Maybe S3ActionProperty),
                    sns :: (Prelude.Maybe SnsActionProperty),
                    sqs :: (Prelude.Maybe SqsActionProperty),
                    stepFunctions :: (Prelude.Maybe StepFunctionsActionProperty),
                    timestream :: (Prelude.Maybe TimestreamActionProperty)}
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {cloudwatchAlarm = Prelude.Nothing,
       cloudwatchLogs = Prelude.Nothing,
       cloudwatchMetric = Prelude.Nothing, dynamoDB = Prelude.Nothing,
       dynamoDBv2 = Prelude.Nothing, elasticsearch = Prelude.Nothing,
       firehose = Prelude.Nothing, http = Prelude.Nothing,
       iotAnalytics = Prelude.Nothing, iotEvents = Prelude.Nothing,
       iotSiteWise = Prelude.Nothing, kafka = Prelude.Nothing,
       kinesis = Prelude.Nothing, lambda = Prelude.Nothing,
       location = Prelude.Nothing, openSearch = Prelude.Nothing,
       republish = Prelude.Nothing, s3 = Prelude.Nothing,
       sns = Prelude.Nothing, sqs = Prelude.Nothing,
       stepFunctions = Prelude.Nothing, timestream = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudwatchAlarm" Prelude.<$> cloudwatchAlarm,
                            (JSON..=) "CloudwatchLogs" Prelude.<$> cloudwatchLogs,
                            (JSON..=) "CloudwatchMetric" Prelude.<$> cloudwatchMetric,
                            (JSON..=) "DynamoDB" Prelude.<$> dynamoDB,
                            (JSON..=) "DynamoDBv2" Prelude.<$> dynamoDBv2,
                            (JSON..=) "Elasticsearch" Prelude.<$> elasticsearch,
                            (JSON..=) "Firehose" Prelude.<$> firehose,
                            (JSON..=) "Http" Prelude.<$> http,
                            (JSON..=) "IotAnalytics" Prelude.<$> iotAnalytics,
                            (JSON..=) "IotEvents" Prelude.<$> iotEvents,
                            (JSON..=) "IotSiteWise" Prelude.<$> iotSiteWise,
                            (JSON..=) "Kafka" Prelude.<$> kafka,
                            (JSON..=) "Kinesis" Prelude.<$> kinesis,
                            (JSON..=) "Lambda" Prelude.<$> lambda,
                            (JSON..=) "Location" Prelude.<$> location,
                            (JSON..=) "OpenSearch" Prelude.<$> openSearch,
                            (JSON..=) "Republish" Prelude.<$> republish,
                            (JSON..=) "S3" Prelude.<$> s3, (JSON..=) "Sns" Prelude.<$> sns,
                            (JSON..=) "Sqs" Prelude.<$> sqs,
                            (JSON..=) "StepFunctions" Prelude.<$> stepFunctions,
                            (JSON..=) "Timestream" Prelude.<$> timestream])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudwatchAlarm" Prelude.<$> cloudwatchAlarm,
               (JSON..=) "CloudwatchLogs" Prelude.<$> cloudwatchLogs,
               (JSON..=) "CloudwatchMetric" Prelude.<$> cloudwatchMetric,
               (JSON..=) "DynamoDB" Prelude.<$> dynamoDB,
               (JSON..=) "DynamoDBv2" Prelude.<$> dynamoDBv2,
               (JSON..=) "Elasticsearch" Prelude.<$> elasticsearch,
               (JSON..=) "Firehose" Prelude.<$> firehose,
               (JSON..=) "Http" Prelude.<$> http,
               (JSON..=) "IotAnalytics" Prelude.<$> iotAnalytics,
               (JSON..=) "IotEvents" Prelude.<$> iotEvents,
               (JSON..=) "IotSiteWise" Prelude.<$> iotSiteWise,
               (JSON..=) "Kafka" Prelude.<$> kafka,
               (JSON..=) "Kinesis" Prelude.<$> kinesis,
               (JSON..=) "Lambda" Prelude.<$> lambda,
               (JSON..=) "Location" Prelude.<$> location,
               (JSON..=) "OpenSearch" Prelude.<$> openSearch,
               (JSON..=) "Republish" Prelude.<$> republish,
               (JSON..=) "S3" Prelude.<$> s3, (JSON..=) "Sns" Prelude.<$> sns,
               (JSON..=) "Sqs" Prelude.<$> sqs,
               (JSON..=) "StepFunctions" Prelude.<$> stepFunctions,
               (JSON..=) "Timestream" Prelude.<$> timestream]))
instance Property "CloudwatchAlarm" ActionProperty where
  type PropertyType "CloudwatchAlarm" ActionProperty = CloudwatchAlarmActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {cloudwatchAlarm = Prelude.pure newValue, ..}
instance Property "CloudwatchLogs" ActionProperty where
  type PropertyType "CloudwatchLogs" ActionProperty = CloudwatchLogsActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {cloudwatchLogs = Prelude.pure newValue, ..}
instance Property "CloudwatchMetric" ActionProperty where
  type PropertyType "CloudwatchMetric" ActionProperty = CloudwatchMetricActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {cloudwatchMetric = Prelude.pure newValue, ..}
instance Property "DynamoDB" ActionProperty where
  type PropertyType "DynamoDB" ActionProperty = DynamoDBActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {dynamoDB = Prelude.pure newValue, ..}
instance Property "DynamoDBv2" ActionProperty where
  type PropertyType "DynamoDBv2" ActionProperty = DynamoDBv2ActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {dynamoDBv2 = Prelude.pure newValue, ..}
instance Property "Elasticsearch" ActionProperty where
  type PropertyType "Elasticsearch" ActionProperty = ElasticsearchActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {elasticsearch = Prelude.pure newValue, ..}
instance Property "Firehose" ActionProperty where
  type PropertyType "Firehose" ActionProperty = FirehoseActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {firehose = Prelude.pure newValue, ..}
instance Property "Http" ActionProperty where
  type PropertyType "Http" ActionProperty = HttpActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {http = Prelude.pure newValue, ..}
instance Property "IotAnalytics" ActionProperty where
  type PropertyType "IotAnalytics" ActionProperty = IotAnalyticsActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {iotAnalytics = Prelude.pure newValue, ..}
instance Property "IotEvents" ActionProperty where
  type PropertyType "IotEvents" ActionProperty = IotEventsActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {iotEvents = Prelude.pure newValue, ..}
instance Property "IotSiteWise" ActionProperty where
  type PropertyType "IotSiteWise" ActionProperty = IotSiteWiseActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {iotSiteWise = Prelude.pure newValue, ..}
instance Property "Kafka" ActionProperty where
  type PropertyType "Kafka" ActionProperty = KafkaActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {kafka = Prelude.pure newValue, ..}
instance Property "Kinesis" ActionProperty where
  type PropertyType "Kinesis" ActionProperty = KinesisActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {kinesis = Prelude.pure newValue, ..}
instance Property "Lambda" ActionProperty where
  type PropertyType "Lambda" ActionProperty = LambdaActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {lambda = Prelude.pure newValue, ..}
instance Property "Location" ActionProperty where
  type PropertyType "Location" ActionProperty = LocationActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {location = Prelude.pure newValue, ..}
instance Property "OpenSearch" ActionProperty where
  type PropertyType "OpenSearch" ActionProperty = OpenSearchActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {openSearch = Prelude.pure newValue, ..}
instance Property "Republish" ActionProperty where
  type PropertyType "Republish" ActionProperty = RepublishActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {republish = Prelude.pure newValue, ..}
instance Property "S3" ActionProperty where
  type PropertyType "S3" ActionProperty = S3ActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {s3 = Prelude.pure newValue, ..}
instance Property "Sns" ActionProperty where
  type PropertyType "Sns" ActionProperty = SnsActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {sns = Prelude.pure newValue, ..}
instance Property "Sqs" ActionProperty where
  type PropertyType "Sqs" ActionProperty = SqsActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {sqs = Prelude.pure newValue, ..}
instance Property "StepFunctions" ActionProperty where
  type PropertyType "StepFunctions" ActionProperty = StepFunctionsActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {stepFunctions = Prelude.pure newValue, ..}
instance Property "Timestream" ActionProperty where
  type PropertyType "Timestream" ActionProperty = TimestreamActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {timestream = Prelude.pure newValue, ..}