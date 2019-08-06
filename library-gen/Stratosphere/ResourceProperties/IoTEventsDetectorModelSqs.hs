{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelSqs where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelSqs. See
-- 'ioTEventsDetectorModelSqs' for a more convenient constructor.
data IoTEventsDetectorModelSqs =
  IoTEventsDetectorModelSqs
  { _ioTEventsDetectorModelSqsQueueUrl :: Maybe (Val Text)
  , _ioTEventsDetectorModelSqsUseBase64 :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelSqs where
  toJSON IoTEventsDetectorModelSqs{..} =
    object $
    catMaybes
    [ fmap (("QueueUrl",) . toJSON) _ioTEventsDetectorModelSqsQueueUrl
    , fmap (("UseBase64",) . toJSON) _ioTEventsDetectorModelSqsUseBase64
    ]

-- | Constructor for 'IoTEventsDetectorModelSqs' containing required fields as
-- arguments.
ioTEventsDetectorModelSqs
  :: IoTEventsDetectorModelSqs
ioTEventsDetectorModelSqs  =
  IoTEventsDetectorModelSqs
  { _ioTEventsDetectorModelSqsQueueUrl = Nothing
  , _ioTEventsDetectorModelSqsUseBase64 = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-queueurl
itedmsQueueUrl :: Lens' IoTEventsDetectorModelSqs (Maybe (Val Text))
itedmsQueueUrl = lens _ioTEventsDetectorModelSqsQueueUrl (\s a -> s { _ioTEventsDetectorModelSqsQueueUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-usebase64
itedmsUseBase64 :: Lens' IoTEventsDetectorModelSqs (Maybe (Val Bool))
itedmsUseBase64 = lens _ioTEventsDetectorModelSqsUseBase64 (\s a -> s { _ioTEventsDetectorModelSqsUseBase64 = a })
