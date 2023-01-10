
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html

module Stratosphere.ResourceProperties.MediaLiveChannelVideoSelector where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelVideoSelectorSettings

-- | Full data type definition for MediaLiveChannelVideoSelector. See
-- 'mediaLiveChannelVideoSelector' for a more convenient constructor.
data MediaLiveChannelVideoSelector =
  MediaLiveChannelVideoSelector
  { _mediaLiveChannelVideoSelectorColorSpace :: Maybe (Val Text)
  , _mediaLiveChannelVideoSelectorColorSpaceUsage :: Maybe (Val Text)
  , _mediaLiveChannelVideoSelectorSelectorSettings :: Maybe MediaLiveChannelVideoSelectorSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelVideoSelector where
  toJSON MediaLiveChannelVideoSelector{..} =
    object $
    catMaybes
    [ fmap (("ColorSpace",) . toJSON) _mediaLiveChannelVideoSelectorColorSpace
    , fmap (("ColorSpaceUsage",) . toJSON) _mediaLiveChannelVideoSelectorColorSpaceUsage
    , fmap (("SelectorSettings",) . toJSON) _mediaLiveChannelVideoSelectorSelectorSettings
    ]

-- | Constructor for 'MediaLiveChannelVideoSelector' containing required
-- fields as arguments.
mediaLiveChannelVideoSelector
  :: MediaLiveChannelVideoSelector
mediaLiveChannelVideoSelector  =
  MediaLiveChannelVideoSelector
  { _mediaLiveChannelVideoSelectorColorSpace = Nothing
  , _mediaLiveChannelVideoSelectorColorSpaceUsage = Nothing
  , _mediaLiveChannelVideoSelectorSelectorSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspace
mlcvsColorSpace :: Lens' MediaLiveChannelVideoSelector (Maybe (Val Text))
mlcvsColorSpace = lens _mediaLiveChannelVideoSelectorColorSpace (\s a -> s { _mediaLiveChannelVideoSelectorColorSpace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspaceusage
mlcvsColorSpaceUsage :: Lens' MediaLiveChannelVideoSelector (Maybe (Val Text))
mlcvsColorSpaceUsage = lens _mediaLiveChannelVideoSelectorColorSpaceUsage (\s a -> s { _mediaLiveChannelVideoSelectorColorSpaceUsage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-selectorsettings
mlcvsSelectorSettings :: Lens' MediaLiveChannelVideoSelector (Maybe MediaLiveChannelVideoSelectorSettings)
mlcvsSelectorSettings = lens _mediaLiveChannelVideoSelectorSelectorSettings (\s a -> s { _mediaLiveChannelVideoSelectorSelectorSettings = a })
