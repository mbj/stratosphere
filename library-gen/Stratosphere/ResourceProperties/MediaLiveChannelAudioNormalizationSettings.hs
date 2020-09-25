{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audionormalizationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioNormalizationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelAudioNormalizationSettings.
-- See 'mediaLiveChannelAudioNormalizationSettings' for a more convenient
-- constructor.
data MediaLiveChannelAudioNormalizationSettings =
  MediaLiveChannelAudioNormalizationSettings
  { _mediaLiveChannelAudioNormalizationSettingsAlgorithm :: Maybe (Val Text)
  , _mediaLiveChannelAudioNormalizationSettingsAlgorithmControl :: Maybe (Val Text)
  , _mediaLiveChannelAudioNormalizationSettingsTargetLkfs :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioNormalizationSettings where
  toJSON MediaLiveChannelAudioNormalizationSettings{..} =
    object $
    catMaybes
    [ fmap (("Algorithm",) . toJSON) _mediaLiveChannelAudioNormalizationSettingsAlgorithm
    , fmap (("AlgorithmControl",) . toJSON) _mediaLiveChannelAudioNormalizationSettingsAlgorithmControl
    , fmap (("TargetLkfs",) . toJSON) _mediaLiveChannelAudioNormalizationSettingsTargetLkfs
    ]

-- | Constructor for 'MediaLiveChannelAudioNormalizationSettings' containing
-- required fields as arguments.
mediaLiveChannelAudioNormalizationSettings
  :: MediaLiveChannelAudioNormalizationSettings
mediaLiveChannelAudioNormalizationSettings  =
  MediaLiveChannelAudioNormalizationSettings
  { _mediaLiveChannelAudioNormalizationSettingsAlgorithm = Nothing
  , _mediaLiveChannelAudioNormalizationSettingsAlgorithmControl = Nothing
  , _mediaLiveChannelAudioNormalizationSettingsTargetLkfs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audionormalizationsettings.html#cfn-medialive-channel-audionormalizationsettings-algorithm
mlcansAlgorithm :: Lens' MediaLiveChannelAudioNormalizationSettings (Maybe (Val Text))
mlcansAlgorithm = lens _mediaLiveChannelAudioNormalizationSettingsAlgorithm (\s a -> s { _mediaLiveChannelAudioNormalizationSettingsAlgorithm = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audionormalizationsettings.html#cfn-medialive-channel-audionormalizationsettings-algorithmcontrol
mlcansAlgorithmControl :: Lens' MediaLiveChannelAudioNormalizationSettings (Maybe (Val Text))
mlcansAlgorithmControl = lens _mediaLiveChannelAudioNormalizationSettingsAlgorithmControl (\s a -> s { _mediaLiveChannelAudioNormalizationSettingsAlgorithmControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audionormalizationsettings.html#cfn-medialive-channel-audionormalizationsettings-targetlkfs
mlcansTargetLkfs :: Lens' MediaLiveChannelAudioNormalizationSettings (Maybe (Val Double))
mlcansTargetLkfs = lens _mediaLiveChannelAudioNormalizationSettingsTargetLkfs (\s a -> s { _mediaLiveChannelAudioNormalizationSettingsTargetLkfs = a })
