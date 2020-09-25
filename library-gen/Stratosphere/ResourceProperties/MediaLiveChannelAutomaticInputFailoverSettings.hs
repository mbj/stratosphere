{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-automaticinputfailoversettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAutomaticInputFailoverSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelAutomaticInputFailoverSettings. See
-- 'mediaLiveChannelAutomaticInputFailoverSettings' for a more convenient
-- constructor.
data MediaLiveChannelAutomaticInputFailoverSettings =
  MediaLiveChannelAutomaticInputFailoverSettings
  { _mediaLiveChannelAutomaticInputFailoverSettingsInputPreference :: Maybe (Val Text)
  , _mediaLiveChannelAutomaticInputFailoverSettingsSecondaryInputId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAutomaticInputFailoverSettings where
  toJSON MediaLiveChannelAutomaticInputFailoverSettings{..} =
    object $
    catMaybes
    [ fmap (("InputPreference",) . toJSON) _mediaLiveChannelAutomaticInputFailoverSettingsInputPreference
    , fmap (("SecondaryInputId",) . toJSON) _mediaLiveChannelAutomaticInputFailoverSettingsSecondaryInputId
    ]

-- | Constructor for 'MediaLiveChannelAutomaticInputFailoverSettings'
-- containing required fields as arguments.
mediaLiveChannelAutomaticInputFailoverSettings
  :: MediaLiveChannelAutomaticInputFailoverSettings
mediaLiveChannelAutomaticInputFailoverSettings  =
  MediaLiveChannelAutomaticInputFailoverSettings
  { _mediaLiveChannelAutomaticInputFailoverSettingsInputPreference = Nothing
  , _mediaLiveChannelAutomaticInputFailoverSettingsSecondaryInputId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-automaticinputfailoversettings.html#cfn-medialive-channel-automaticinputfailoversettings-inputpreference
mlcaifsInputPreference :: Lens' MediaLiveChannelAutomaticInputFailoverSettings (Maybe (Val Text))
mlcaifsInputPreference = lens _mediaLiveChannelAutomaticInputFailoverSettingsInputPreference (\s a -> s { _mediaLiveChannelAutomaticInputFailoverSettingsInputPreference = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-automaticinputfailoversettings.html#cfn-medialive-channel-automaticinputfailoversettings-secondaryinputid
mlcaifsSecondaryInputId :: Lens' MediaLiveChannelAutomaticInputFailoverSettings (Maybe (Val Text))
mlcaifsSecondaryInputId = lens _mediaLiveChannelAutomaticInputFailoverSettingsSecondaryInputId (\s a -> s { _mediaLiveChannelAutomaticInputFailoverSettingsSecondaryInputId = a })
