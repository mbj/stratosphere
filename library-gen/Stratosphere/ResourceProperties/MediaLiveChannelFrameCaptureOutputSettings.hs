{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecaptureoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelFrameCaptureOutputSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelFrameCaptureOutputSettings.
-- See 'mediaLiveChannelFrameCaptureOutputSettings' for a more convenient
-- constructor.
data MediaLiveChannelFrameCaptureOutputSettings =
  MediaLiveChannelFrameCaptureOutputSettings
  { _mediaLiveChannelFrameCaptureOutputSettingsNameModifier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelFrameCaptureOutputSettings where
  toJSON MediaLiveChannelFrameCaptureOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("NameModifier",) . toJSON) _mediaLiveChannelFrameCaptureOutputSettingsNameModifier
    ]

-- | Constructor for 'MediaLiveChannelFrameCaptureOutputSettings' containing
-- required fields as arguments.
mediaLiveChannelFrameCaptureOutputSettings
  :: MediaLiveChannelFrameCaptureOutputSettings
mediaLiveChannelFrameCaptureOutputSettings  =
  MediaLiveChannelFrameCaptureOutputSettings
  { _mediaLiveChannelFrameCaptureOutputSettingsNameModifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecaptureoutputsettings.html#cfn-medialive-channel-framecaptureoutputsettings-namemodifier
mlcfcosNameModifier :: Lens' MediaLiveChannelFrameCaptureOutputSettings (Maybe (Val Text))
mlcfcosNameModifier = lens _mediaLiveChannelFrameCaptureOutputSettingsNameModifier (\s a -> s { _mediaLiveChannelFrameCaptureOutputSettingsNameModifier = a })
