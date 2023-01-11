
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelFirehose where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelPayload

-- | Full data type definition for IoTEventsDetectorModelFirehose. See
-- 'ioTEventsDetectorModelFirehose' for a more convenient constructor.
data IoTEventsDetectorModelFirehose =
  IoTEventsDetectorModelFirehose
  { _ioTEventsDetectorModelFirehoseDeliveryStreamName :: Maybe (Val Text)
  , _ioTEventsDetectorModelFirehosePayload :: Maybe IoTEventsDetectorModelPayload
  , _ioTEventsDetectorModelFirehoseSeparator :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelFirehose where
  toJSON IoTEventsDetectorModelFirehose{..} =
    object $
    catMaybes
    [ fmap (("DeliveryStreamName",) . toJSON) _ioTEventsDetectorModelFirehoseDeliveryStreamName
    , fmap (("Payload",) . toJSON) _ioTEventsDetectorModelFirehosePayload
    , fmap (("Separator",) . toJSON) _ioTEventsDetectorModelFirehoseSeparator
    ]

-- | Constructor for 'IoTEventsDetectorModelFirehose' containing required
-- fields as arguments.
ioTEventsDetectorModelFirehose
  :: IoTEventsDetectorModelFirehose
ioTEventsDetectorModelFirehose  =
  IoTEventsDetectorModelFirehose
  { _ioTEventsDetectorModelFirehoseDeliveryStreamName = Nothing
  , _ioTEventsDetectorModelFirehosePayload = Nothing
  , _ioTEventsDetectorModelFirehoseSeparator = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-deliverystreamname
itedmfDeliveryStreamName :: Lens' IoTEventsDetectorModelFirehose (Maybe (Val Text))
itedmfDeliveryStreamName = lens _ioTEventsDetectorModelFirehoseDeliveryStreamName (\s a -> s { _ioTEventsDetectorModelFirehoseDeliveryStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-payload
itedmfPayload :: Lens' IoTEventsDetectorModelFirehose (Maybe IoTEventsDetectorModelPayload)
itedmfPayload = lens _ioTEventsDetectorModelFirehosePayload (\s a -> s { _ioTEventsDetectorModelFirehosePayload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-separator
itedmfSeparator :: Lens' IoTEventsDetectorModelFirehose (Maybe (Val Text))
itedmfSeparator = lens _ioTEventsDetectorModelFirehoseSeparator (\s a -> s { _ioTEventsDetectorModelFirehoseSeparator = a })
