{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecontainersettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelArchiveContainerSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelM2tsSettings

-- | Full data type definition for MediaLiveChannelArchiveContainerSettings.
-- See 'mediaLiveChannelArchiveContainerSettings' for a more convenient
-- constructor.
data MediaLiveChannelArchiveContainerSettings =
  MediaLiveChannelArchiveContainerSettings
  { _mediaLiveChannelArchiveContainerSettingsM2tsSettings :: Maybe MediaLiveChannelM2tsSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelArchiveContainerSettings where
  toJSON MediaLiveChannelArchiveContainerSettings{..} =
    object $
    catMaybes
    [ fmap (("M2tsSettings",) . toJSON) _mediaLiveChannelArchiveContainerSettingsM2tsSettings
    ]

-- | Constructor for 'MediaLiveChannelArchiveContainerSettings' containing
-- required fields as arguments.
mediaLiveChannelArchiveContainerSettings
  :: MediaLiveChannelArchiveContainerSettings
mediaLiveChannelArchiveContainerSettings  =
  MediaLiveChannelArchiveContainerSettings
  { _mediaLiveChannelArchiveContainerSettingsM2tsSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecontainersettings.html#cfn-medialive-channel-archivecontainersettings-m2tssettings
mlcacsM2tsSettings :: Lens' MediaLiveChannelArchiveContainerSettings (Maybe MediaLiveChannelM2tsSettings)
mlcacsM2tsSettings = lens _mediaLiveChannelArchiveContainerSettingsM2tsSettings (\s a -> s { _mediaLiveChannelArchiveContainerSettingsM2tsSettings = a })
