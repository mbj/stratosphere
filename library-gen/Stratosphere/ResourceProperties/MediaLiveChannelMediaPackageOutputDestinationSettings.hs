
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMediaPackageOutputDestinationSettings where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelMediaPackageOutputDestinationSettings. See
-- 'mediaLiveChannelMediaPackageOutputDestinationSettings' for a more
-- convenient constructor.
data MediaLiveChannelMediaPackageOutputDestinationSettings =
  MediaLiveChannelMediaPackageOutputDestinationSettings
  { _mediaLiveChannelMediaPackageOutputDestinationSettingsChannelId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMediaPackageOutputDestinationSettings where
  toJSON MediaLiveChannelMediaPackageOutputDestinationSettings{..} =
    object $
    catMaybes
    [ fmap (("ChannelId",) . toJSON) _mediaLiveChannelMediaPackageOutputDestinationSettingsChannelId
    ]

-- | Constructor for 'MediaLiveChannelMediaPackageOutputDestinationSettings'
-- containing required fields as arguments.
mediaLiveChannelMediaPackageOutputDestinationSettings
  :: MediaLiveChannelMediaPackageOutputDestinationSettings
mediaLiveChannelMediaPackageOutputDestinationSettings  =
  MediaLiveChannelMediaPackageOutputDestinationSettings
  { _mediaLiveChannelMediaPackageOutputDestinationSettingsChannelId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html#cfn-medialive-channel-mediapackageoutputdestinationsettings-channelid
mlcmpodsChannelId :: Lens' MediaLiveChannelMediaPackageOutputDestinationSettings (Maybe (Val Text))
mlcmpodsChannelId = lens _mediaLiveChannelMediaPackageOutputDestinationSettingsChannelId (\s a -> s { _mediaLiveChannelMediaPackageOutputDestinationSettingsChannelId = a })
