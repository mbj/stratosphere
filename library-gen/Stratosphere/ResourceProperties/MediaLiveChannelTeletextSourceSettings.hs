{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelTeletextSourceSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelTeletextSourceSettings. See
-- 'mediaLiveChannelTeletextSourceSettings' for a more convenient
-- constructor.
data MediaLiveChannelTeletextSourceSettings =
  MediaLiveChannelTeletextSourceSettings
  { _mediaLiveChannelTeletextSourceSettingsPageNumber :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelTeletextSourceSettings where
  toJSON MediaLiveChannelTeletextSourceSettings{..} =
    object $
    catMaybes
    [ fmap (("PageNumber",) . toJSON) _mediaLiveChannelTeletextSourceSettingsPageNumber
    ]

-- | Constructor for 'MediaLiveChannelTeletextSourceSettings' containing
-- required fields as arguments.
mediaLiveChannelTeletextSourceSettings
  :: MediaLiveChannelTeletextSourceSettings
mediaLiveChannelTeletextSourceSettings  =
  MediaLiveChannelTeletextSourceSettings
  { _mediaLiveChannelTeletextSourceSettingsPageNumber = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html#cfn-medialive-channel-teletextsourcesettings-pagenumber
mlctssPageNumber :: Lens' MediaLiveChannelTeletextSourceSettings (Maybe (Val Text))
mlctssPageNumber = lens _mediaLiveChannelTeletextSourceSettingsPageNumber (\s a -> s { _mediaLiveChannelTeletextSourceSettingsPageNumber = a })
