{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html

module Stratosphere.Resources.PinpointAPNSVoipSandboxChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointAPNSVoipSandboxChannel. See
-- 'pinpointAPNSVoipSandboxChannel' for a more convenient constructor.
data PinpointAPNSVoipSandboxChannel =
  PinpointAPNSVoipSandboxChannel
  { _pinpointAPNSVoipSandboxChannelApplicationId :: Val Text
  , _pinpointAPNSVoipSandboxChannelBundleId :: Maybe (Val Text)
  , _pinpointAPNSVoipSandboxChannelCertificate :: Maybe (Val Text)
  , _pinpointAPNSVoipSandboxChannelDefaultAuthenticationMethod :: Maybe (Val Text)
  , _pinpointAPNSVoipSandboxChannelEnabled :: Maybe (Val Bool)
  , _pinpointAPNSVoipSandboxChannelPrivateKey :: Maybe (Val Text)
  , _pinpointAPNSVoipSandboxChannelTeamId :: Maybe (Val Text)
  , _pinpointAPNSVoipSandboxChannelTokenKey :: Maybe (Val Text)
  , _pinpointAPNSVoipSandboxChannelTokenKeyId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointAPNSVoipSandboxChannel where
  toResourceProperties PinpointAPNSVoipSandboxChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::APNSVoipSandboxChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointAPNSVoipSandboxChannelApplicationId
        , fmap (("BundleId",) . toJSON) _pinpointAPNSVoipSandboxChannelBundleId
        , fmap (("Certificate",) . toJSON) _pinpointAPNSVoipSandboxChannelCertificate
        , fmap (("DefaultAuthenticationMethod",) . toJSON) _pinpointAPNSVoipSandboxChannelDefaultAuthenticationMethod
        , fmap (("Enabled",) . toJSON) _pinpointAPNSVoipSandboxChannelEnabled
        , fmap (("PrivateKey",) . toJSON) _pinpointAPNSVoipSandboxChannelPrivateKey
        , fmap (("TeamId",) . toJSON) _pinpointAPNSVoipSandboxChannelTeamId
        , fmap (("TokenKey",) . toJSON) _pinpointAPNSVoipSandboxChannelTokenKey
        , fmap (("TokenKeyId",) . toJSON) _pinpointAPNSVoipSandboxChannelTokenKeyId
        ]
    }

-- | Constructor for 'PinpointAPNSVoipSandboxChannel' containing required
-- fields as arguments.
pinpointAPNSVoipSandboxChannel
  :: Val Text -- ^ 'papnsvscApplicationId'
  -> PinpointAPNSVoipSandboxChannel
pinpointAPNSVoipSandboxChannel applicationIdarg =
  PinpointAPNSVoipSandboxChannel
  { _pinpointAPNSVoipSandboxChannelApplicationId = applicationIdarg
  , _pinpointAPNSVoipSandboxChannelBundleId = Nothing
  , _pinpointAPNSVoipSandboxChannelCertificate = Nothing
  , _pinpointAPNSVoipSandboxChannelDefaultAuthenticationMethod = Nothing
  , _pinpointAPNSVoipSandboxChannelEnabled = Nothing
  , _pinpointAPNSVoipSandboxChannelPrivateKey = Nothing
  , _pinpointAPNSVoipSandboxChannelTeamId = Nothing
  , _pinpointAPNSVoipSandboxChannelTokenKey = Nothing
  , _pinpointAPNSVoipSandboxChannelTokenKeyId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-applicationid
papnsvscApplicationId :: Lens' PinpointAPNSVoipSandboxChannel (Val Text)
papnsvscApplicationId = lens _pinpointAPNSVoipSandboxChannelApplicationId (\s a -> s { _pinpointAPNSVoipSandboxChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-bundleid
papnsvscBundleId :: Lens' PinpointAPNSVoipSandboxChannel (Maybe (Val Text))
papnsvscBundleId = lens _pinpointAPNSVoipSandboxChannelBundleId (\s a -> s { _pinpointAPNSVoipSandboxChannelBundleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-certificate
papnsvscCertificate :: Lens' PinpointAPNSVoipSandboxChannel (Maybe (Val Text))
papnsvscCertificate = lens _pinpointAPNSVoipSandboxChannelCertificate (\s a -> s { _pinpointAPNSVoipSandboxChannelCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-defaultauthenticationmethod
papnsvscDefaultAuthenticationMethod :: Lens' PinpointAPNSVoipSandboxChannel (Maybe (Val Text))
papnsvscDefaultAuthenticationMethod = lens _pinpointAPNSVoipSandboxChannelDefaultAuthenticationMethod (\s a -> s { _pinpointAPNSVoipSandboxChannelDefaultAuthenticationMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-enabled
papnsvscEnabled :: Lens' PinpointAPNSVoipSandboxChannel (Maybe (Val Bool))
papnsvscEnabled = lens _pinpointAPNSVoipSandboxChannelEnabled (\s a -> s { _pinpointAPNSVoipSandboxChannelEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-privatekey
papnsvscPrivateKey :: Lens' PinpointAPNSVoipSandboxChannel (Maybe (Val Text))
papnsvscPrivateKey = lens _pinpointAPNSVoipSandboxChannelPrivateKey (\s a -> s { _pinpointAPNSVoipSandboxChannelPrivateKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-teamid
papnsvscTeamId :: Lens' PinpointAPNSVoipSandboxChannel (Maybe (Val Text))
papnsvscTeamId = lens _pinpointAPNSVoipSandboxChannelTeamId (\s a -> s { _pinpointAPNSVoipSandboxChannelTeamId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-tokenkey
papnsvscTokenKey :: Lens' PinpointAPNSVoipSandboxChannel (Maybe (Val Text))
papnsvscTokenKey = lens _pinpointAPNSVoipSandboxChannelTokenKey (\s a -> s { _pinpointAPNSVoipSandboxChannelTokenKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-tokenkeyid
papnsvscTokenKeyId :: Lens' PinpointAPNSVoipSandboxChannel (Maybe (Val Text))
papnsvscTokenKeyId = lens _pinpointAPNSVoipSandboxChannelTokenKeyId (\s a -> s { _pinpointAPNSVoipSandboxChannelTokenKeyId = a })
