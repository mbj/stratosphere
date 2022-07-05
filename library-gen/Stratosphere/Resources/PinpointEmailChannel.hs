{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html

module Stratosphere.Resources.PinpointEmailChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointEmailChannel. See
-- 'pinpointEmailChannel' for a more convenient constructor.
data PinpointEmailChannel =
  PinpointEmailChannel
  { _pinpointEmailChannelApplicationId :: Val Text
  , _pinpointEmailChannelConfigurationSet :: Maybe (Val Text)
  , _pinpointEmailChannelEnabled :: Maybe (Val Bool)
  , _pinpointEmailChannelFromAddress :: Val Text
  , _pinpointEmailChannelIdentity :: Val Text
  , _pinpointEmailChannelRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointEmailChannel where
  toResourceProperties PinpointEmailChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::EmailChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointEmailChannelApplicationId
        , fmap (("ConfigurationSet",) . toJSON) _pinpointEmailChannelConfigurationSet
        , fmap (("Enabled",) . toJSON) _pinpointEmailChannelEnabled
        , (Just . ("FromAddress",) . toJSON) _pinpointEmailChannelFromAddress
        , (Just . ("Identity",) . toJSON) _pinpointEmailChannelIdentity
        , fmap (("RoleArn",) . toJSON) _pinpointEmailChannelRoleArn
        ]
    }

-- | Constructor for 'PinpointEmailChannel' containing required fields as
-- arguments.
pinpointEmailChannel
  :: Val Text -- ^ 'pecApplicationId'
  -> Val Text -- ^ 'pecFromAddress'
  -> Val Text -- ^ 'pecIdentity'
  -> PinpointEmailChannel
pinpointEmailChannel applicationIdarg fromAddressarg identityarg =
  PinpointEmailChannel
  { _pinpointEmailChannelApplicationId = applicationIdarg
  , _pinpointEmailChannelConfigurationSet = Nothing
  , _pinpointEmailChannelEnabled = Nothing
  , _pinpointEmailChannelFromAddress = fromAddressarg
  , _pinpointEmailChannelIdentity = identityarg
  , _pinpointEmailChannelRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-applicationid
pecApplicationId :: Lens' PinpointEmailChannel (Val Text)
pecApplicationId = lens _pinpointEmailChannelApplicationId (\s a -> s { _pinpointEmailChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-configurationset
pecConfigurationSet :: Lens' PinpointEmailChannel (Maybe (Val Text))
pecConfigurationSet = lens _pinpointEmailChannelConfigurationSet (\s a -> s { _pinpointEmailChannelConfigurationSet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-enabled
pecEnabled :: Lens' PinpointEmailChannel (Maybe (Val Bool))
pecEnabled = lens _pinpointEmailChannelEnabled (\s a -> s { _pinpointEmailChannelEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-fromaddress
pecFromAddress :: Lens' PinpointEmailChannel (Val Text)
pecFromAddress = lens _pinpointEmailChannelFromAddress (\s a -> s { _pinpointEmailChannelFromAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-identity
pecIdentity :: Lens' PinpointEmailChannel (Val Text)
pecIdentity = lens _pinpointEmailChannelIdentity (\s a -> s { _pinpointEmailChannelIdentity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-rolearn
pecRoleArn :: Lens' PinpointEmailChannel (Maybe (Val Text))
pecRoleArn = lens _pinpointEmailChannelRoleArn (\s a -> s { _pinpointEmailChannelRoleArn = a })
