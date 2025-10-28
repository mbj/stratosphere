module Stratosphere.IoTEvents.DetectorModel.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.ClearTimerProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.DynamoDBProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.DynamoDBv2Property as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.FirehoseProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.IotEventsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.IotSiteWiseProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.IotTopicPublishProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.LambdaProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.ResetTimerProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.SetTimerProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.SetVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.SnsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.SqsProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-cleartimer>
                    clearTimer :: (Prelude.Maybe ClearTimerProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodb>
                    dynamoDB :: (Prelude.Maybe DynamoDBProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodbv2>
                    dynamoDBv2 :: (Prelude.Maybe DynamoDBv2Property),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-firehose>
                    firehose :: (Prelude.Maybe FirehoseProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotevents>
                    iotEvents :: (Prelude.Maybe IotEventsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotsitewise>
                    iotSiteWise :: (Prelude.Maybe IotSiteWiseProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iottopicpublish>
                    iotTopicPublish :: (Prelude.Maybe IotTopicPublishProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-lambda>
                    lambda :: (Prelude.Maybe LambdaProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-resettimer>
                    resetTimer :: (Prelude.Maybe ResetTimerProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-settimer>
                    setTimer :: (Prelude.Maybe SetTimerProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-setvariable>
                    setVariable :: (Prelude.Maybe SetVariableProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sns>
                    sns :: (Prelude.Maybe SnsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sqs>
                    sqs :: (Prelude.Maybe SqsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {haddock_workaround_ = (), clearTimer = Prelude.Nothing,
       dynamoDB = Prelude.Nothing, dynamoDBv2 = Prelude.Nothing,
       firehose = Prelude.Nothing, iotEvents = Prelude.Nothing,
       iotSiteWise = Prelude.Nothing, iotTopicPublish = Prelude.Nothing,
       lambda = Prelude.Nothing, resetTimer = Prelude.Nothing,
       setTimer = Prelude.Nothing, setVariable = Prelude.Nothing,
       sns = Prelude.Nothing, sqs = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClearTimer" Prelude.<$> clearTimer,
                            (JSON..=) "DynamoDB" Prelude.<$> dynamoDB,
                            (JSON..=) "DynamoDBv2" Prelude.<$> dynamoDBv2,
                            (JSON..=) "Firehose" Prelude.<$> firehose,
                            (JSON..=) "IotEvents" Prelude.<$> iotEvents,
                            (JSON..=) "IotSiteWise" Prelude.<$> iotSiteWise,
                            (JSON..=) "IotTopicPublish" Prelude.<$> iotTopicPublish,
                            (JSON..=) "Lambda" Prelude.<$> lambda,
                            (JSON..=) "ResetTimer" Prelude.<$> resetTimer,
                            (JSON..=) "SetTimer" Prelude.<$> setTimer,
                            (JSON..=) "SetVariable" Prelude.<$> setVariable,
                            (JSON..=) "Sns" Prelude.<$> sns, (JSON..=) "Sqs" Prelude.<$> sqs])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClearTimer" Prelude.<$> clearTimer,
               (JSON..=) "DynamoDB" Prelude.<$> dynamoDB,
               (JSON..=) "DynamoDBv2" Prelude.<$> dynamoDBv2,
               (JSON..=) "Firehose" Prelude.<$> firehose,
               (JSON..=) "IotEvents" Prelude.<$> iotEvents,
               (JSON..=) "IotSiteWise" Prelude.<$> iotSiteWise,
               (JSON..=) "IotTopicPublish" Prelude.<$> iotTopicPublish,
               (JSON..=) "Lambda" Prelude.<$> lambda,
               (JSON..=) "ResetTimer" Prelude.<$> resetTimer,
               (JSON..=) "SetTimer" Prelude.<$> setTimer,
               (JSON..=) "SetVariable" Prelude.<$> setVariable,
               (JSON..=) "Sns" Prelude.<$> sns, (JSON..=) "Sqs" Prelude.<$> sqs]))
instance Property "ClearTimer" ActionProperty where
  type PropertyType "ClearTimer" ActionProperty = ClearTimerProperty
  set newValue ActionProperty {..}
    = ActionProperty {clearTimer = Prelude.pure newValue, ..}
instance Property "DynamoDB" ActionProperty where
  type PropertyType "DynamoDB" ActionProperty = DynamoDBProperty
  set newValue ActionProperty {..}
    = ActionProperty {dynamoDB = Prelude.pure newValue, ..}
instance Property "DynamoDBv2" ActionProperty where
  type PropertyType "DynamoDBv2" ActionProperty = DynamoDBv2Property
  set newValue ActionProperty {..}
    = ActionProperty {dynamoDBv2 = Prelude.pure newValue, ..}
instance Property "Firehose" ActionProperty where
  type PropertyType "Firehose" ActionProperty = FirehoseProperty
  set newValue ActionProperty {..}
    = ActionProperty {firehose = Prelude.pure newValue, ..}
instance Property "IotEvents" ActionProperty where
  type PropertyType "IotEvents" ActionProperty = IotEventsProperty
  set newValue ActionProperty {..}
    = ActionProperty {iotEvents = Prelude.pure newValue, ..}
instance Property "IotSiteWise" ActionProperty where
  type PropertyType "IotSiteWise" ActionProperty = IotSiteWiseProperty
  set newValue ActionProperty {..}
    = ActionProperty {iotSiteWise = Prelude.pure newValue, ..}
instance Property "IotTopicPublish" ActionProperty where
  type PropertyType "IotTopicPublish" ActionProperty = IotTopicPublishProperty
  set newValue ActionProperty {..}
    = ActionProperty {iotTopicPublish = Prelude.pure newValue, ..}
instance Property "Lambda" ActionProperty where
  type PropertyType "Lambda" ActionProperty = LambdaProperty
  set newValue ActionProperty {..}
    = ActionProperty {lambda = Prelude.pure newValue, ..}
instance Property "ResetTimer" ActionProperty where
  type PropertyType "ResetTimer" ActionProperty = ResetTimerProperty
  set newValue ActionProperty {..}
    = ActionProperty {resetTimer = Prelude.pure newValue, ..}
instance Property "SetTimer" ActionProperty where
  type PropertyType "SetTimer" ActionProperty = SetTimerProperty
  set newValue ActionProperty {..}
    = ActionProperty {setTimer = Prelude.pure newValue, ..}
instance Property "SetVariable" ActionProperty where
  type PropertyType "SetVariable" ActionProperty = SetVariableProperty
  set newValue ActionProperty {..}
    = ActionProperty {setVariable = Prelude.pure newValue, ..}
instance Property "Sns" ActionProperty where
  type PropertyType "Sns" ActionProperty = SnsProperty
  set newValue ActionProperty {..}
    = ActionProperty {sns = Prelude.pure newValue, ..}
instance Property "Sqs" ActionProperty where
  type PropertyType "Sqs" ActionProperty = SqsProperty
  set newValue ActionProperty {..}
    = ActionProperty {sqs = Prelude.pure newValue, ..}