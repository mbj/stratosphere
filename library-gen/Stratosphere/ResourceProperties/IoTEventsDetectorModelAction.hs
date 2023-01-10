
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelClearTimer
import Stratosphere.ResourceProperties.IoTEventsDetectorModelDynamoDB
import Stratosphere.ResourceProperties.IoTEventsDetectorModelDynamoDBv2
import Stratosphere.ResourceProperties.IoTEventsDetectorModelFirehose
import Stratosphere.ResourceProperties.IoTEventsDetectorModelIotEvents
import Stratosphere.ResourceProperties.IoTEventsDetectorModelIotSiteWise
import Stratosphere.ResourceProperties.IoTEventsDetectorModelIotTopicPublish
import Stratosphere.ResourceProperties.IoTEventsDetectorModelLambda
import Stratosphere.ResourceProperties.IoTEventsDetectorModelResetTimer
import Stratosphere.ResourceProperties.IoTEventsDetectorModelSetTimer
import Stratosphere.ResourceProperties.IoTEventsDetectorModelSetVariable
import Stratosphere.ResourceProperties.IoTEventsDetectorModelSns
import Stratosphere.ResourceProperties.IoTEventsDetectorModelSqs

-- | Full data type definition for IoTEventsDetectorModelAction. See
-- 'ioTEventsDetectorModelAction' for a more convenient constructor.
data IoTEventsDetectorModelAction =
  IoTEventsDetectorModelAction
  { _ioTEventsDetectorModelActionClearTimer :: Maybe IoTEventsDetectorModelClearTimer
  , _ioTEventsDetectorModelActionDynamoDB :: Maybe IoTEventsDetectorModelDynamoDB
  , _ioTEventsDetectorModelActionDynamoDBv2 :: Maybe IoTEventsDetectorModelDynamoDBv2
  , _ioTEventsDetectorModelActionFirehose :: Maybe IoTEventsDetectorModelFirehose
  , _ioTEventsDetectorModelActionIotEvents :: Maybe IoTEventsDetectorModelIotEvents
  , _ioTEventsDetectorModelActionIotSiteWise :: Maybe IoTEventsDetectorModelIotSiteWise
  , _ioTEventsDetectorModelActionIotTopicPublish :: Maybe IoTEventsDetectorModelIotTopicPublish
  , _ioTEventsDetectorModelActionLambda :: Maybe IoTEventsDetectorModelLambda
  , _ioTEventsDetectorModelActionResetTimer :: Maybe IoTEventsDetectorModelResetTimer
  , _ioTEventsDetectorModelActionSetTimer :: Maybe IoTEventsDetectorModelSetTimer
  , _ioTEventsDetectorModelActionSetVariable :: Maybe IoTEventsDetectorModelSetVariable
  , _ioTEventsDetectorModelActionSns :: Maybe IoTEventsDetectorModelSns
  , _ioTEventsDetectorModelActionSqs :: Maybe IoTEventsDetectorModelSqs
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelAction where
  toJSON IoTEventsDetectorModelAction{..} =
    object $
    catMaybes
    [ fmap (("ClearTimer",) . toJSON) _ioTEventsDetectorModelActionClearTimer
    , fmap (("DynamoDB",) . toJSON) _ioTEventsDetectorModelActionDynamoDB
    , fmap (("DynamoDBv2",) . toJSON) _ioTEventsDetectorModelActionDynamoDBv2
    , fmap (("Firehose",) . toJSON) _ioTEventsDetectorModelActionFirehose
    , fmap (("IotEvents",) . toJSON) _ioTEventsDetectorModelActionIotEvents
    , fmap (("IotSiteWise",) . toJSON) _ioTEventsDetectorModelActionIotSiteWise
    , fmap (("IotTopicPublish",) . toJSON) _ioTEventsDetectorModelActionIotTopicPublish
    , fmap (("Lambda",) . toJSON) _ioTEventsDetectorModelActionLambda
    , fmap (("ResetTimer",) . toJSON) _ioTEventsDetectorModelActionResetTimer
    , fmap (("SetTimer",) . toJSON) _ioTEventsDetectorModelActionSetTimer
    , fmap (("SetVariable",) . toJSON) _ioTEventsDetectorModelActionSetVariable
    , fmap (("Sns",) . toJSON) _ioTEventsDetectorModelActionSns
    , fmap (("Sqs",) . toJSON) _ioTEventsDetectorModelActionSqs
    ]

-- | Constructor for 'IoTEventsDetectorModelAction' containing required fields
-- as arguments.
ioTEventsDetectorModelAction
  :: IoTEventsDetectorModelAction
ioTEventsDetectorModelAction  =
  IoTEventsDetectorModelAction
  { _ioTEventsDetectorModelActionClearTimer = Nothing
  , _ioTEventsDetectorModelActionDynamoDB = Nothing
  , _ioTEventsDetectorModelActionDynamoDBv2 = Nothing
  , _ioTEventsDetectorModelActionFirehose = Nothing
  , _ioTEventsDetectorModelActionIotEvents = Nothing
  , _ioTEventsDetectorModelActionIotSiteWise = Nothing
  , _ioTEventsDetectorModelActionIotTopicPublish = Nothing
  , _ioTEventsDetectorModelActionLambda = Nothing
  , _ioTEventsDetectorModelActionResetTimer = Nothing
  , _ioTEventsDetectorModelActionSetTimer = Nothing
  , _ioTEventsDetectorModelActionSetVariable = Nothing
  , _ioTEventsDetectorModelActionSns = Nothing
  , _ioTEventsDetectorModelActionSqs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-cleartimer
itedmaClearTimer :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelClearTimer)
itedmaClearTimer = lens _ioTEventsDetectorModelActionClearTimer (\s a -> s { _ioTEventsDetectorModelActionClearTimer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodb
itedmaDynamoDB :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelDynamoDB)
itedmaDynamoDB = lens _ioTEventsDetectorModelActionDynamoDB (\s a -> s { _ioTEventsDetectorModelActionDynamoDB = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodbv2
itedmaDynamoDBv2 :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelDynamoDBv2)
itedmaDynamoDBv2 = lens _ioTEventsDetectorModelActionDynamoDBv2 (\s a -> s { _ioTEventsDetectorModelActionDynamoDBv2 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-firehose
itedmaFirehose :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelFirehose)
itedmaFirehose = lens _ioTEventsDetectorModelActionFirehose (\s a -> s { _ioTEventsDetectorModelActionFirehose = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotevents
itedmaIotEvents :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelIotEvents)
itedmaIotEvents = lens _ioTEventsDetectorModelActionIotEvents (\s a -> s { _ioTEventsDetectorModelActionIotEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotsitewise
itedmaIotSiteWise :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelIotSiteWise)
itedmaIotSiteWise = lens _ioTEventsDetectorModelActionIotSiteWise (\s a -> s { _ioTEventsDetectorModelActionIotSiteWise = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iottopicpublish
itedmaIotTopicPublish :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelIotTopicPublish)
itedmaIotTopicPublish = lens _ioTEventsDetectorModelActionIotTopicPublish (\s a -> s { _ioTEventsDetectorModelActionIotTopicPublish = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-lambda
itedmaLambda :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelLambda)
itedmaLambda = lens _ioTEventsDetectorModelActionLambda (\s a -> s { _ioTEventsDetectorModelActionLambda = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-resettimer
itedmaResetTimer :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelResetTimer)
itedmaResetTimer = lens _ioTEventsDetectorModelActionResetTimer (\s a -> s { _ioTEventsDetectorModelActionResetTimer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-settimer
itedmaSetTimer :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelSetTimer)
itedmaSetTimer = lens _ioTEventsDetectorModelActionSetTimer (\s a -> s { _ioTEventsDetectorModelActionSetTimer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-setvariable
itedmaSetVariable :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelSetVariable)
itedmaSetVariable = lens _ioTEventsDetectorModelActionSetVariable (\s a -> s { _ioTEventsDetectorModelActionSetVariable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sns
itedmaSns :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelSns)
itedmaSns = lens _ioTEventsDetectorModelActionSns (\s a -> s { _ioTEventsDetectorModelActionSns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sqs
itedmaSqs :: Lens' IoTEventsDetectorModelAction (Maybe IoTEventsDetectorModelSqs)
itedmaSqs = lens _ioTEventsDetectorModelActionSqs (\s a -> s { _ioTEventsDetectorModelActionSqs = a })
