{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelFrameCaptureSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelFrameCaptureSettings. See
-- 'mediaLiveChannelFrameCaptureSettings' for a more convenient constructor.
data MediaLiveChannelFrameCaptureSettings =
  MediaLiveChannelFrameCaptureSettings
  { _mediaLiveChannelFrameCaptureSettingsCaptureInterval :: Maybe (Val Integer)
  , _mediaLiveChannelFrameCaptureSettingsCaptureIntervalUnits :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelFrameCaptureSettings where
  toJSON MediaLiveChannelFrameCaptureSettings{..} =
    object $
    catMaybes
    [ fmap (("CaptureInterval",) . toJSON) _mediaLiveChannelFrameCaptureSettingsCaptureInterval
    , fmap (("CaptureIntervalUnits",) . toJSON) _mediaLiveChannelFrameCaptureSettingsCaptureIntervalUnits
    ]

-- | Constructor for 'MediaLiveChannelFrameCaptureSettings' containing
-- required fields as arguments.
mediaLiveChannelFrameCaptureSettings
  :: MediaLiveChannelFrameCaptureSettings
mediaLiveChannelFrameCaptureSettings  =
  MediaLiveChannelFrameCaptureSettings
  { _mediaLiveChannelFrameCaptureSettingsCaptureInterval = Nothing
  , _mediaLiveChannelFrameCaptureSettingsCaptureIntervalUnits = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturesettings.html#cfn-medialive-channel-framecapturesettings-captureinterval
mlcfcsCaptureInterval :: Lens' MediaLiveChannelFrameCaptureSettings (Maybe (Val Integer))
mlcfcsCaptureInterval = lens _mediaLiveChannelFrameCaptureSettingsCaptureInterval (\s a -> s { _mediaLiveChannelFrameCaptureSettingsCaptureInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturesettings.html#cfn-medialive-channel-framecapturesettings-captureintervalunits
mlcfcsCaptureIntervalUnits :: Lens' MediaLiveChannelFrameCaptureSettings (Maybe (Val Text))
mlcfcsCaptureIntervalUnits = lens _mediaLiveChannelFrameCaptureSettingsCaptureIntervalUnits (\s a -> s { _mediaLiveChannelFrameCaptureSettingsCaptureIntervalUnits = a })
