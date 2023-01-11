
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselector.html

module Stratosphere.ResourceProperties.MediaLiveChannelCaptionSelector where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelCaptionSelectorSettings

-- | Full data type definition for MediaLiveChannelCaptionSelector. See
-- 'mediaLiveChannelCaptionSelector' for a more convenient constructor.
data MediaLiveChannelCaptionSelector =
  MediaLiveChannelCaptionSelector
  { _mediaLiveChannelCaptionSelectorLanguageCode :: Maybe (Val Text)
  , _mediaLiveChannelCaptionSelectorName :: Maybe (Val Text)
  , _mediaLiveChannelCaptionSelectorSelectorSettings :: Maybe MediaLiveChannelCaptionSelectorSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelCaptionSelector where
  toJSON MediaLiveChannelCaptionSelector{..} =
    object $
    catMaybes
    [ fmap (("LanguageCode",) . toJSON) _mediaLiveChannelCaptionSelectorLanguageCode
    , fmap (("Name",) . toJSON) _mediaLiveChannelCaptionSelectorName
    , fmap (("SelectorSettings",) . toJSON) _mediaLiveChannelCaptionSelectorSelectorSettings
    ]

-- | Constructor for 'MediaLiveChannelCaptionSelector' containing required
-- fields as arguments.
mediaLiveChannelCaptionSelector
  :: MediaLiveChannelCaptionSelector
mediaLiveChannelCaptionSelector  =
  MediaLiveChannelCaptionSelector
  { _mediaLiveChannelCaptionSelectorLanguageCode = Nothing
  , _mediaLiveChannelCaptionSelectorName = Nothing
  , _mediaLiveChannelCaptionSelectorSelectorSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselector.html#cfn-medialive-channel-captionselector-languagecode
mlccsLanguageCode :: Lens' MediaLiveChannelCaptionSelector (Maybe (Val Text))
mlccsLanguageCode = lens _mediaLiveChannelCaptionSelectorLanguageCode (\s a -> s { _mediaLiveChannelCaptionSelectorLanguageCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselector.html#cfn-medialive-channel-captionselector-name
mlccsName :: Lens' MediaLiveChannelCaptionSelector (Maybe (Val Text))
mlccsName = lens _mediaLiveChannelCaptionSelectorName (\s a -> s { _mediaLiveChannelCaptionSelectorName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselector.html#cfn-medialive-channel-captionselector-selectorsettings
mlccsSelectorSettings :: Lens' MediaLiveChannelCaptionSelector (Maybe MediaLiveChannelCaptionSelectorSettings)
mlccsSelectorSettings = lens _mediaLiveChannelCaptionSelectorSelectorSettings (\s a -> s { _mediaLiveChannelCaptionSelectorSelectorSettings = a })
