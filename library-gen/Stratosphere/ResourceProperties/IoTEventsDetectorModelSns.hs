{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sns.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelSns where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelSns. See
-- 'ioTEventsDetectorModelSns' for a more convenient constructor.
data IoTEventsDetectorModelSns =
  IoTEventsDetectorModelSns
  { _ioTEventsDetectorModelSnsTargetArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelSns where
  toJSON IoTEventsDetectorModelSns{..} =
    object $
    catMaybes
    [ fmap (("TargetArn",) . toJSON) _ioTEventsDetectorModelSnsTargetArn
    ]

-- | Constructor for 'IoTEventsDetectorModelSns' containing required fields as
-- arguments.
ioTEventsDetectorModelSns
  :: IoTEventsDetectorModelSns
ioTEventsDetectorModelSns  =
  IoTEventsDetectorModelSns
  { _ioTEventsDetectorModelSnsTargetArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sns.html#cfn-iotevents-detectormodel-sns-targetarn
itedmsTargetArn :: Lens' IoTEventsDetectorModelSns (Maybe (Val Text))
itedmsTargetArn = lens _ioTEventsDetectorModelSnsTargetArn (\s a -> s { _ioTEventsDetectorModelSnsTargetArn = a })
