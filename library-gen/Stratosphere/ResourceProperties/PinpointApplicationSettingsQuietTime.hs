{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html

module Stratosphere.ResourceProperties.PinpointApplicationSettingsQuietTime where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointApplicationSettingsQuietTime. See
-- 'pinpointApplicationSettingsQuietTime' for a more convenient constructor.
data PinpointApplicationSettingsQuietTime =
  PinpointApplicationSettingsQuietTime
  { _pinpointApplicationSettingsQuietTimeEnd :: Val Text
  , _pinpointApplicationSettingsQuietTimeStart :: Val Text
  } deriving (Show, Eq)

instance ToJSON PinpointApplicationSettingsQuietTime where
  toJSON PinpointApplicationSettingsQuietTime{..} =
    object $
    catMaybes
    [ (Just . ("End",) . toJSON) _pinpointApplicationSettingsQuietTimeEnd
    , (Just . ("Start",) . toJSON) _pinpointApplicationSettingsQuietTimeStart
    ]

-- | Constructor for 'PinpointApplicationSettingsQuietTime' containing
-- required fields as arguments.
pinpointApplicationSettingsQuietTime
  :: Val Text -- ^ 'pasqtEnd'
  -> Val Text -- ^ 'pasqtStart'
  -> PinpointApplicationSettingsQuietTime
pinpointApplicationSettingsQuietTime endarg startarg =
  PinpointApplicationSettingsQuietTime
  { _pinpointApplicationSettingsQuietTimeEnd = endarg
  , _pinpointApplicationSettingsQuietTimeStart = startarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html#cfn-pinpoint-applicationsettings-quiettime-end
pasqtEnd :: Lens' PinpointApplicationSettingsQuietTime (Val Text)
pasqtEnd = lens _pinpointApplicationSettingsQuietTimeEnd (\s a -> s { _pinpointApplicationSettingsQuietTimeEnd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html#cfn-pinpoint-applicationsettings-quiettime-start
pasqtStart :: Lens' PinpointApplicationSettingsQuietTime (Val Text)
pasqtStart = lens _pinpointApplicationSettingsQuietTimeStart (\s a -> s { _pinpointApplicationSettingsQuietTimeStart = a })
