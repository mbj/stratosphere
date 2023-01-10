
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioSelector where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAudioSelectorSettings

-- | Full data type definition for MediaLiveChannelAudioSelector. See
-- 'mediaLiveChannelAudioSelector' for a more convenient constructor.
data MediaLiveChannelAudioSelector =
  MediaLiveChannelAudioSelector
  { _mediaLiveChannelAudioSelectorName :: Maybe (Val Text)
  , _mediaLiveChannelAudioSelectorSelectorSettings :: Maybe MediaLiveChannelAudioSelectorSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioSelector where
  toJSON MediaLiveChannelAudioSelector{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _mediaLiveChannelAudioSelectorName
    , fmap (("SelectorSettings",) . toJSON) _mediaLiveChannelAudioSelectorSelectorSettings
    ]

-- | Constructor for 'MediaLiveChannelAudioSelector' containing required
-- fields as arguments.
mediaLiveChannelAudioSelector
  :: MediaLiveChannelAudioSelector
mediaLiveChannelAudioSelector  =
  MediaLiveChannelAudioSelector
  { _mediaLiveChannelAudioSelectorName = Nothing
  , _mediaLiveChannelAudioSelectorSelectorSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html#cfn-medialive-channel-audioselector-name
mlcasName :: Lens' MediaLiveChannelAudioSelector (Maybe (Val Text))
mlcasName = lens _mediaLiveChannelAudioSelectorName (\s a -> s { _mediaLiveChannelAudioSelectorName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html#cfn-medialive-channel-audioselector-selectorsettings
mlcasSelectorSettings :: Lens' MediaLiveChannelAudioSelector (Maybe MediaLiveChannelAudioSelectorSettings)
mlcasSelectorSettings = lens _mediaLiveChannelAudioSelectorSelectorSettings (\s a -> s { _mediaLiveChannelAudioSelectorSelectorSettings = a })
