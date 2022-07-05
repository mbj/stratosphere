{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html

module Stratosphere.Resources.PinpointAPNSSandboxChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointAPNSSandboxChannel. See
-- 'pinpointAPNSSandboxChannel' for a more convenient constructor.
data PinpointAPNSSandboxChannel =
  PinpointAPNSSandboxChannel
  { _pinpointAPNSSandboxChannelApplicationId :: Val Text
  , _pinpointAPNSSandboxChannelBundleId :: Maybe (Val Text)
  , _pinpointAPNSSandboxChannelCertificate :: Maybe (Val Text)
  , _pinpointAPNSSandboxChannelDefaultAuthenticationMethod :: Maybe (Val Text)
  , _pinpointAPNSSandboxChannelEnabled :: Maybe (Val Bool)
  , _pinpointAPNSSandboxChannelPrivateKey :: Maybe (Val Text)
  , _pinpointAPNSSandboxChannelTeamId :: Maybe (Val Text)
  , _pinpointAPNSSandboxChannelTokenKey :: Maybe (Val Text)
  , _pinpointAPNSSandboxChannelTokenKeyId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointAPNSSandboxChannel where
  toResourceProperties PinpointAPNSSandboxChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::APNSSandboxChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointAPNSSandboxChannelApplicationId
        , fmap (("BundleId",) . toJSON) _pinpointAPNSSandboxChannelBundleId
        , fmap (("Certificate",) . toJSON) _pinpointAPNSSandboxChannelCertificate
        , fmap (("DefaultAuthenticationMethod",) . toJSON) _pinpointAPNSSandboxChannelDefaultAuthenticationMethod
        , fmap (("Enabled",) . toJSON) _pinpointAPNSSandboxChannelEnabled
        , fmap (("PrivateKey",) . toJSON) _pinpointAPNSSandboxChannelPrivateKey
        , fmap (("TeamId",) . toJSON) _pinpointAPNSSandboxChannelTeamId
        , fmap (("TokenKey",) . toJSON) _pinpointAPNSSandboxChannelTokenKey
        , fmap (("TokenKeyId",) . toJSON) _pinpointAPNSSandboxChannelTokenKeyId
        ]
    }

-- | Constructor for 'PinpointAPNSSandboxChannel' containing required fields
-- as arguments.
pinpointAPNSSandboxChannel
  :: Val Text -- ^ 'papnsscApplicationId'
  -> PinpointAPNSSandboxChannel
pinpointAPNSSandboxChannel applicationIdarg =
  PinpointAPNSSandboxChannel
  { _pinpointAPNSSandboxChannelApplicationId = applicationIdarg
  , _pinpointAPNSSandboxChannelBundleId = Nothing
  , _pinpointAPNSSandboxChannelCertificate = Nothing
  , _pinpointAPNSSandboxChannelDefaultAuthenticationMethod = Nothing
  , _pinpointAPNSSandboxChannelEnabled = Nothing
  , _pinpointAPNSSandboxChannelPrivateKey = Nothing
  , _pinpointAPNSSandboxChannelTeamId = Nothing
  , _pinpointAPNSSandboxChannelTokenKey = Nothing
  , _pinpointAPNSSandboxChannelTokenKeyId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-applicationid
papnsscApplicationId :: Lens' PinpointAPNSSandboxChannel (Val Text)
papnsscApplicationId = lens _pinpointAPNSSandboxChannelApplicationId (\s a -> s { _pinpointAPNSSandboxChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-bundleid
papnsscBundleId :: Lens' PinpointAPNSSandboxChannel (Maybe (Val Text))
papnsscBundleId = lens _pinpointAPNSSandboxChannelBundleId (\s a -> s { _pinpointAPNSSandboxChannelBundleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-certificate
papnsscCertificate :: Lens' PinpointAPNSSandboxChannel (Maybe (Val Text))
papnsscCertificate = lens _pinpointAPNSSandboxChannelCertificate (\s a -> s { _pinpointAPNSSandboxChannelCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-defaultauthenticationmethod
papnsscDefaultAuthenticationMethod :: Lens' PinpointAPNSSandboxChannel (Maybe (Val Text))
papnsscDefaultAuthenticationMethod = lens _pinpointAPNSSandboxChannelDefaultAuthenticationMethod (\s a -> s { _pinpointAPNSSandboxChannelDefaultAuthenticationMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-enabled
papnsscEnabled :: Lens' PinpointAPNSSandboxChannel (Maybe (Val Bool))
papnsscEnabled = lens _pinpointAPNSSandboxChannelEnabled (\s a -> s { _pinpointAPNSSandboxChannelEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-privatekey
papnsscPrivateKey :: Lens' PinpointAPNSSandboxChannel (Maybe (Val Text))
papnsscPrivateKey = lens _pinpointAPNSSandboxChannelPrivateKey (\s a -> s { _pinpointAPNSSandboxChannelPrivateKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-teamid
papnsscTeamId :: Lens' PinpointAPNSSandboxChannel (Maybe (Val Text))
papnsscTeamId = lens _pinpointAPNSSandboxChannelTeamId (\s a -> s { _pinpointAPNSSandboxChannelTeamId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-tokenkey
papnsscTokenKey :: Lens' PinpointAPNSSandboxChannel (Maybe (Val Text))
papnsscTokenKey = lens _pinpointAPNSSandboxChannelTokenKey (\s a -> s { _pinpointAPNSSandboxChannelTokenKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-tokenkeyid
papnsscTokenKeyId :: Lens' PinpointAPNSSandboxChannel (Maybe (Val Text))
papnsscTokenKeyId = lens _pinpointAPNSSandboxChannelTokenKeyId (\s a -> s { _pinpointAPNSSandboxChannelTokenKeyId = a })
