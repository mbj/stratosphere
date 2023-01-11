
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelScte20SourceSettings where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelScte20SourceSettings. See
-- 'mediaLiveChannelScte20SourceSettings' for a more convenient constructor.
data MediaLiveChannelScte20SourceSettings =
  MediaLiveChannelScte20SourceSettings
  { _mediaLiveChannelScte20SourceSettingsConvert608To708 :: Maybe (Val Text)
  , _mediaLiveChannelScte20SourceSettingsSource608ChannelNumber :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelScte20SourceSettings where
  toJSON MediaLiveChannelScte20SourceSettings{..} =
    object $
    catMaybes
    [ fmap (("Convert608To708",) . toJSON) _mediaLiveChannelScte20SourceSettingsConvert608To708
    , fmap (("Source608ChannelNumber",) . toJSON) _mediaLiveChannelScte20SourceSettingsSource608ChannelNumber
    ]

-- | Constructor for 'MediaLiveChannelScte20SourceSettings' containing
-- required fields as arguments.
mediaLiveChannelScte20SourceSettings
  :: MediaLiveChannelScte20SourceSettings
mediaLiveChannelScte20SourceSettings  =
  MediaLiveChannelScte20SourceSettings
  { _mediaLiveChannelScte20SourceSettingsConvert608To708 = Nothing
  , _mediaLiveChannelScte20SourceSettingsSource608ChannelNumber = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html#cfn-medialive-channel-scte20sourcesettings-convert608to708
mlcsssConvert608To708 :: Lens' MediaLiveChannelScte20SourceSettings (Maybe (Val Text))
mlcsssConvert608To708 = lens _mediaLiveChannelScte20SourceSettingsConvert608To708 (\s a -> s { _mediaLiveChannelScte20SourceSettingsConvert608To708 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html#cfn-medialive-channel-scte20sourcesettings-source608channelnumber
mlcsssSource608ChannelNumber :: Lens' MediaLiveChannelScte20SourceSettings (Maybe (Val Integer))
mlcsssSource608ChannelNumber = lens _mediaLiveChannelScte20SourceSettingsSource608ChannelNumber (\s a -> s { _mediaLiveChannelScte20SourceSettingsSource608ChannelNumber = a })
