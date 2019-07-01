{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelScte27SourceSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelScte27SourceSettings. See
-- 'mediaLiveChannelScte27SourceSettings' for a more convenient constructor.
data MediaLiveChannelScte27SourceSettings =
  MediaLiveChannelScte27SourceSettings
  { _mediaLiveChannelScte27SourceSettingsPid :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelScte27SourceSettings where
  toJSON MediaLiveChannelScte27SourceSettings{..} =
    object $
    catMaybes
    [ fmap (("Pid",) . toJSON) _mediaLiveChannelScte27SourceSettingsPid
    ]

-- | Constructor for 'MediaLiveChannelScte27SourceSettings' containing
-- required fields as arguments.
mediaLiveChannelScte27SourceSettings
  :: MediaLiveChannelScte27SourceSettings
mediaLiveChannelScte27SourceSettings  =
  MediaLiveChannelScte27SourceSettings
  { _mediaLiveChannelScte27SourceSettingsPid = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html#cfn-medialive-channel-scte27sourcesettings-pid
mlcsssPid :: Lens' MediaLiveChannelScte27SourceSettings (Maybe (Val Integer))
mlcsssPid = lens _mediaLiveChannelScte27SourceSettingsPid (\s a -> s { _mediaLiveChannelScte27SourceSettingsPid = a })
