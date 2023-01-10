
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html

module Stratosphere.ResourceProperties.SESConfigurationSetEventDestinationEventDestination where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SESConfigurationSetEventDestinationCloudWatchDestination
import Stratosphere.ResourceProperties.SESConfigurationSetEventDestinationKinesisFirehoseDestination

-- | Full data type definition for
-- SESConfigurationSetEventDestinationEventDestination. See
-- 'sesConfigurationSetEventDestinationEventDestination' for a more
-- convenient constructor.
data SESConfigurationSetEventDestinationEventDestination =
  SESConfigurationSetEventDestinationEventDestination
  { _sESConfigurationSetEventDestinationEventDestinationCloudWatchDestination :: Maybe SESConfigurationSetEventDestinationCloudWatchDestination
  , _sESConfigurationSetEventDestinationEventDestinationEnabled :: Maybe (Val Bool)
  , _sESConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination :: Maybe SESConfigurationSetEventDestinationKinesisFirehoseDestination
  , _sESConfigurationSetEventDestinationEventDestinationMatchingEventTypes :: ValList Text
  , _sESConfigurationSetEventDestinationEventDestinationName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESConfigurationSetEventDestinationEventDestination where
  toJSON SESConfigurationSetEventDestinationEventDestination{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchDestination",) . toJSON) _sESConfigurationSetEventDestinationEventDestinationCloudWatchDestination
    , fmap (("Enabled",) . toJSON) _sESConfigurationSetEventDestinationEventDestinationEnabled
    , fmap (("KinesisFirehoseDestination",) . toJSON) _sESConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination
    , (Just . ("MatchingEventTypes",) . toJSON) _sESConfigurationSetEventDestinationEventDestinationMatchingEventTypes
    , fmap (("Name",) . toJSON) _sESConfigurationSetEventDestinationEventDestinationName
    ]

-- | Constructor for 'SESConfigurationSetEventDestinationEventDestination'
-- containing required fields as arguments.
sesConfigurationSetEventDestinationEventDestination
  :: ValList Text -- ^ 'sescsededMatchingEventTypes'
  -> SESConfigurationSetEventDestinationEventDestination
sesConfigurationSetEventDestinationEventDestination matchingEventTypesarg =
  SESConfigurationSetEventDestinationEventDestination
  { _sESConfigurationSetEventDestinationEventDestinationCloudWatchDestination = Nothing
  , _sESConfigurationSetEventDestinationEventDestinationEnabled = Nothing
  , _sESConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination = Nothing
  , _sESConfigurationSetEventDestinationEventDestinationMatchingEventTypes = matchingEventTypesarg
  , _sESConfigurationSetEventDestinationEventDestinationName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-cloudwatchdestination
sescsededCloudWatchDestination :: Lens' SESConfigurationSetEventDestinationEventDestination (Maybe SESConfigurationSetEventDestinationCloudWatchDestination)
sescsededCloudWatchDestination = lens _sESConfigurationSetEventDestinationEventDestinationCloudWatchDestination (\s a -> s { _sESConfigurationSetEventDestinationEventDestinationCloudWatchDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-enabled
sescsededEnabled :: Lens' SESConfigurationSetEventDestinationEventDestination (Maybe (Val Bool))
sescsededEnabled = lens _sESConfigurationSetEventDestinationEventDestinationEnabled (\s a -> s { _sESConfigurationSetEventDestinationEventDestinationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-kinesisfirehosedestination
sescsededKinesisFirehoseDestination :: Lens' SESConfigurationSetEventDestinationEventDestination (Maybe SESConfigurationSetEventDestinationKinesisFirehoseDestination)
sescsededKinesisFirehoseDestination = lens _sESConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination (\s a -> s { _sESConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-matchingeventtypes
sescsededMatchingEventTypes :: Lens' SESConfigurationSetEventDestinationEventDestination (ValList Text)
sescsededMatchingEventTypes = lens _sESConfigurationSetEventDestinationEventDestinationMatchingEventTypes (\s a -> s { _sESConfigurationSetEventDestinationEventDestinationMatchingEventTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-name
sescsededName :: Lens' SESConfigurationSetEventDestinationEventDestination (Maybe (Val Text))
sescsededName = lens _sESConfigurationSetEventDestinationEventDestinationName (\s a -> s { _sESConfigurationSetEventDestinationEventDestinationName = a })
