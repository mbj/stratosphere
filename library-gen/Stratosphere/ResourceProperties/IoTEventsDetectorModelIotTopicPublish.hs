{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelIotTopicPublish where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelIotTopicPublish. See
-- 'ioTEventsDetectorModelIotTopicPublish' for a more convenient
-- constructor.
data IoTEventsDetectorModelIotTopicPublish =
  IoTEventsDetectorModelIotTopicPublish
  { _ioTEventsDetectorModelIotTopicPublishMqttTopic :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelIotTopicPublish where
  toJSON IoTEventsDetectorModelIotTopicPublish{..} =
    object $
    catMaybes
    [ fmap (("MqttTopic",) . toJSON) _ioTEventsDetectorModelIotTopicPublishMqttTopic
    ]

-- | Constructor for 'IoTEventsDetectorModelIotTopicPublish' containing
-- required fields as arguments.
ioTEventsDetectorModelIotTopicPublish
  :: IoTEventsDetectorModelIotTopicPublish
ioTEventsDetectorModelIotTopicPublish  =
  IoTEventsDetectorModelIotTopicPublish
  { _ioTEventsDetectorModelIotTopicPublishMqttTopic = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html#cfn-iotevents-detectormodel-iottopicpublish-mqtttopic
itedmitpMqttTopic :: Lens' IoTEventsDetectorModelIotTopicPublish (Maybe (Val Text))
itedmitpMqttTopic = lens _ioTEventsDetectorModelIotTopicPublishMqttTopic (\s a -> s { _ioTEventsDetectorModelIotTopicPublishMqttTopic = a })
