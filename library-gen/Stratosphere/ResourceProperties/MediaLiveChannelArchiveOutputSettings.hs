{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archiveoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelArchiveOutputSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelArchiveContainerSettings

-- | Full data type definition for MediaLiveChannelArchiveOutputSettings. See
-- 'mediaLiveChannelArchiveOutputSettings' for a more convenient
-- constructor.
data MediaLiveChannelArchiveOutputSettings =
  MediaLiveChannelArchiveOutputSettings
  { _mediaLiveChannelArchiveOutputSettingsContainerSettings :: Maybe MediaLiveChannelArchiveContainerSettings
  , _mediaLiveChannelArchiveOutputSettingsExtension :: Maybe (Val Text)
  , _mediaLiveChannelArchiveOutputSettingsNameModifier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelArchiveOutputSettings where
  toJSON MediaLiveChannelArchiveOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("ContainerSettings",) . toJSON) _mediaLiveChannelArchiveOutputSettingsContainerSettings
    , fmap (("Extension",) . toJSON) _mediaLiveChannelArchiveOutputSettingsExtension
    , fmap (("NameModifier",) . toJSON) _mediaLiveChannelArchiveOutputSettingsNameModifier
    ]

-- | Constructor for 'MediaLiveChannelArchiveOutputSettings' containing
-- required fields as arguments.
mediaLiveChannelArchiveOutputSettings
  :: MediaLiveChannelArchiveOutputSettings
mediaLiveChannelArchiveOutputSettings  =
  MediaLiveChannelArchiveOutputSettings
  { _mediaLiveChannelArchiveOutputSettingsContainerSettings = Nothing
  , _mediaLiveChannelArchiveOutputSettingsExtension = Nothing
  , _mediaLiveChannelArchiveOutputSettingsNameModifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archiveoutputsettings.html#cfn-medialive-channel-archiveoutputsettings-containersettings
mlcaosContainerSettings :: Lens' MediaLiveChannelArchiveOutputSettings (Maybe MediaLiveChannelArchiveContainerSettings)
mlcaosContainerSettings = lens _mediaLiveChannelArchiveOutputSettingsContainerSettings (\s a -> s { _mediaLiveChannelArchiveOutputSettingsContainerSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archiveoutputsettings.html#cfn-medialive-channel-archiveoutputsettings-extension
mlcaosExtension :: Lens' MediaLiveChannelArchiveOutputSettings (Maybe (Val Text))
mlcaosExtension = lens _mediaLiveChannelArchiveOutputSettingsExtension (\s a -> s { _mediaLiveChannelArchiveOutputSettingsExtension = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archiveoutputsettings.html#cfn-medialive-channel-archiveoutputsettings-namemodifier
mlcaosNameModifier :: Lens' MediaLiveChannelArchiveOutputSettings (Maybe (Val Text))
mlcaosNameModifier = lens _mediaLiveChannelArchiveOutputSettingsNameModifier (\s a -> s { _mediaLiveChannelArchiveOutputSettingsNameModifier = a })
