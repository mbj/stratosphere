module Stratosphere.IoTEvents.AlarmModel.AlarmActionProperty (
        module Exports, AlarmActionProperty(..), mkAlarmActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.DynamoDBProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.DynamoDBv2Property as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.FirehoseProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.IotEventsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.IotSiteWiseProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.IotTopicPublishProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.LambdaProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.SnsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.SqsProperty as Exports
import Stratosphere.ResourceProperties
data AlarmActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html>
    AlarmActionProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-dynamodb>
                         dynamoDB :: (Prelude.Maybe DynamoDBProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-dynamodbv2>
                         dynamoDBv2 :: (Prelude.Maybe DynamoDBv2Property),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-firehose>
                         firehose :: (Prelude.Maybe FirehoseProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-iotevents>
                         iotEvents :: (Prelude.Maybe IotEventsProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-iotsitewise>
                         iotSiteWise :: (Prelude.Maybe IotSiteWiseProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-iottopicpublish>
                         iotTopicPublish :: (Prelude.Maybe IotTopicPublishProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-lambda>
                         lambda :: (Prelude.Maybe LambdaProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-sns>
                         sns :: (Prelude.Maybe SnsProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-sqs>
                         sqs :: (Prelude.Maybe SqsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmActionProperty :: AlarmActionProperty
mkAlarmActionProperty
  = AlarmActionProperty
      {haddock_workaround_ = (), dynamoDB = Prelude.Nothing,
       dynamoDBv2 = Prelude.Nothing, firehose = Prelude.Nothing,
       iotEvents = Prelude.Nothing, iotSiteWise = Prelude.Nothing,
       iotTopicPublish = Prelude.Nothing, lambda = Prelude.Nothing,
       sns = Prelude.Nothing, sqs = Prelude.Nothing}
instance ToResourceProperties AlarmActionProperty where
  toResourceProperties AlarmActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.AlarmAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamoDB" Prelude.<$> dynamoDB,
                            (JSON..=) "DynamoDBv2" Prelude.<$> dynamoDBv2,
                            (JSON..=) "Firehose" Prelude.<$> firehose,
                            (JSON..=) "IotEvents" Prelude.<$> iotEvents,
                            (JSON..=) "IotSiteWise" Prelude.<$> iotSiteWise,
                            (JSON..=) "IotTopicPublish" Prelude.<$> iotTopicPublish,
                            (JSON..=) "Lambda" Prelude.<$> lambda,
                            (JSON..=) "Sns" Prelude.<$> sns, (JSON..=) "Sqs" Prelude.<$> sqs])}
instance JSON.ToJSON AlarmActionProperty where
  toJSON AlarmActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamoDB" Prelude.<$> dynamoDB,
               (JSON..=) "DynamoDBv2" Prelude.<$> dynamoDBv2,
               (JSON..=) "Firehose" Prelude.<$> firehose,
               (JSON..=) "IotEvents" Prelude.<$> iotEvents,
               (JSON..=) "IotSiteWise" Prelude.<$> iotSiteWise,
               (JSON..=) "IotTopicPublish" Prelude.<$> iotTopicPublish,
               (JSON..=) "Lambda" Prelude.<$> lambda,
               (JSON..=) "Sns" Prelude.<$> sns, (JSON..=) "Sqs" Prelude.<$> sqs]))
instance Property "DynamoDB" AlarmActionProperty where
  type PropertyType "DynamoDB" AlarmActionProperty = DynamoDBProperty
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {dynamoDB = Prelude.pure newValue, ..}
instance Property "DynamoDBv2" AlarmActionProperty where
  type PropertyType "DynamoDBv2" AlarmActionProperty = DynamoDBv2Property
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {dynamoDBv2 = Prelude.pure newValue, ..}
instance Property "Firehose" AlarmActionProperty where
  type PropertyType "Firehose" AlarmActionProperty = FirehoseProperty
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {firehose = Prelude.pure newValue, ..}
instance Property "IotEvents" AlarmActionProperty where
  type PropertyType "IotEvents" AlarmActionProperty = IotEventsProperty
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {iotEvents = Prelude.pure newValue, ..}
instance Property "IotSiteWise" AlarmActionProperty where
  type PropertyType "IotSiteWise" AlarmActionProperty = IotSiteWiseProperty
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {iotSiteWise = Prelude.pure newValue, ..}
instance Property "IotTopicPublish" AlarmActionProperty where
  type PropertyType "IotTopicPublish" AlarmActionProperty = IotTopicPublishProperty
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {iotTopicPublish = Prelude.pure newValue, ..}
instance Property "Lambda" AlarmActionProperty where
  type PropertyType "Lambda" AlarmActionProperty = LambdaProperty
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {lambda = Prelude.pure newValue, ..}
instance Property "Sns" AlarmActionProperty where
  type PropertyType "Sns" AlarmActionProperty = SnsProperty
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {sns = Prelude.pure newValue, ..}
instance Property "Sqs" AlarmActionProperty where
  type PropertyType "Sqs" AlarmActionProperty = SqsProperty
  set newValue AlarmActionProperty {..}
    = AlarmActionProperty {sqs = Prelude.pure newValue, ..}