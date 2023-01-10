
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-sendingoptions.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetSendingOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointEmailConfigurationSetSendingOptions. See
-- 'pinpointEmailConfigurationSetSendingOptions' for a more convenient
-- constructor.
data PinpointEmailConfigurationSetSendingOptions =
  PinpointEmailConfigurationSetSendingOptions
  { _pinpointEmailConfigurationSetSendingOptionsSendingEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetSendingOptions where
  toJSON PinpointEmailConfigurationSetSendingOptions{..} =
    object $
    catMaybes
    [ fmap (("SendingEnabled",) . toJSON) _pinpointEmailConfigurationSetSendingOptionsSendingEnabled
    ]

-- | Constructor for 'PinpointEmailConfigurationSetSendingOptions' containing
-- required fields as arguments.
pinpointEmailConfigurationSetSendingOptions
  :: PinpointEmailConfigurationSetSendingOptions
pinpointEmailConfigurationSetSendingOptions  =
  PinpointEmailConfigurationSetSendingOptions
  { _pinpointEmailConfigurationSetSendingOptionsSendingEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-sendingoptions.html#cfn-pinpointemail-configurationset-sendingoptions-sendingenabled
pecssoSendingEnabled :: Lens' PinpointEmailConfigurationSetSendingOptions (Maybe (Val Bool))
pecssoSendingEnabled = lens _pinpointEmailConfigurationSetSendingOptionsSendingEnabled (\s a -> s { _pinpointEmailConfigurationSetSendingOptionsSendingEnabled = a })
