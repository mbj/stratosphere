{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelIotTopicPublish where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelPayload

-- | Full data type definition for IoTEventsDetectorModelIotTopicPublish. See
-- 'ioTEventsDetectorModelIotTopicPublish' for a more convenient
-- constructor.
data IoTEventsDetectorModelIotTopicPublish =
  IoTEventsDetectorModelIotTopicPublish
  { _ioTEventsDetectorModelIotTopicPublishMqttTopic :: Maybe (Val Text)
  , _ioTEventsDetectorModelIotTopicPublishPayload :: Maybe IoTEventsDetectorModelPayload
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelIotTopicPublish where
  toJSON IoTEventsDetectorModelIotTopicPublish{..} =
    object $
    catMaybes
    [ fmap (("MqttTopic",) . toJSON) _ioTEventsDetectorModelIotTopicPublishMqttTopic
    , fmap (("Payload",) . toJSON) _ioTEventsDetectorModelIotTopicPublishPayload
    ]

-- | Constructor for 'IoTEventsDetectorModelIotTopicPublish' containing
-- required fields as arguments.
ioTEventsDetectorModelIotTopicPublish
  :: IoTEventsDetectorModelIotTopicPublish
ioTEventsDetectorModelIotTopicPublish  =
  IoTEventsDetectorModelIotTopicPublish
  { _ioTEventsDetectorModelIotTopicPublishMqttTopic = Nothing
  , _ioTEventsDetectorModelIotTopicPublishPayload = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html#cfn-iotevents-detectormodel-iottopicpublish-mqtttopic
itedmitpMqttTopic :: Lens' IoTEventsDetectorModelIotTopicPublish (Maybe (Val Text))
itedmitpMqttTopic = lens _ioTEventsDetectorModelIotTopicPublishMqttTopic (\s a -> s { _ioTEventsDetectorModelIotTopicPublishMqttTopic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html#cfn-iotevents-detectormodel-iottopicpublish-payload
itedmitpPayload :: Lens' IoTEventsDetectorModelIotTopicPublish (Maybe IoTEventsDetectorModelPayload)
itedmitpPayload = lens _ioTEventsDetectorModelIotTopicPublishPayload (\s a -> s { _ioTEventsDetectorModelIotTopicPublishPayload = a })
