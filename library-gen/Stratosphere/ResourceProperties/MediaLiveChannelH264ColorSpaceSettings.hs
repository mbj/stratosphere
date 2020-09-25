{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelH264ColorSpaceSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelColorSpacePassthroughSettings
import Stratosphere.ResourceProperties.MediaLiveChannelRec601Settings
import Stratosphere.ResourceProperties.MediaLiveChannelRec709Settings

-- | Full data type definition for MediaLiveChannelH264ColorSpaceSettings. See
-- 'mediaLiveChannelH264ColorSpaceSettings' for a more convenient
-- constructor.
data MediaLiveChannelH264ColorSpaceSettings =
  MediaLiveChannelH264ColorSpaceSettings
  { _mediaLiveChannelH264ColorSpaceSettingsColorSpacePassthroughSettings :: Maybe MediaLiveChannelColorSpacePassthroughSettings
  , _mediaLiveChannelH264ColorSpaceSettingsRec601Settings :: Maybe MediaLiveChannelRec601Settings
  , _mediaLiveChannelH264ColorSpaceSettingsRec709Settings :: Maybe MediaLiveChannelRec709Settings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelH264ColorSpaceSettings where
  toJSON MediaLiveChannelH264ColorSpaceSettings{..} =
    object $
    catMaybes
    [ fmap (("ColorSpacePassthroughSettings",) . toJSON) _mediaLiveChannelH264ColorSpaceSettingsColorSpacePassthroughSettings
    , fmap (("Rec601Settings",) . toJSON) _mediaLiveChannelH264ColorSpaceSettingsRec601Settings
    , fmap (("Rec709Settings",) . toJSON) _mediaLiveChannelH264ColorSpaceSettingsRec709Settings
    ]

-- | Constructor for 'MediaLiveChannelH264ColorSpaceSettings' containing
-- required fields as arguments.
mediaLiveChannelH264ColorSpaceSettings
  :: MediaLiveChannelH264ColorSpaceSettings
mediaLiveChannelH264ColorSpaceSettings  =
  MediaLiveChannelH264ColorSpaceSettings
  { _mediaLiveChannelH264ColorSpaceSettingsColorSpacePassthroughSettings = Nothing
  , _mediaLiveChannelH264ColorSpaceSettingsRec601Settings = Nothing
  , _mediaLiveChannelH264ColorSpaceSettingsRec709Settings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-colorspacepassthroughsettings
mlchcssColorSpacePassthroughSettings :: Lens' MediaLiveChannelH264ColorSpaceSettings (Maybe MediaLiveChannelColorSpacePassthroughSettings)
mlchcssColorSpacePassthroughSettings = lens _mediaLiveChannelH264ColorSpaceSettingsColorSpacePassthroughSettings (\s a -> s { _mediaLiveChannelH264ColorSpaceSettingsColorSpacePassthroughSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-rec601settings
mlchcssRec601Settings :: Lens' MediaLiveChannelH264ColorSpaceSettings (Maybe MediaLiveChannelRec601Settings)
mlchcssRec601Settings = lens _mediaLiveChannelH264ColorSpaceSettingsRec601Settings (\s a -> s { _mediaLiveChannelH264ColorSpaceSettingsRec601Settings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-rec709settings
mlchcssRec709Settings :: Lens' MediaLiveChannelH264ColorSpaceSettings (Maybe MediaLiveChannelRec709Settings)
mlchcssRec709Settings = lens _mediaLiveChannelH264ColorSpaceSettingsRec709Settings (\s a -> s { _mediaLiveChannelH264ColorSpaceSettingsRec709Settings = a })
