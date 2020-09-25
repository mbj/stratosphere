{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondescription.html

module Stratosphere.ResourceProperties.MediaLiveChannelCaptionDescription where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelCaptionDestinationSettings

-- | Full data type definition for MediaLiveChannelCaptionDescription. See
-- 'mediaLiveChannelCaptionDescription' for a more convenient constructor.
data MediaLiveChannelCaptionDescription =
  MediaLiveChannelCaptionDescription
  { _mediaLiveChannelCaptionDescriptionCaptionSelectorName :: Maybe (Val Text)
  , _mediaLiveChannelCaptionDescriptionDestinationSettings :: Maybe MediaLiveChannelCaptionDestinationSettings
  , _mediaLiveChannelCaptionDescriptionLanguageCode :: Maybe (Val Text)
  , _mediaLiveChannelCaptionDescriptionLanguageDescription :: Maybe (Val Text)
  , _mediaLiveChannelCaptionDescriptionName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelCaptionDescription where
  toJSON MediaLiveChannelCaptionDescription{..} =
    object $
    catMaybes
    [ fmap (("CaptionSelectorName",) . toJSON) _mediaLiveChannelCaptionDescriptionCaptionSelectorName
    , fmap (("DestinationSettings",) . toJSON) _mediaLiveChannelCaptionDescriptionDestinationSettings
    , fmap (("LanguageCode",) . toJSON) _mediaLiveChannelCaptionDescriptionLanguageCode
    , fmap (("LanguageDescription",) . toJSON) _mediaLiveChannelCaptionDescriptionLanguageDescription
    , fmap (("Name",) . toJSON) _mediaLiveChannelCaptionDescriptionName
    ]

-- | Constructor for 'MediaLiveChannelCaptionDescription' containing required
-- fields as arguments.
mediaLiveChannelCaptionDescription
  :: MediaLiveChannelCaptionDescription
mediaLiveChannelCaptionDescription  =
  MediaLiveChannelCaptionDescription
  { _mediaLiveChannelCaptionDescriptionCaptionSelectorName = Nothing
  , _mediaLiveChannelCaptionDescriptionDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDescriptionLanguageCode = Nothing
  , _mediaLiveChannelCaptionDescriptionLanguageDescription = Nothing
  , _mediaLiveChannelCaptionDescriptionName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondescription.html#cfn-medialive-channel-captiondescription-captionselectorname
mlccdCaptionSelectorName :: Lens' MediaLiveChannelCaptionDescription (Maybe (Val Text))
mlccdCaptionSelectorName = lens _mediaLiveChannelCaptionDescriptionCaptionSelectorName (\s a -> s { _mediaLiveChannelCaptionDescriptionCaptionSelectorName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondescription.html#cfn-medialive-channel-captiondescription-destinationsettings
mlccdDestinationSettings :: Lens' MediaLiveChannelCaptionDescription (Maybe MediaLiveChannelCaptionDestinationSettings)
mlccdDestinationSettings = lens _mediaLiveChannelCaptionDescriptionDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDescriptionDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondescription.html#cfn-medialive-channel-captiondescription-languagecode
mlccdLanguageCode :: Lens' MediaLiveChannelCaptionDescription (Maybe (Val Text))
mlccdLanguageCode = lens _mediaLiveChannelCaptionDescriptionLanguageCode (\s a -> s { _mediaLiveChannelCaptionDescriptionLanguageCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondescription.html#cfn-medialive-channel-captiondescription-languagedescription
mlccdLanguageDescription :: Lens' MediaLiveChannelCaptionDescription (Maybe (Val Text))
mlccdLanguageDescription = lens _mediaLiveChannelCaptionDescriptionLanguageDescription (\s a -> s { _mediaLiveChannelCaptionDescriptionLanguageDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondescription.html#cfn-medialive-channel-captiondescription-name
mlccdName :: Lens' MediaLiveChannelCaptionDescription (Maybe (Val Text))
mlccdName = lens _mediaLiveChannelCaptionDescriptionName (\s a -> s { _mediaLiveChannelCaptionDescriptionName = a })
