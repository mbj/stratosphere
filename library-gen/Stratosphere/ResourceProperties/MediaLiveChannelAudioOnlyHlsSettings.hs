{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioOnlyHlsSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputLocation

-- | Full data type definition for MediaLiveChannelAudioOnlyHlsSettings. See
-- 'mediaLiveChannelAudioOnlyHlsSettings' for a more convenient constructor.
data MediaLiveChannelAudioOnlyHlsSettings =
  MediaLiveChannelAudioOnlyHlsSettings
  { _mediaLiveChannelAudioOnlyHlsSettingsAudioGroupId :: Maybe (Val Text)
  , _mediaLiveChannelAudioOnlyHlsSettingsAudioOnlyImage :: Maybe MediaLiveChannelInputLocation
  , _mediaLiveChannelAudioOnlyHlsSettingsAudioTrackType :: Maybe (Val Text)
  , _mediaLiveChannelAudioOnlyHlsSettingsSegmentType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioOnlyHlsSettings where
  toJSON MediaLiveChannelAudioOnlyHlsSettings{..} =
    object $
    catMaybes
    [ fmap (("AudioGroupId",) . toJSON) _mediaLiveChannelAudioOnlyHlsSettingsAudioGroupId
    , fmap (("AudioOnlyImage",) . toJSON) _mediaLiveChannelAudioOnlyHlsSettingsAudioOnlyImage
    , fmap (("AudioTrackType",) . toJSON) _mediaLiveChannelAudioOnlyHlsSettingsAudioTrackType
    , fmap (("SegmentType",) . toJSON) _mediaLiveChannelAudioOnlyHlsSettingsSegmentType
    ]

-- | Constructor for 'MediaLiveChannelAudioOnlyHlsSettings' containing
-- required fields as arguments.
mediaLiveChannelAudioOnlyHlsSettings
  :: MediaLiveChannelAudioOnlyHlsSettings
mediaLiveChannelAudioOnlyHlsSettings  =
  MediaLiveChannelAudioOnlyHlsSettings
  { _mediaLiveChannelAudioOnlyHlsSettingsAudioGroupId = Nothing
  , _mediaLiveChannelAudioOnlyHlsSettingsAudioOnlyImage = Nothing
  , _mediaLiveChannelAudioOnlyHlsSettingsAudioTrackType = Nothing
  , _mediaLiveChannelAudioOnlyHlsSettingsSegmentType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html#cfn-medialive-channel-audioonlyhlssettings-audiogroupid
mlcaohsAudioGroupId :: Lens' MediaLiveChannelAudioOnlyHlsSettings (Maybe (Val Text))
mlcaohsAudioGroupId = lens _mediaLiveChannelAudioOnlyHlsSettingsAudioGroupId (\s a -> s { _mediaLiveChannelAudioOnlyHlsSettingsAudioGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html#cfn-medialive-channel-audioonlyhlssettings-audioonlyimage
mlcaohsAudioOnlyImage :: Lens' MediaLiveChannelAudioOnlyHlsSettings (Maybe MediaLiveChannelInputLocation)
mlcaohsAudioOnlyImage = lens _mediaLiveChannelAudioOnlyHlsSettingsAudioOnlyImage (\s a -> s { _mediaLiveChannelAudioOnlyHlsSettingsAudioOnlyImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html#cfn-medialive-channel-audioonlyhlssettings-audiotracktype
mlcaohsAudioTrackType :: Lens' MediaLiveChannelAudioOnlyHlsSettings (Maybe (Val Text))
mlcaohsAudioTrackType = lens _mediaLiveChannelAudioOnlyHlsSettingsAudioTrackType (\s a -> s { _mediaLiveChannelAudioOnlyHlsSettingsAudioTrackType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html#cfn-medialive-channel-audioonlyhlssettings-segmenttype
mlcaohsSegmentType :: Lens' MediaLiveChannelAudioOnlyHlsSettings (Maybe (Val Text))
mlcaohsSegmentType = lens _mediaLiveChannelAudioOnlyHlsSettingsSegmentType (\s a -> s { _mediaLiveChannelAudioOnlyHlsSettingsSegmentType = a })
