
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html

module Stratosphere.ResourceProperties.PinpointApplicationSettingsCampaignHook where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointApplicationSettingsCampaignHook.
-- See 'pinpointApplicationSettingsCampaignHook' for a more convenient
-- constructor.
data PinpointApplicationSettingsCampaignHook =
  PinpointApplicationSettingsCampaignHook
  { _pinpointApplicationSettingsCampaignHookLambdaFunctionName :: Maybe (Val Text)
  , _pinpointApplicationSettingsCampaignHookMode :: Maybe (Val Text)
  , _pinpointApplicationSettingsCampaignHookWebUrl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointApplicationSettingsCampaignHook where
  toJSON PinpointApplicationSettingsCampaignHook{..} =
    object $
    catMaybes
    [ fmap (("LambdaFunctionName",) . toJSON) _pinpointApplicationSettingsCampaignHookLambdaFunctionName
    , fmap (("Mode",) . toJSON) _pinpointApplicationSettingsCampaignHookMode
    , fmap (("WebUrl",) . toJSON) _pinpointApplicationSettingsCampaignHookWebUrl
    ]

-- | Constructor for 'PinpointApplicationSettingsCampaignHook' containing
-- required fields as arguments.
pinpointApplicationSettingsCampaignHook
  :: PinpointApplicationSettingsCampaignHook
pinpointApplicationSettingsCampaignHook  =
  PinpointApplicationSettingsCampaignHook
  { _pinpointApplicationSettingsCampaignHookLambdaFunctionName = Nothing
  , _pinpointApplicationSettingsCampaignHookMode = Nothing
  , _pinpointApplicationSettingsCampaignHookWebUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-lambdafunctionname
paschLambdaFunctionName :: Lens' PinpointApplicationSettingsCampaignHook (Maybe (Val Text))
paschLambdaFunctionName = lens _pinpointApplicationSettingsCampaignHookLambdaFunctionName (\s a -> s { _pinpointApplicationSettingsCampaignHookLambdaFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-mode
paschMode :: Lens' PinpointApplicationSettingsCampaignHook (Maybe (Val Text))
paschMode = lens _pinpointApplicationSettingsCampaignHookMode (\s a -> s { _pinpointApplicationSettingsCampaignHookMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-weburl
paschWebUrl :: Lens' PinpointApplicationSettingsCampaignHook (Maybe (Val Text))
paschWebUrl = lens _pinpointApplicationSettingsCampaignHookWebUrl (\s a -> s { _pinpointApplicationSettingsCampaignHookWebUrl = a })
