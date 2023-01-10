
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html

module Stratosphere.ResourceProperties.PinpointCampaignCampaignHook where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignCampaignHook. See
-- 'pinpointCampaignCampaignHook' for a more convenient constructor.
data PinpointCampaignCampaignHook =
  PinpointCampaignCampaignHook
  { _pinpointCampaignCampaignHookLambdaFunctionName :: Maybe (Val Text)
  , _pinpointCampaignCampaignHookMode :: Maybe (Val Text)
  , _pinpointCampaignCampaignHookWebUrl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignCampaignHook where
  toJSON PinpointCampaignCampaignHook{..} =
    object $
    catMaybes
    [ fmap (("LambdaFunctionName",) . toJSON) _pinpointCampaignCampaignHookLambdaFunctionName
    , fmap (("Mode",) . toJSON) _pinpointCampaignCampaignHookMode
    , fmap (("WebUrl",) . toJSON) _pinpointCampaignCampaignHookWebUrl
    ]

-- | Constructor for 'PinpointCampaignCampaignHook' containing required fields
-- as arguments.
pinpointCampaignCampaignHook
  :: PinpointCampaignCampaignHook
pinpointCampaignCampaignHook  =
  PinpointCampaignCampaignHook
  { _pinpointCampaignCampaignHookLambdaFunctionName = Nothing
  , _pinpointCampaignCampaignHookMode = Nothing
  , _pinpointCampaignCampaignHookWebUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-lambdafunctionname
pcchLambdaFunctionName :: Lens' PinpointCampaignCampaignHook (Maybe (Val Text))
pcchLambdaFunctionName = lens _pinpointCampaignCampaignHookLambdaFunctionName (\s a -> s { _pinpointCampaignCampaignHookLambdaFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-mode
pcchMode :: Lens' PinpointCampaignCampaignHook (Maybe (Val Text))
pcchMode = lens _pinpointCampaignCampaignHookMode (\s a -> s { _pinpointCampaignCampaignHookMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-weburl
pcchWebUrl :: Lens' PinpointCampaignCampaignHook (Maybe (Val Text))
pcchWebUrl = lens _pinpointCampaignCampaignHookWebUrl (\s a -> s { _pinpointCampaignCampaignHookWebUrl = a })
