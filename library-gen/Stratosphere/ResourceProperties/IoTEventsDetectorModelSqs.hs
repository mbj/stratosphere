
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelSqs where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelPayload

-- | Full data type definition for IoTEventsDetectorModelSqs. See
-- 'ioTEventsDetectorModelSqs' for a more convenient constructor.
data IoTEventsDetectorModelSqs =
  IoTEventsDetectorModelSqs
  { _ioTEventsDetectorModelSqsPayload :: Maybe IoTEventsDetectorModelPayload
  , _ioTEventsDetectorModelSqsQueueUrl :: Maybe (Val Text)
  , _ioTEventsDetectorModelSqsUseBase64 :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelSqs where
  toJSON IoTEventsDetectorModelSqs{..} =
    object $
    catMaybes
    [ fmap (("Payload",) . toJSON) _ioTEventsDetectorModelSqsPayload
    , fmap (("QueueUrl",) . toJSON) _ioTEventsDetectorModelSqsQueueUrl
    , fmap (("UseBase64",) . toJSON) _ioTEventsDetectorModelSqsUseBase64
    ]

-- | Constructor for 'IoTEventsDetectorModelSqs' containing required fields as
-- arguments.
ioTEventsDetectorModelSqs
  :: IoTEventsDetectorModelSqs
ioTEventsDetectorModelSqs  =
  IoTEventsDetectorModelSqs
  { _ioTEventsDetectorModelSqsPayload = Nothing
  , _ioTEventsDetectorModelSqsQueueUrl = Nothing
  , _ioTEventsDetectorModelSqsUseBase64 = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-payload
itedmsqPayload :: Lens' IoTEventsDetectorModelSqs (Maybe IoTEventsDetectorModelPayload)
itedmsqPayload = lens _ioTEventsDetectorModelSqsPayload (\s a -> s { _ioTEventsDetectorModelSqsPayload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-queueurl
itedmsqQueueUrl :: Lens' IoTEventsDetectorModelSqs (Maybe (Val Text))
itedmsqQueueUrl = lens _ioTEventsDetectorModelSqsQueueUrl (\s a -> s { _ioTEventsDetectorModelSqsQueueUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-usebase64
itedmsqUseBase64 :: Lens' IoTEventsDetectorModelSqs (Maybe (Val Bool))
itedmsqUseBase64 = lens _ioTEventsDetectorModelSqsUseBase64 (\s a -> s { _ioTEventsDetectorModelSqsUseBase64 = a })
