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
  = AlarmActionProperty {dynamoDB :: (Prelude.Maybe DynamoDBProperty),
                         dynamoDBv2 :: (Prelude.Maybe DynamoDBv2Property),
                         firehose :: (Prelude.Maybe FirehoseProperty),
                         iotEvents :: (Prelude.Maybe IotEventsProperty),
                         iotSiteWise :: (Prelude.Maybe IotSiteWiseProperty),
                         iotTopicPublish :: (Prelude.Maybe IotTopicPublishProperty),
                         lambda :: (Prelude.Maybe LambdaProperty),
                         sns :: (Prelude.Maybe SnsProperty),
                         sqs :: (Prelude.Maybe SqsProperty)}
mkAlarmActionProperty :: AlarmActionProperty
mkAlarmActionProperty
  = AlarmActionProperty
      {dynamoDB = Prelude.Nothing, dynamoDBv2 = Prelude.Nothing,
       firehose = Prelude.Nothing, iotEvents = Prelude.Nothing,
       iotSiteWise = Prelude.Nothing, iotTopicPublish = Prelude.Nothing,
       lambda = Prelude.Nothing, sns = Prelude.Nothing,
       sqs = Prelude.Nothing}
instance ToResourceProperties AlarmActionProperty where
  toResourceProperties AlarmActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.AlarmAction",
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