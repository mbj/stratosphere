{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdevicesettings.html

module Stratosphere.ResourceProperties.MediaLiveInputInputDeviceSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveInputInputDeviceSettings. See
-- 'mediaLiveInputInputDeviceSettings' for a more convenient constructor.
data MediaLiveInputInputDeviceSettings =
  MediaLiveInputInputDeviceSettings
  { _mediaLiveInputInputDeviceSettingsId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveInputInputDeviceSettings where
  toJSON MediaLiveInputInputDeviceSettings{..} =
    object $
    catMaybes
    [ fmap (("Id",) . toJSON) _mediaLiveInputInputDeviceSettingsId
    ]

-- | Constructor for 'MediaLiveInputInputDeviceSettings' containing required
-- fields as arguments.
mediaLiveInputInputDeviceSettings
  :: MediaLiveInputInputDeviceSettings
mediaLiveInputInputDeviceSettings  =
  MediaLiveInputInputDeviceSettings
  { _mediaLiveInputInputDeviceSettingsId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdevicesettings.html#cfn-medialive-input-inputdevicesettings-id
mliidsId :: Lens' MediaLiveInputInputDeviceSettings (Maybe (Val Text))
mliidsId = lens _mediaLiveInputInputDeviceSettingsId (\s a -> s { _mediaLiveInputInputDeviceSettingsId = a })
