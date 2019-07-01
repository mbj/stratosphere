{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelEmbeddedSourceSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelEmbeddedSourceSettings. See
-- 'mediaLiveChannelEmbeddedSourceSettings' for a more convenient
-- constructor.
data MediaLiveChannelEmbeddedSourceSettings =
  MediaLiveChannelEmbeddedSourceSettings
  { _mediaLiveChannelEmbeddedSourceSettingsConvert608To708 :: Maybe (Val Text)
  , _mediaLiveChannelEmbeddedSourceSettingsScte20Detection :: Maybe (Val Text)
  , _mediaLiveChannelEmbeddedSourceSettingsSource608ChannelNumber :: Maybe (Val Integer)
  , _mediaLiveChannelEmbeddedSourceSettingsSource608TrackNumber :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelEmbeddedSourceSettings where
  toJSON MediaLiveChannelEmbeddedSourceSettings{..} =
    object $
    catMaybes
    [ fmap (("Convert608To708",) . toJSON) _mediaLiveChannelEmbeddedSourceSettingsConvert608To708
    , fmap (("Scte20Detection",) . toJSON) _mediaLiveChannelEmbeddedSourceSettingsScte20Detection
    , fmap (("Source608ChannelNumber",) . toJSON) _mediaLiveChannelEmbeddedSourceSettingsSource608ChannelNumber
    , fmap (("Source608TrackNumber",) . toJSON) _mediaLiveChannelEmbeddedSourceSettingsSource608TrackNumber
    ]

-- | Constructor for 'MediaLiveChannelEmbeddedSourceSettings' containing
-- required fields as arguments.
mediaLiveChannelEmbeddedSourceSettings
  :: MediaLiveChannelEmbeddedSourceSettings
mediaLiveChannelEmbeddedSourceSettings  =
  MediaLiveChannelEmbeddedSourceSettings
  { _mediaLiveChannelEmbeddedSourceSettingsConvert608To708 = Nothing
  , _mediaLiveChannelEmbeddedSourceSettingsScte20Detection = Nothing
  , _mediaLiveChannelEmbeddedSourceSettingsSource608ChannelNumber = Nothing
  , _mediaLiveChannelEmbeddedSourceSettingsSource608TrackNumber = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-convert608to708
mlcessConvert608To708 :: Lens' MediaLiveChannelEmbeddedSourceSettings (Maybe (Val Text))
mlcessConvert608To708 = lens _mediaLiveChannelEmbeddedSourceSettingsConvert608To708 (\s a -> s { _mediaLiveChannelEmbeddedSourceSettingsConvert608To708 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-scte20detection
mlcessScte20Detection :: Lens' MediaLiveChannelEmbeddedSourceSettings (Maybe (Val Text))
mlcessScte20Detection = lens _mediaLiveChannelEmbeddedSourceSettingsScte20Detection (\s a -> s { _mediaLiveChannelEmbeddedSourceSettingsScte20Detection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-source608channelnumber
mlcessSource608ChannelNumber :: Lens' MediaLiveChannelEmbeddedSourceSettings (Maybe (Val Integer))
mlcessSource608ChannelNumber = lens _mediaLiveChannelEmbeddedSourceSettingsSource608ChannelNumber (\s a -> s { _mediaLiveChannelEmbeddedSourceSettingsSource608ChannelNumber = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-source608tracknumber
mlcessSource608TrackNumber :: Lens' MediaLiveChannelEmbeddedSourceSettings (Maybe (Val Integer))
mlcessSource608TrackNumber = lens _mediaLiveChannelEmbeddedSourceSettingsSource608TrackNumber (\s a -> s { _mediaLiveChannelEmbeddedSourceSettingsSource608TrackNumber = a })
