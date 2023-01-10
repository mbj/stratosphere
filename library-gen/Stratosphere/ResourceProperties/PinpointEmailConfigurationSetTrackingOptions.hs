
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetTrackingOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointEmailConfigurationSetTrackingOptions. See
-- 'pinpointEmailConfigurationSetTrackingOptions' for a more convenient
-- constructor.
data PinpointEmailConfigurationSetTrackingOptions =
  PinpointEmailConfigurationSetTrackingOptions
  { _pinpointEmailConfigurationSetTrackingOptionsCustomRedirectDomain :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetTrackingOptions where
  toJSON PinpointEmailConfigurationSetTrackingOptions{..} =
    object $
    catMaybes
    [ fmap (("CustomRedirectDomain",) . toJSON) _pinpointEmailConfigurationSetTrackingOptionsCustomRedirectDomain
    ]

-- | Constructor for 'PinpointEmailConfigurationSetTrackingOptions' containing
-- required fields as arguments.
pinpointEmailConfigurationSetTrackingOptions
  :: PinpointEmailConfigurationSetTrackingOptions
pinpointEmailConfigurationSetTrackingOptions  =
  PinpointEmailConfigurationSetTrackingOptions
  { _pinpointEmailConfigurationSetTrackingOptionsCustomRedirectDomain = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html#cfn-pinpointemail-configurationset-trackingoptions-customredirectdomain
pecstoCustomRedirectDomain :: Lens' PinpointEmailConfigurationSetTrackingOptions (Maybe (Val Text))
pecstoCustomRedirectDomain = lens _pinpointEmailConfigurationSetTrackingOptionsCustomRedirectDomain (\s a -> s { _pinpointEmailConfigurationSetTrackingOptionsCustomRedirectDomain = a })
