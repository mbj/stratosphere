{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html

module Stratosphere.ResourceProperties.MediaLiveChannelGlobalConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputLossBehavior

-- | Full data type definition for MediaLiveChannelGlobalConfiguration. See
-- 'mediaLiveChannelGlobalConfiguration' for a more convenient constructor.
data MediaLiveChannelGlobalConfiguration =
  MediaLiveChannelGlobalConfiguration
  { _mediaLiveChannelGlobalConfigurationInitialAudioGain :: Maybe (Val Integer)
  , _mediaLiveChannelGlobalConfigurationInputEndAction :: Maybe (Val Text)
  , _mediaLiveChannelGlobalConfigurationInputLossBehavior :: Maybe MediaLiveChannelInputLossBehavior
  , _mediaLiveChannelGlobalConfigurationOutputLockingMode :: Maybe (Val Text)
  , _mediaLiveChannelGlobalConfigurationOutputTimingSource :: Maybe (Val Text)
  , _mediaLiveChannelGlobalConfigurationSupportLowFramerateInputs :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelGlobalConfiguration where
  toJSON MediaLiveChannelGlobalConfiguration{..} =
    object $
    catMaybes
    [ fmap (("InitialAudioGain",) . toJSON) _mediaLiveChannelGlobalConfigurationInitialAudioGain
    , fmap (("InputEndAction",) . toJSON) _mediaLiveChannelGlobalConfigurationInputEndAction
    , fmap (("InputLossBehavior",) . toJSON) _mediaLiveChannelGlobalConfigurationInputLossBehavior
    , fmap (("OutputLockingMode",) . toJSON) _mediaLiveChannelGlobalConfigurationOutputLockingMode
    , fmap (("OutputTimingSource",) . toJSON) _mediaLiveChannelGlobalConfigurationOutputTimingSource
    , fmap (("SupportLowFramerateInputs",) . toJSON) _mediaLiveChannelGlobalConfigurationSupportLowFramerateInputs
    ]

-- | Constructor for 'MediaLiveChannelGlobalConfiguration' containing required
-- fields as arguments.
mediaLiveChannelGlobalConfiguration
  :: MediaLiveChannelGlobalConfiguration
mediaLiveChannelGlobalConfiguration  =
  MediaLiveChannelGlobalConfiguration
  { _mediaLiveChannelGlobalConfigurationInitialAudioGain = Nothing
  , _mediaLiveChannelGlobalConfigurationInputEndAction = Nothing
  , _mediaLiveChannelGlobalConfigurationInputLossBehavior = Nothing
  , _mediaLiveChannelGlobalConfigurationOutputLockingMode = Nothing
  , _mediaLiveChannelGlobalConfigurationOutputTimingSource = Nothing
  , _mediaLiveChannelGlobalConfigurationSupportLowFramerateInputs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-initialaudiogain
mlcgcInitialAudioGain :: Lens' MediaLiveChannelGlobalConfiguration (Maybe (Val Integer))
mlcgcInitialAudioGain = lens _mediaLiveChannelGlobalConfigurationInitialAudioGain (\s a -> s { _mediaLiveChannelGlobalConfigurationInitialAudioGain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-inputendaction
mlcgcInputEndAction :: Lens' MediaLiveChannelGlobalConfiguration (Maybe (Val Text))
mlcgcInputEndAction = lens _mediaLiveChannelGlobalConfigurationInputEndAction (\s a -> s { _mediaLiveChannelGlobalConfigurationInputEndAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-inputlossbehavior
mlcgcInputLossBehavior :: Lens' MediaLiveChannelGlobalConfiguration (Maybe MediaLiveChannelInputLossBehavior)
mlcgcInputLossBehavior = lens _mediaLiveChannelGlobalConfigurationInputLossBehavior (\s a -> s { _mediaLiveChannelGlobalConfigurationInputLossBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-outputlockingmode
mlcgcOutputLockingMode :: Lens' MediaLiveChannelGlobalConfiguration (Maybe (Val Text))
mlcgcOutputLockingMode = lens _mediaLiveChannelGlobalConfigurationOutputLockingMode (\s a -> s { _mediaLiveChannelGlobalConfigurationOutputLockingMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-outputtimingsource
mlcgcOutputTimingSource :: Lens' MediaLiveChannelGlobalConfiguration (Maybe (Val Text))
mlcgcOutputTimingSource = lens _mediaLiveChannelGlobalConfigurationOutputTimingSource (\s a -> s { _mediaLiveChannelGlobalConfigurationOutputTimingSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-globalconfiguration.html#cfn-medialive-channel-globalconfiguration-supportlowframerateinputs
mlcgcSupportLowFramerateInputs :: Lens' MediaLiveChannelGlobalConfiguration (Maybe (Val Text))
mlcgcSupportLowFramerateInputs = lens _mediaLiveChannelGlobalConfigurationSupportLowFramerateInputs (\s a -> s { _mediaLiveChannelGlobalConfigurationSupportLowFramerateInputs = a })
