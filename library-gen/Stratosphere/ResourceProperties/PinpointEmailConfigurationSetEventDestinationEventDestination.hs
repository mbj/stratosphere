
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationEventDestination where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationCloudWatchDestination
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationPinpointDestination
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationSnsDestination

-- | Full data type definition for
-- PinpointEmailConfigurationSetEventDestinationEventDestination. See
-- 'pinpointEmailConfigurationSetEventDestinationEventDestination' for a
-- more convenient constructor.
data PinpointEmailConfigurationSetEventDestinationEventDestination =
  PinpointEmailConfigurationSetEventDestinationEventDestination
  { _pinpointEmailConfigurationSetEventDestinationEventDestinationCloudWatchDestination :: Maybe PinpointEmailConfigurationSetEventDestinationCloudWatchDestination
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationEnabled :: Maybe (Val Bool)
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination :: Maybe PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationMatchingEventTypes :: ValList Text
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationPinpointDestination :: Maybe PinpointEmailConfigurationSetEventDestinationPinpointDestination
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationSnsDestination :: Maybe PinpointEmailConfigurationSetEventDestinationSnsDestination
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetEventDestinationEventDestination where
  toJSON PinpointEmailConfigurationSetEventDestinationEventDestination{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchDestination",) . toJSON) _pinpointEmailConfigurationSetEventDestinationEventDestinationCloudWatchDestination
    , fmap (("Enabled",) . toJSON) _pinpointEmailConfigurationSetEventDestinationEventDestinationEnabled
    , fmap (("KinesisFirehoseDestination",) . toJSON) _pinpointEmailConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination
    , (Just . ("MatchingEventTypes",) . toJSON) _pinpointEmailConfigurationSetEventDestinationEventDestinationMatchingEventTypes
    , fmap (("PinpointDestination",) . toJSON) _pinpointEmailConfigurationSetEventDestinationEventDestinationPinpointDestination
    , fmap (("SnsDestination",) . toJSON) _pinpointEmailConfigurationSetEventDestinationEventDestinationSnsDestination
    ]

-- | Constructor for
-- 'PinpointEmailConfigurationSetEventDestinationEventDestination'
-- containing required fields as arguments.
pinpointEmailConfigurationSetEventDestinationEventDestination
  :: ValList Text -- ^ 'pecsededMatchingEventTypes'
  -> PinpointEmailConfigurationSetEventDestinationEventDestination
pinpointEmailConfigurationSetEventDestinationEventDestination matchingEventTypesarg =
  PinpointEmailConfigurationSetEventDestinationEventDestination
  { _pinpointEmailConfigurationSetEventDestinationEventDestinationCloudWatchDestination = Nothing
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationEnabled = Nothing
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination = Nothing
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationMatchingEventTypes = matchingEventTypesarg
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationPinpointDestination = Nothing
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationSnsDestination = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-cloudwatchdestination
pecsededCloudWatchDestination :: Lens' PinpointEmailConfigurationSetEventDestinationEventDestination (Maybe PinpointEmailConfigurationSetEventDestinationCloudWatchDestination)
pecsededCloudWatchDestination = lens _pinpointEmailConfigurationSetEventDestinationEventDestinationCloudWatchDestination (\s a -> s { _pinpointEmailConfigurationSetEventDestinationEventDestinationCloudWatchDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-enabled
pecsededEnabled :: Lens' PinpointEmailConfigurationSetEventDestinationEventDestination (Maybe (Val Bool))
pecsededEnabled = lens _pinpointEmailConfigurationSetEventDestinationEventDestinationEnabled (\s a -> s { _pinpointEmailConfigurationSetEventDestinationEventDestinationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-kinesisfirehosedestination
pecsededKinesisFirehoseDestination :: Lens' PinpointEmailConfigurationSetEventDestinationEventDestination (Maybe PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination)
pecsededKinesisFirehoseDestination = lens _pinpointEmailConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination (\s a -> s { _pinpointEmailConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-matchingeventtypes
pecsededMatchingEventTypes :: Lens' PinpointEmailConfigurationSetEventDestinationEventDestination (ValList Text)
pecsededMatchingEventTypes = lens _pinpointEmailConfigurationSetEventDestinationEventDestinationMatchingEventTypes (\s a -> s { _pinpointEmailConfigurationSetEventDestinationEventDestinationMatchingEventTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-pinpointdestination
pecsededPinpointDestination :: Lens' PinpointEmailConfigurationSetEventDestinationEventDestination (Maybe PinpointEmailConfigurationSetEventDestinationPinpointDestination)
pecsededPinpointDestination = lens _pinpointEmailConfigurationSetEventDestinationEventDestinationPinpointDestination (\s a -> s { _pinpointEmailConfigurationSetEventDestinationEventDestinationPinpointDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-snsdestination
pecsededSnsDestination :: Lens' PinpointEmailConfigurationSetEventDestinationEventDestination (Maybe PinpointEmailConfigurationSetEventDestinationSnsDestination)
pecsededSnsDestination = lens _pinpointEmailConfigurationSetEventDestinationEventDestinationSnsDestination (\s a -> s { _pinpointEmailConfigurationSetEventDestinationEventDestinationSnsDestination = a })
