
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html

module Stratosphere.ResourceProperties.MediaLiveChannelOutputDestination where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelMediaPackageOutputDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelMultiplexProgramChannelDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelOutputDestinationSettings

-- | Full data type definition for MediaLiveChannelOutputDestination. See
-- 'mediaLiveChannelOutputDestination' for a more convenient constructor.
data MediaLiveChannelOutputDestination =
  MediaLiveChannelOutputDestination
  { _mediaLiveChannelOutputDestinationId :: Maybe (Val Text)
  , _mediaLiveChannelOutputDestinationMediaPackageSettings :: Maybe [MediaLiveChannelMediaPackageOutputDestinationSettings]
  , _mediaLiveChannelOutputDestinationMultiplexSettings :: Maybe MediaLiveChannelMultiplexProgramChannelDestinationSettings
  , _mediaLiveChannelOutputDestinationSettings :: Maybe [MediaLiveChannelOutputDestinationSettings]
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelOutputDestination where
  toJSON MediaLiveChannelOutputDestination{..} =
    object $
    catMaybes
    [ fmap (("Id",) . toJSON) _mediaLiveChannelOutputDestinationId
    , fmap (("MediaPackageSettings",) . toJSON) _mediaLiveChannelOutputDestinationMediaPackageSettings
    , fmap (("MultiplexSettings",) . toJSON) _mediaLiveChannelOutputDestinationMultiplexSettings
    , fmap (("Settings",) . toJSON) _mediaLiveChannelOutputDestinationSettings
    ]

-- | Constructor for 'MediaLiveChannelOutputDestination' containing required
-- fields as arguments.
mediaLiveChannelOutputDestination
  :: MediaLiveChannelOutputDestination
mediaLiveChannelOutputDestination  =
  MediaLiveChannelOutputDestination
  { _mediaLiveChannelOutputDestinationId = Nothing
  , _mediaLiveChannelOutputDestinationMediaPackageSettings = Nothing
  , _mediaLiveChannelOutputDestinationMultiplexSettings = Nothing
  , _mediaLiveChannelOutputDestinationSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-id
mlcodId :: Lens' MediaLiveChannelOutputDestination (Maybe (Val Text))
mlcodId = lens _mediaLiveChannelOutputDestinationId (\s a -> s { _mediaLiveChannelOutputDestinationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-mediapackagesettings
mlcodMediaPackageSettings :: Lens' MediaLiveChannelOutputDestination (Maybe [MediaLiveChannelMediaPackageOutputDestinationSettings])
mlcodMediaPackageSettings = lens _mediaLiveChannelOutputDestinationMediaPackageSettings (\s a -> s { _mediaLiveChannelOutputDestinationMediaPackageSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-multiplexsettings
mlcodMultiplexSettings :: Lens' MediaLiveChannelOutputDestination (Maybe MediaLiveChannelMultiplexProgramChannelDestinationSettings)
mlcodMultiplexSettings = lens _mediaLiveChannelOutputDestinationMultiplexSettings (\s a -> s { _mediaLiveChannelOutputDestinationMultiplexSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-settings
mlcodSettings :: Lens' MediaLiveChannelOutputDestination (Maybe [MediaLiveChannelOutputDestinationSettings])
mlcodSettings = lens _mediaLiveChannelOutputDestinationSettings (\s a -> s { _mediaLiveChannelOutputDestinationSettings = a })
