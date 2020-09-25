{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-fecoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelFecOutputSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelFecOutputSettings. See
-- 'mediaLiveChannelFecOutputSettings' for a more convenient constructor.
data MediaLiveChannelFecOutputSettings =
  MediaLiveChannelFecOutputSettings
  { _mediaLiveChannelFecOutputSettingsColumnDepth :: Maybe (Val Integer)
  , _mediaLiveChannelFecOutputSettingsIncludeFec :: Maybe (Val Text)
  , _mediaLiveChannelFecOutputSettingsRowLength :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelFecOutputSettings where
  toJSON MediaLiveChannelFecOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("ColumnDepth",) . toJSON) _mediaLiveChannelFecOutputSettingsColumnDepth
    , fmap (("IncludeFec",) . toJSON) _mediaLiveChannelFecOutputSettingsIncludeFec
    , fmap (("RowLength",) . toJSON) _mediaLiveChannelFecOutputSettingsRowLength
    ]

-- | Constructor for 'MediaLiveChannelFecOutputSettings' containing required
-- fields as arguments.
mediaLiveChannelFecOutputSettings
  :: MediaLiveChannelFecOutputSettings
mediaLiveChannelFecOutputSettings  =
  MediaLiveChannelFecOutputSettings
  { _mediaLiveChannelFecOutputSettingsColumnDepth = Nothing
  , _mediaLiveChannelFecOutputSettingsIncludeFec = Nothing
  , _mediaLiveChannelFecOutputSettingsRowLength = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-fecoutputsettings.html#cfn-medialive-channel-fecoutputsettings-columndepth
mlcfosColumnDepth :: Lens' MediaLiveChannelFecOutputSettings (Maybe (Val Integer))
mlcfosColumnDepth = lens _mediaLiveChannelFecOutputSettingsColumnDepth (\s a -> s { _mediaLiveChannelFecOutputSettingsColumnDepth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-fecoutputsettings.html#cfn-medialive-channel-fecoutputsettings-includefec
mlcfosIncludeFec :: Lens' MediaLiveChannelFecOutputSettings (Maybe (Val Text))
mlcfosIncludeFec = lens _mediaLiveChannelFecOutputSettingsIncludeFec (\s a -> s { _mediaLiveChannelFecOutputSettingsIncludeFec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-fecoutputsettings.html#cfn-medialive-channel-fecoutputsettings-rowlength
mlcfosRowLength :: Lens' MediaLiveChannelFecOutputSettings (Maybe (Val Integer))
mlcfosRowLength = lens _mediaLiveChannelFecOutputSettingsRowLength (\s a -> s { _mediaLiveChannelFecOutputSettingsRowLength = a })
