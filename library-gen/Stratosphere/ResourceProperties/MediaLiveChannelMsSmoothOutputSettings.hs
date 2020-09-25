{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMsSmoothOutputSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelMsSmoothOutputSettings. See
-- 'mediaLiveChannelMsSmoothOutputSettings' for a more convenient
-- constructor.
data MediaLiveChannelMsSmoothOutputSettings =
  MediaLiveChannelMsSmoothOutputSettings
  { _mediaLiveChannelMsSmoothOutputSettingsH265PackagingType :: Maybe (Val Text)
  , _mediaLiveChannelMsSmoothOutputSettingsNameModifier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMsSmoothOutputSettings where
  toJSON MediaLiveChannelMsSmoothOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("H265PackagingType",) . toJSON) _mediaLiveChannelMsSmoothOutputSettingsH265PackagingType
    , fmap (("NameModifier",) . toJSON) _mediaLiveChannelMsSmoothOutputSettingsNameModifier
    ]

-- | Constructor for 'MediaLiveChannelMsSmoothOutputSettings' containing
-- required fields as arguments.
mediaLiveChannelMsSmoothOutputSettings
  :: MediaLiveChannelMsSmoothOutputSettings
mediaLiveChannelMsSmoothOutputSettings  =
  MediaLiveChannelMsSmoothOutputSettings
  { _mediaLiveChannelMsSmoothOutputSettingsH265PackagingType = Nothing
  , _mediaLiveChannelMsSmoothOutputSettingsNameModifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothoutputsettings.html#cfn-medialive-channel-mssmoothoutputsettings-h265packagingtype
mlcmsosH265PackagingType :: Lens' MediaLiveChannelMsSmoothOutputSettings (Maybe (Val Text))
mlcmsosH265PackagingType = lens _mediaLiveChannelMsSmoothOutputSettingsH265PackagingType (\s a -> s { _mediaLiveChannelMsSmoothOutputSettingsH265PackagingType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mssmoothoutputsettings.html#cfn-medialive-channel-mssmoothoutputsettings-namemodifier
mlcmsosNameModifier :: Lens' MediaLiveChannelMsSmoothOutputSettings (Maybe (Val Text))
mlcmsosNameModifier = lens _mediaLiveChannelMsSmoothOutputSettingsNameModifier (\s a -> s { _mediaLiveChannelMsSmoothOutputSettingsNameModifier = a })
