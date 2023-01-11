
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-deliveryoptions.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetDeliveryOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointEmailConfigurationSetDeliveryOptions. See
-- 'pinpointEmailConfigurationSetDeliveryOptions' for a more convenient
-- constructor.
data PinpointEmailConfigurationSetDeliveryOptions =
  PinpointEmailConfigurationSetDeliveryOptions
  { _pinpointEmailConfigurationSetDeliveryOptionsSendingPoolName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetDeliveryOptions where
  toJSON PinpointEmailConfigurationSetDeliveryOptions{..} =
    object $
    catMaybes
    [ fmap (("SendingPoolName",) . toJSON) _pinpointEmailConfigurationSetDeliveryOptionsSendingPoolName
    ]

-- | Constructor for 'PinpointEmailConfigurationSetDeliveryOptions' containing
-- required fields as arguments.
pinpointEmailConfigurationSetDeliveryOptions
  :: PinpointEmailConfigurationSetDeliveryOptions
pinpointEmailConfigurationSetDeliveryOptions  =
  PinpointEmailConfigurationSetDeliveryOptions
  { _pinpointEmailConfigurationSetDeliveryOptionsSendingPoolName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-deliveryoptions.html#cfn-pinpointemail-configurationset-deliveryoptions-sendingpoolname
pecsdoSendingPoolName :: Lens' PinpointEmailConfigurationSetDeliveryOptions (Maybe (Val Text))
pecsdoSendingPoolName = lens _pinpointEmailConfigurationSetDeliveryOptionsSendingPoolName (\s a -> s { _pinpointEmailConfigurationSetDeliveryOptionsSendingPoolName = a })
