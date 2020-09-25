{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsOutputSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelHlsSettings

-- | Full data type definition for MediaLiveChannelHlsOutputSettings. See
-- 'mediaLiveChannelHlsOutputSettings' for a more convenient constructor.
data MediaLiveChannelHlsOutputSettings =
  MediaLiveChannelHlsOutputSettings
  { _mediaLiveChannelHlsOutputSettingsH265PackagingType :: Maybe (Val Text)
  , _mediaLiveChannelHlsOutputSettingsHlsSettings :: Maybe MediaLiveChannelHlsSettings
  , _mediaLiveChannelHlsOutputSettingsNameModifier :: Maybe (Val Text)
  , _mediaLiveChannelHlsOutputSettingsSegmentModifier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsOutputSettings where
  toJSON MediaLiveChannelHlsOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("H265PackagingType",) . toJSON) _mediaLiveChannelHlsOutputSettingsH265PackagingType
    , fmap (("HlsSettings",) . toJSON) _mediaLiveChannelHlsOutputSettingsHlsSettings
    , fmap (("NameModifier",) . toJSON) _mediaLiveChannelHlsOutputSettingsNameModifier
    , fmap (("SegmentModifier",) . toJSON) _mediaLiveChannelHlsOutputSettingsSegmentModifier
    ]

-- | Constructor for 'MediaLiveChannelHlsOutputSettings' containing required
-- fields as arguments.
mediaLiveChannelHlsOutputSettings
  :: MediaLiveChannelHlsOutputSettings
mediaLiveChannelHlsOutputSettings  =
  MediaLiveChannelHlsOutputSettings
  { _mediaLiveChannelHlsOutputSettingsH265PackagingType = Nothing
  , _mediaLiveChannelHlsOutputSettingsHlsSettings = Nothing
  , _mediaLiveChannelHlsOutputSettingsNameModifier = Nothing
  , _mediaLiveChannelHlsOutputSettingsSegmentModifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsoutputsettings.html#cfn-medialive-channel-hlsoutputsettings-h265packagingtype
mlchosH265PackagingType :: Lens' MediaLiveChannelHlsOutputSettings (Maybe (Val Text))
mlchosH265PackagingType = lens _mediaLiveChannelHlsOutputSettingsH265PackagingType (\s a -> s { _mediaLiveChannelHlsOutputSettingsH265PackagingType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsoutputsettings.html#cfn-medialive-channel-hlsoutputsettings-hlssettings
mlchosHlsSettings :: Lens' MediaLiveChannelHlsOutputSettings (Maybe MediaLiveChannelHlsSettings)
mlchosHlsSettings = lens _mediaLiveChannelHlsOutputSettingsHlsSettings (\s a -> s { _mediaLiveChannelHlsOutputSettingsHlsSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsoutputsettings.html#cfn-medialive-channel-hlsoutputsettings-namemodifier
mlchosNameModifier :: Lens' MediaLiveChannelHlsOutputSettings (Maybe (Val Text))
mlchosNameModifier = lens _mediaLiveChannelHlsOutputSettingsNameModifier (\s a -> s { _mediaLiveChannelHlsOutputSettingsNameModifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsoutputsettings.html#cfn-medialive-channel-hlsoutputsettings-segmentmodifier
mlchosSegmentModifier :: Lens' MediaLiveChannelHlsOutputSettings (Maybe (Val Text))
mlchosSegmentModifier = lens _mediaLiveChannelHlsOutputSettingsSegmentModifier (\s a -> s { _mediaLiveChannelHlsOutputSettingsSegmentModifier = a })
