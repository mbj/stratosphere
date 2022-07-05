{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html

module Stratosphere.Resources.PinpointADMChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointADMChannel. See
-- 'pinpointADMChannel' for a more convenient constructor.
data PinpointADMChannel =
  PinpointADMChannel
  { _pinpointADMChannelApplicationId :: Val Text
  , _pinpointADMChannelClientId :: Val Text
  , _pinpointADMChannelClientSecret :: Val Text
  , _pinpointADMChannelEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointADMChannel where
  toResourceProperties PinpointADMChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::ADMChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointADMChannelApplicationId
        , (Just . ("ClientId",) . toJSON) _pinpointADMChannelClientId
        , (Just . ("ClientSecret",) . toJSON) _pinpointADMChannelClientSecret
        , fmap (("Enabled",) . toJSON) _pinpointADMChannelEnabled
        ]
    }

-- | Constructor for 'PinpointADMChannel' containing required fields as
-- arguments.
pinpointADMChannel
  :: Val Text -- ^ 'padmcApplicationId'
  -> Val Text -- ^ 'padmcClientId'
  -> Val Text -- ^ 'padmcClientSecret'
  -> PinpointADMChannel
pinpointADMChannel applicationIdarg clientIdarg clientSecretarg =
  PinpointADMChannel
  { _pinpointADMChannelApplicationId = applicationIdarg
  , _pinpointADMChannelClientId = clientIdarg
  , _pinpointADMChannelClientSecret = clientSecretarg
  , _pinpointADMChannelEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-applicationid
padmcApplicationId :: Lens' PinpointADMChannel (Val Text)
padmcApplicationId = lens _pinpointADMChannelApplicationId (\s a -> s { _pinpointADMChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-clientid
padmcClientId :: Lens' PinpointADMChannel (Val Text)
padmcClientId = lens _pinpointADMChannelClientId (\s a -> s { _pinpointADMChannelClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-clientsecret
padmcClientSecret :: Lens' PinpointADMChannel (Val Text)
padmcClientSecret = lens _pinpointADMChannelClientSecret (\s a -> s { _pinpointADMChannelClientSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-enabled
padmcEnabled :: Lens' PinpointADMChannel (Maybe (Val Bool))
padmcEnabled = lens _pinpointADMChannelEnabled (\s a -> s { _pinpointADMChannelEnabled = a })
