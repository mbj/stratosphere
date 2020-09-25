{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html

module Stratosphere.ResourceProperties.MediaLiveChannelOutput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelOutputSettings

-- | Full data type definition for MediaLiveChannelOutput. See
-- 'mediaLiveChannelOutput' for a more convenient constructor.
data MediaLiveChannelOutput =
  MediaLiveChannelOutput
  { _mediaLiveChannelOutputAudioDescriptionNames :: Maybe (ValList Text)
  , _mediaLiveChannelOutputCaptionDescriptionNames :: Maybe (ValList Text)
  , _mediaLiveChannelOutputOutputName :: Maybe (Val Text)
  , _mediaLiveChannelOutputOutputSettings :: Maybe MediaLiveChannelOutputSettings
  , _mediaLiveChannelOutputVideoDescriptionName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelOutput where
  toJSON MediaLiveChannelOutput{..} =
    object $
    catMaybes
    [ fmap (("AudioDescriptionNames",) . toJSON) _mediaLiveChannelOutputAudioDescriptionNames
    , fmap (("CaptionDescriptionNames",) . toJSON) _mediaLiveChannelOutputCaptionDescriptionNames
    , fmap (("OutputName",) . toJSON) _mediaLiveChannelOutputOutputName
    , fmap (("OutputSettings",) . toJSON) _mediaLiveChannelOutputOutputSettings
    , fmap (("VideoDescriptionName",) . toJSON) _mediaLiveChannelOutputVideoDescriptionName
    ]

-- | Constructor for 'MediaLiveChannelOutput' containing required fields as
-- arguments.
mediaLiveChannelOutput
  :: MediaLiveChannelOutput
mediaLiveChannelOutput  =
  MediaLiveChannelOutput
  { _mediaLiveChannelOutputAudioDescriptionNames = Nothing
  , _mediaLiveChannelOutputCaptionDescriptionNames = Nothing
  , _mediaLiveChannelOutputOutputName = Nothing
  , _mediaLiveChannelOutputOutputSettings = Nothing
  , _mediaLiveChannelOutputVideoDescriptionName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-audiodescriptionnames
mlcoAudioDescriptionNames :: Lens' MediaLiveChannelOutput (Maybe (ValList Text))
mlcoAudioDescriptionNames = lens _mediaLiveChannelOutputAudioDescriptionNames (\s a -> s { _mediaLiveChannelOutputAudioDescriptionNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-captiondescriptionnames
mlcoCaptionDescriptionNames :: Lens' MediaLiveChannelOutput (Maybe (ValList Text))
mlcoCaptionDescriptionNames = lens _mediaLiveChannelOutputCaptionDescriptionNames (\s a -> s { _mediaLiveChannelOutputCaptionDescriptionNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-outputname
mlcoOutputName :: Lens' MediaLiveChannelOutput (Maybe (Val Text))
mlcoOutputName = lens _mediaLiveChannelOutputOutputName (\s a -> s { _mediaLiveChannelOutputOutputName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-outputsettings
mlcoOutputSettings :: Lens' MediaLiveChannelOutput (Maybe MediaLiveChannelOutputSettings)
mlcoOutputSettings = lens _mediaLiveChannelOutputOutputSettings (\s a -> s { _mediaLiveChannelOutputOutputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-output.html#cfn-medialive-channel-output-videodescriptionname
mlcoVideoDescriptionName :: Lens' MediaLiveChannelOutput (Maybe (Val Text))
mlcoVideoDescriptionName = lens _mediaLiveChannelOutputVideoDescriptionName (\s a -> s { _mediaLiveChannelOutputVideoDescriptionName = a })
