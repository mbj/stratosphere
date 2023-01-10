
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioLanguageSelection where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelAudioLanguageSelection. See
-- 'mediaLiveChannelAudioLanguageSelection' for a more convenient
-- constructor.
data MediaLiveChannelAudioLanguageSelection =
  MediaLiveChannelAudioLanguageSelection
  { _mediaLiveChannelAudioLanguageSelectionLanguageCode :: Maybe (Val Text)
  , _mediaLiveChannelAudioLanguageSelectionLanguageSelectionPolicy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioLanguageSelection where
  toJSON MediaLiveChannelAudioLanguageSelection{..} =
    object $
    catMaybes
    [ fmap (("LanguageCode",) . toJSON) _mediaLiveChannelAudioLanguageSelectionLanguageCode
    , fmap (("LanguageSelectionPolicy",) . toJSON) _mediaLiveChannelAudioLanguageSelectionLanguageSelectionPolicy
    ]

-- | Constructor for 'MediaLiveChannelAudioLanguageSelection' containing
-- required fields as arguments.
mediaLiveChannelAudioLanguageSelection
  :: MediaLiveChannelAudioLanguageSelection
mediaLiveChannelAudioLanguageSelection  =
  MediaLiveChannelAudioLanguageSelection
  { _mediaLiveChannelAudioLanguageSelectionLanguageCode = Nothing
  , _mediaLiveChannelAudioLanguageSelectionLanguageSelectionPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html#cfn-medialive-channel-audiolanguageselection-languagecode
mlcalsLanguageCode :: Lens' MediaLiveChannelAudioLanguageSelection (Maybe (Val Text))
mlcalsLanguageCode = lens _mediaLiveChannelAudioLanguageSelectionLanguageCode (\s a -> s { _mediaLiveChannelAudioLanguageSelectionLanguageCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html#cfn-medialive-channel-audiolanguageselection-languageselectionpolicy
mlcalsLanguageSelectionPolicy :: Lens' MediaLiveChannelAudioLanguageSelection (Maybe (Val Text))
mlcalsLanguageSelectionPolicy = lens _mediaLiveChannelAudioLanguageSelectionLanguageSelectionPolicy (\s a -> s { _mediaLiveChannelAudioLanguageSelectionLanguageSelectionPolicy = a })
