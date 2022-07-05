{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html

module Stratosphere.Resources.PinpointApplicationSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointApplicationSettingsCampaignHook
import Stratosphere.ResourceProperties.PinpointApplicationSettingsLimits
import Stratosphere.ResourceProperties.PinpointApplicationSettingsQuietTime

-- | Full data type definition for PinpointApplicationSettings. See
-- 'pinpointApplicationSettings' for a more convenient constructor.
data PinpointApplicationSettings =
  PinpointApplicationSettings
  { _pinpointApplicationSettingsApplicationId :: Val Text
  , _pinpointApplicationSettingsCampaignHook :: Maybe PinpointApplicationSettingsCampaignHook
  , _pinpointApplicationSettingsCloudWatchMetricsEnabled :: Maybe (Val Bool)
  , _pinpointApplicationSettingsLimits :: Maybe PinpointApplicationSettingsLimits
  , _pinpointApplicationSettingsQuietTime :: Maybe PinpointApplicationSettingsQuietTime
  } deriving (Show, Eq)

instance ToResourceProperties PinpointApplicationSettings where
  toResourceProperties PinpointApplicationSettings{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::ApplicationSettings"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointApplicationSettingsApplicationId
        , fmap (("CampaignHook",) . toJSON) _pinpointApplicationSettingsCampaignHook
        , fmap (("CloudWatchMetricsEnabled",) . toJSON) _pinpointApplicationSettingsCloudWatchMetricsEnabled
        , fmap (("Limits",) . toJSON) _pinpointApplicationSettingsLimits
        , fmap (("QuietTime",) . toJSON) _pinpointApplicationSettingsQuietTime
        ]
    }

-- | Constructor for 'PinpointApplicationSettings' containing required fields
-- as arguments.
pinpointApplicationSettings
  :: Val Text -- ^ 'pasApplicationId'
  -> PinpointApplicationSettings
pinpointApplicationSettings applicationIdarg =
  PinpointApplicationSettings
  { _pinpointApplicationSettingsApplicationId = applicationIdarg
  , _pinpointApplicationSettingsCampaignHook = Nothing
  , _pinpointApplicationSettingsCloudWatchMetricsEnabled = Nothing
  , _pinpointApplicationSettingsLimits = Nothing
  , _pinpointApplicationSettingsQuietTime = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-applicationid
pasApplicationId :: Lens' PinpointApplicationSettings (Val Text)
pasApplicationId = lens _pinpointApplicationSettingsApplicationId (\s a -> s { _pinpointApplicationSettingsApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-campaignhook
pasCampaignHook :: Lens' PinpointApplicationSettings (Maybe PinpointApplicationSettingsCampaignHook)
pasCampaignHook = lens _pinpointApplicationSettingsCampaignHook (\s a -> s { _pinpointApplicationSettingsCampaignHook = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-cloudwatchmetricsenabled
pasCloudWatchMetricsEnabled :: Lens' PinpointApplicationSettings (Maybe (Val Bool))
pasCloudWatchMetricsEnabled = lens _pinpointApplicationSettingsCloudWatchMetricsEnabled (\s a -> s { _pinpointApplicationSettingsCloudWatchMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-limits
pasLimits :: Lens' PinpointApplicationSettings (Maybe PinpointApplicationSettingsLimits)
pasLimits = lens _pinpointApplicationSettingsLimits (\s a -> s { _pinpointApplicationSettingsLimits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-quiettime
pasQuietTime :: Lens' PinpointApplicationSettings (Maybe PinpointApplicationSettingsQuietTime)
pasQuietTime = lens _pinpointApplicationSettingsQuietTime (\s a -> s { _pinpointApplicationSettingsQuietTime = a })
