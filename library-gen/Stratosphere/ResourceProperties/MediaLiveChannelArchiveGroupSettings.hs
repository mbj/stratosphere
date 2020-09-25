{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivegroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelArchiveGroupSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef

-- | Full data type definition for MediaLiveChannelArchiveGroupSettings. See
-- 'mediaLiveChannelArchiveGroupSettings' for a more convenient constructor.
data MediaLiveChannelArchiveGroupSettings =
  MediaLiveChannelArchiveGroupSettings
  { _mediaLiveChannelArchiveGroupSettingsDestination :: Maybe MediaLiveChannelOutputLocationRef
  , _mediaLiveChannelArchiveGroupSettingsRolloverInterval :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelArchiveGroupSettings where
  toJSON MediaLiveChannelArchiveGroupSettings{..} =
    object $
    catMaybes
    [ fmap (("Destination",) . toJSON) _mediaLiveChannelArchiveGroupSettingsDestination
    , fmap (("RolloverInterval",) . toJSON) _mediaLiveChannelArchiveGroupSettingsRolloverInterval
    ]

-- | Constructor for 'MediaLiveChannelArchiveGroupSettings' containing
-- required fields as arguments.
mediaLiveChannelArchiveGroupSettings
  :: MediaLiveChannelArchiveGroupSettings
mediaLiveChannelArchiveGroupSettings  =
  MediaLiveChannelArchiveGroupSettings
  { _mediaLiveChannelArchiveGroupSettingsDestination = Nothing
  , _mediaLiveChannelArchiveGroupSettingsRolloverInterval = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivegroupsettings.html#cfn-medialive-channel-archivegroupsettings-destination
mlcagsDestination :: Lens' MediaLiveChannelArchiveGroupSettings (Maybe MediaLiveChannelOutputLocationRef)
mlcagsDestination = lens _mediaLiveChannelArchiveGroupSettingsDestination (\s a -> s { _mediaLiveChannelArchiveGroupSettingsDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivegroupsettings.html#cfn-medialive-channel-archivegroupsettings-rolloverinterval
mlcagsRolloverInterval :: Lens' MediaLiveChannelArchiveGroupSettings (Maybe (Val Integer))
mlcagsRolloverInterval = lens _mediaLiveChannelArchiveGroupSettingsRolloverInterval (\s a -> s { _mediaLiveChannelArchiveGroupSettingsRolloverInterval = a })
