{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-payload.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelPayload where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelPayload. See
-- 'ioTEventsDetectorModelPayload' for a more convenient constructor.
data IoTEventsDetectorModelPayload =
  IoTEventsDetectorModelPayload
  { _ioTEventsDetectorModelPayloadContentExpression :: Maybe (Val Text)
  , _ioTEventsDetectorModelPayloadType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelPayload where
  toJSON IoTEventsDetectorModelPayload{..} =
    object $
    catMaybes
    [ fmap (("ContentExpression",) . toJSON) _ioTEventsDetectorModelPayloadContentExpression
    , fmap (("Type",) . toJSON) _ioTEventsDetectorModelPayloadType
    ]

-- | Constructor for 'IoTEventsDetectorModelPayload' containing required
-- fields as arguments.
ioTEventsDetectorModelPayload
  :: IoTEventsDetectorModelPayload
ioTEventsDetectorModelPayload  =
  IoTEventsDetectorModelPayload
  { _ioTEventsDetectorModelPayloadContentExpression = Nothing
  , _ioTEventsDetectorModelPayloadType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-payload.html#cfn-iotevents-detectormodel-payload-contentexpression
itedmpContentExpression :: Lens' IoTEventsDetectorModelPayload (Maybe (Val Text))
itedmpContentExpression = lens _ioTEventsDetectorModelPayloadContentExpression (\s a -> s { _ioTEventsDetectorModelPayloadContentExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-payload.html#cfn-iotevents-detectormodel-payload-type
itedmpType :: Lens' IoTEventsDetectorModelPayload (Maybe (Val Text))
itedmpType = lens _ioTEventsDetectorModelPayloadType (\s a -> s { _ioTEventsDetectorModelPayloadType = a })
