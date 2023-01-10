
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html

module Stratosphere.ResourceProperties.PinpointApplicationSettingsLimits where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointApplicationSettingsLimits. See
-- 'pinpointApplicationSettingsLimits' for a more convenient constructor.
data PinpointApplicationSettingsLimits =
  PinpointApplicationSettingsLimits
  { _pinpointApplicationSettingsLimitsDaily :: Maybe (Val Integer)
  , _pinpointApplicationSettingsLimitsMaximumDuration :: Maybe (Val Integer)
  , _pinpointApplicationSettingsLimitsMessagesPerSecond :: Maybe (Val Integer)
  , _pinpointApplicationSettingsLimitsTotal :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON PinpointApplicationSettingsLimits where
  toJSON PinpointApplicationSettingsLimits{..} =
    object $
    catMaybes
    [ fmap (("Daily",) . toJSON) _pinpointApplicationSettingsLimitsDaily
    , fmap (("MaximumDuration",) . toJSON) _pinpointApplicationSettingsLimitsMaximumDuration
    , fmap (("MessagesPerSecond",) . toJSON) _pinpointApplicationSettingsLimitsMessagesPerSecond
    , fmap (("Total",) . toJSON) _pinpointApplicationSettingsLimitsTotal
    ]

-- | Constructor for 'PinpointApplicationSettingsLimits' containing required
-- fields as arguments.
pinpointApplicationSettingsLimits
  :: PinpointApplicationSettingsLimits
pinpointApplicationSettingsLimits  =
  PinpointApplicationSettingsLimits
  { _pinpointApplicationSettingsLimitsDaily = Nothing
  , _pinpointApplicationSettingsLimitsMaximumDuration = Nothing
  , _pinpointApplicationSettingsLimitsMessagesPerSecond = Nothing
  , _pinpointApplicationSettingsLimitsTotal = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-daily
paslDaily :: Lens' PinpointApplicationSettingsLimits (Maybe (Val Integer))
paslDaily = lens _pinpointApplicationSettingsLimitsDaily (\s a -> s { _pinpointApplicationSettingsLimitsDaily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-maximumduration
paslMaximumDuration :: Lens' PinpointApplicationSettingsLimits (Maybe (Val Integer))
paslMaximumDuration = lens _pinpointApplicationSettingsLimitsMaximumDuration (\s a -> s { _pinpointApplicationSettingsLimitsMaximumDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-messagespersecond
paslMessagesPerSecond :: Lens' PinpointApplicationSettingsLimits (Maybe (Val Integer))
paslMessagesPerSecond = lens _pinpointApplicationSettingsLimitsMessagesPerSecond (\s a -> s { _pinpointApplicationSettingsLimitsMessagesPerSecond = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-total
paslTotal :: Lens' PinpointApplicationSettingsLimits (Maybe (Val Integer))
paslTotal = lens _pinpointApplicationSettingsLimitsTotal (\s a -> s { _pinpointApplicationSettingsLimitsTotal = a })
