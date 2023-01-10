
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertytimestamp.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelAssetPropertyTimestamp where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- IoTEventsDetectorModelAssetPropertyTimestamp. See
-- 'ioTEventsDetectorModelAssetPropertyTimestamp' for a more convenient
-- constructor.
data IoTEventsDetectorModelAssetPropertyTimestamp =
  IoTEventsDetectorModelAssetPropertyTimestamp
  { _ioTEventsDetectorModelAssetPropertyTimestampOffsetInNanos :: Maybe (Val Text)
  , _ioTEventsDetectorModelAssetPropertyTimestampTimeInSeconds :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelAssetPropertyTimestamp where
  toJSON IoTEventsDetectorModelAssetPropertyTimestamp{..} =
    object $
    catMaybes
    [ fmap (("OffsetInNanos",) . toJSON) _ioTEventsDetectorModelAssetPropertyTimestampOffsetInNanos
    , fmap (("TimeInSeconds",) . toJSON) _ioTEventsDetectorModelAssetPropertyTimestampTimeInSeconds
    ]

-- | Constructor for 'IoTEventsDetectorModelAssetPropertyTimestamp' containing
-- required fields as arguments.
ioTEventsDetectorModelAssetPropertyTimestamp
  :: IoTEventsDetectorModelAssetPropertyTimestamp
ioTEventsDetectorModelAssetPropertyTimestamp  =
  IoTEventsDetectorModelAssetPropertyTimestamp
  { _ioTEventsDetectorModelAssetPropertyTimestampOffsetInNanos = Nothing
  , _ioTEventsDetectorModelAssetPropertyTimestampTimeInSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertytimestamp.html#cfn-iotevents-detectormodel-assetpropertytimestamp-offsetinnanos
itedmaptOffsetInNanos :: Lens' IoTEventsDetectorModelAssetPropertyTimestamp (Maybe (Val Text))
itedmaptOffsetInNanos = lens _ioTEventsDetectorModelAssetPropertyTimestampOffsetInNanos (\s a -> s { _ioTEventsDetectorModelAssetPropertyTimestampOffsetInNanos = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertytimestamp.html#cfn-iotevents-detectormodel-assetpropertytimestamp-timeinseconds
itedmaptTimeInSeconds :: Lens' IoTEventsDetectorModelAssetPropertyTimestamp (Maybe (Val Text))
itedmaptTimeInSeconds = lens _ioTEventsDetectorModelAssetPropertyTimestampTimeInSeconds (\s a -> s { _ioTEventsDetectorModelAssetPropertyTimestampTimeInSeconds = a })
