{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioDescription where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAudioNormalizationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelAudioCodecSettings
import Stratosphere.ResourceProperties.MediaLiveChannelRemixSettings

-- | Full data type definition for MediaLiveChannelAudioDescription. See
-- 'mediaLiveChannelAudioDescription' for a more convenient constructor.
data MediaLiveChannelAudioDescription =
  MediaLiveChannelAudioDescription
  { _mediaLiveChannelAudioDescriptionAudioNormalizationSettings :: Maybe MediaLiveChannelAudioNormalizationSettings
  , _mediaLiveChannelAudioDescriptionAudioSelectorName :: Maybe (Val Text)
  , _mediaLiveChannelAudioDescriptionAudioType :: Maybe (Val Text)
  , _mediaLiveChannelAudioDescriptionAudioTypeControl :: Maybe (Val Text)
  , _mediaLiveChannelAudioDescriptionCodecSettings :: Maybe MediaLiveChannelAudioCodecSettings
  , _mediaLiveChannelAudioDescriptionLanguageCode :: Maybe (Val Text)
  , _mediaLiveChannelAudioDescriptionLanguageCodeControl :: Maybe (Val Text)
  , _mediaLiveChannelAudioDescriptionName :: Maybe (Val Text)
  , _mediaLiveChannelAudioDescriptionRemixSettings :: Maybe MediaLiveChannelRemixSettings
  , _mediaLiveChannelAudioDescriptionStreamName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioDescription where
  toJSON MediaLiveChannelAudioDescription{..} =
    object $
    catMaybes
    [ fmap (("AudioNormalizationSettings",) . toJSON) _mediaLiveChannelAudioDescriptionAudioNormalizationSettings
    , fmap (("AudioSelectorName",) . toJSON) _mediaLiveChannelAudioDescriptionAudioSelectorName
    , fmap (("AudioType",) . toJSON) _mediaLiveChannelAudioDescriptionAudioType
    , fmap (("AudioTypeControl",) . toJSON) _mediaLiveChannelAudioDescriptionAudioTypeControl
    , fmap (("CodecSettings",) . toJSON) _mediaLiveChannelAudioDescriptionCodecSettings
    , fmap (("LanguageCode",) . toJSON) _mediaLiveChannelAudioDescriptionLanguageCode
    , fmap (("LanguageCodeControl",) . toJSON) _mediaLiveChannelAudioDescriptionLanguageCodeControl
    , fmap (("Name",) . toJSON) _mediaLiveChannelAudioDescriptionName
    , fmap (("RemixSettings",) . toJSON) _mediaLiveChannelAudioDescriptionRemixSettings
    , fmap (("StreamName",) . toJSON) _mediaLiveChannelAudioDescriptionStreamName
    ]

-- | Constructor for 'MediaLiveChannelAudioDescription' containing required
-- fields as arguments.
mediaLiveChannelAudioDescription
  :: MediaLiveChannelAudioDescription
mediaLiveChannelAudioDescription  =
  MediaLiveChannelAudioDescription
  { _mediaLiveChannelAudioDescriptionAudioNormalizationSettings = Nothing
  , _mediaLiveChannelAudioDescriptionAudioSelectorName = Nothing
  , _mediaLiveChannelAudioDescriptionAudioType = Nothing
  , _mediaLiveChannelAudioDescriptionAudioTypeControl = Nothing
  , _mediaLiveChannelAudioDescriptionCodecSettings = Nothing
  , _mediaLiveChannelAudioDescriptionLanguageCode = Nothing
  , _mediaLiveChannelAudioDescriptionLanguageCodeControl = Nothing
  , _mediaLiveChannelAudioDescriptionName = Nothing
  , _mediaLiveChannelAudioDescriptionRemixSettings = Nothing
  , _mediaLiveChannelAudioDescriptionStreamName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-audionormalizationsettings
mlcadAudioNormalizationSettings :: Lens' MediaLiveChannelAudioDescription (Maybe MediaLiveChannelAudioNormalizationSettings)
mlcadAudioNormalizationSettings = lens _mediaLiveChannelAudioDescriptionAudioNormalizationSettings (\s a -> s { _mediaLiveChannelAudioDescriptionAudioNormalizationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-audioselectorname
mlcadAudioSelectorName :: Lens' MediaLiveChannelAudioDescription (Maybe (Val Text))
mlcadAudioSelectorName = lens _mediaLiveChannelAudioDescriptionAudioSelectorName (\s a -> s { _mediaLiveChannelAudioDescriptionAudioSelectorName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-audiotype
mlcadAudioType :: Lens' MediaLiveChannelAudioDescription (Maybe (Val Text))
mlcadAudioType = lens _mediaLiveChannelAudioDescriptionAudioType (\s a -> s { _mediaLiveChannelAudioDescriptionAudioType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-audiotypecontrol
mlcadAudioTypeControl :: Lens' MediaLiveChannelAudioDescription (Maybe (Val Text))
mlcadAudioTypeControl = lens _mediaLiveChannelAudioDescriptionAudioTypeControl (\s a -> s { _mediaLiveChannelAudioDescriptionAudioTypeControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-codecsettings
mlcadCodecSettings :: Lens' MediaLiveChannelAudioDescription (Maybe MediaLiveChannelAudioCodecSettings)
mlcadCodecSettings = lens _mediaLiveChannelAudioDescriptionCodecSettings (\s a -> s { _mediaLiveChannelAudioDescriptionCodecSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-languagecode
mlcadLanguageCode :: Lens' MediaLiveChannelAudioDescription (Maybe (Val Text))
mlcadLanguageCode = lens _mediaLiveChannelAudioDescriptionLanguageCode (\s a -> s { _mediaLiveChannelAudioDescriptionLanguageCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-languagecodecontrol
mlcadLanguageCodeControl :: Lens' MediaLiveChannelAudioDescription (Maybe (Val Text))
mlcadLanguageCodeControl = lens _mediaLiveChannelAudioDescriptionLanguageCodeControl (\s a -> s { _mediaLiveChannelAudioDescriptionLanguageCodeControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-name
mlcadName :: Lens' MediaLiveChannelAudioDescription (Maybe (Val Text))
mlcadName = lens _mediaLiveChannelAudioDescriptionName (\s a -> s { _mediaLiveChannelAudioDescriptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-remixsettings
mlcadRemixSettings :: Lens' MediaLiveChannelAudioDescription (Maybe MediaLiveChannelRemixSettings)
mlcadRemixSettings = lens _mediaLiveChannelAudioDescriptionRemixSettings (\s a -> s { _mediaLiveChannelAudioDescriptionRemixSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodescription.html#cfn-medialive-channel-audiodescription-streamname
mlcadStreamName :: Lens' MediaLiveChannelAudioDescription (Maybe (Val Text))
mlcadStreamName = lens _mediaLiveChannelAudioDescriptionStreamName (\s a -> s { _mediaLiveChannelAudioDescriptionStreamName = a })
