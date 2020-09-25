{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelH265ColorSpaceSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelColorSpacePassthroughSettings
import Stratosphere.ResourceProperties.MediaLiveChannelHdr10Settings
import Stratosphere.ResourceProperties.MediaLiveChannelRec601Settings
import Stratosphere.ResourceProperties.MediaLiveChannelRec709Settings

-- | Full data type definition for MediaLiveChannelH265ColorSpaceSettings. See
-- 'mediaLiveChannelH265ColorSpaceSettings' for a more convenient
-- constructor.
data MediaLiveChannelH265ColorSpaceSettings =
  MediaLiveChannelH265ColorSpaceSettings
  { _mediaLiveChannelH265ColorSpaceSettingsColorSpacePassthroughSettings :: Maybe MediaLiveChannelColorSpacePassthroughSettings
  , _mediaLiveChannelH265ColorSpaceSettingsHdr10Settings :: Maybe MediaLiveChannelHdr10Settings
  , _mediaLiveChannelH265ColorSpaceSettingsRec601Settings :: Maybe MediaLiveChannelRec601Settings
  , _mediaLiveChannelH265ColorSpaceSettingsRec709Settings :: Maybe MediaLiveChannelRec709Settings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelH265ColorSpaceSettings where
  toJSON MediaLiveChannelH265ColorSpaceSettings{..} =
    object $
    catMaybes
    [ fmap (("ColorSpacePassthroughSettings",) . toJSON) _mediaLiveChannelH265ColorSpaceSettingsColorSpacePassthroughSettings
    , fmap (("Hdr10Settings",) . toJSON) _mediaLiveChannelH265ColorSpaceSettingsHdr10Settings
    , fmap (("Rec601Settings",) . toJSON) _mediaLiveChannelH265ColorSpaceSettingsRec601Settings
    , fmap (("Rec709Settings",) . toJSON) _mediaLiveChannelH265ColorSpaceSettingsRec709Settings
    ]

-- | Constructor for 'MediaLiveChannelH265ColorSpaceSettings' containing
-- required fields as arguments.
mediaLiveChannelH265ColorSpaceSettings
  :: MediaLiveChannelH265ColorSpaceSettings
mediaLiveChannelH265ColorSpaceSettings  =
  MediaLiveChannelH265ColorSpaceSettings
  { _mediaLiveChannelH265ColorSpaceSettingsColorSpacePassthroughSettings = Nothing
  , _mediaLiveChannelH265ColorSpaceSettingsHdr10Settings = Nothing
  , _mediaLiveChannelH265ColorSpaceSettingsRec601Settings = Nothing
  , _mediaLiveChannelH265ColorSpaceSettingsRec709Settings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-colorspacepassthroughsettings
mlchcssColorSpacePassthroughSettings :: Lens' MediaLiveChannelH265ColorSpaceSettings (Maybe MediaLiveChannelColorSpacePassthroughSettings)
mlchcssColorSpacePassthroughSettings = lens _mediaLiveChannelH265ColorSpaceSettingsColorSpacePassthroughSettings (\s a -> s { _mediaLiveChannelH265ColorSpaceSettingsColorSpacePassthroughSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-hdr10settings
mlchcssHdr10Settings :: Lens' MediaLiveChannelH265ColorSpaceSettings (Maybe MediaLiveChannelHdr10Settings)
mlchcssHdr10Settings = lens _mediaLiveChannelH265ColorSpaceSettingsHdr10Settings (\s a -> s { _mediaLiveChannelH265ColorSpaceSettingsHdr10Settings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-rec601settings
mlchcssRec601Settings :: Lens' MediaLiveChannelH265ColorSpaceSettings (Maybe MediaLiveChannelRec601Settings)
mlchcssRec601Settings = lens _mediaLiveChannelH265ColorSpaceSettingsRec601Settings (\s a -> s { _mediaLiveChannelH265ColorSpaceSettingsRec601Settings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-rec709settings
mlchcssRec709Settings :: Lens' MediaLiveChannelH265ColorSpaceSettings (Maybe MediaLiveChannelRec709Settings)
mlchcssRec709Settings = lens _mediaLiveChannelH265ColorSpaceSettingsRec709Settings (\s a -> s { _mediaLiveChannelH265ColorSpaceSettingsRec709Settings = a })
