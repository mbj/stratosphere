{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html

module Stratosphere.Resources.PinpointAPNSVoipChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointAPNSVoipChannel. See
-- 'pinpointAPNSVoipChannel' for a more convenient constructor.
data PinpointAPNSVoipChannel =
  PinpointAPNSVoipChannel
  { _pinpointAPNSVoipChannelApplicationId :: Val Text
  , _pinpointAPNSVoipChannelBundleId :: Maybe (Val Text)
  , _pinpointAPNSVoipChannelCertificate :: Maybe (Val Text)
  , _pinpointAPNSVoipChannelDefaultAuthenticationMethod :: Maybe (Val Text)
  , _pinpointAPNSVoipChannelEnabled :: Maybe (Val Bool)
  , _pinpointAPNSVoipChannelPrivateKey :: Maybe (Val Text)
  , _pinpointAPNSVoipChannelTeamId :: Maybe (Val Text)
  , _pinpointAPNSVoipChannelTokenKey :: Maybe (Val Text)
  , _pinpointAPNSVoipChannelTokenKeyId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointAPNSVoipChannel where
  toResourceProperties PinpointAPNSVoipChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::APNSVoipChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointAPNSVoipChannelApplicationId
        , fmap (("BundleId",) . toJSON) _pinpointAPNSVoipChannelBundleId
        , fmap (("Certificate",) . toJSON) _pinpointAPNSVoipChannelCertificate
        , fmap (("DefaultAuthenticationMethod",) . toJSON) _pinpointAPNSVoipChannelDefaultAuthenticationMethod
        , fmap (("Enabled",) . toJSON) _pinpointAPNSVoipChannelEnabled
        , fmap (("PrivateKey",) . toJSON) _pinpointAPNSVoipChannelPrivateKey
        , fmap (("TeamId",) . toJSON) _pinpointAPNSVoipChannelTeamId
        , fmap (("TokenKey",) . toJSON) _pinpointAPNSVoipChannelTokenKey
        , fmap (("TokenKeyId",) . toJSON) _pinpointAPNSVoipChannelTokenKeyId
        ]
    }

-- | Constructor for 'PinpointAPNSVoipChannel' containing required fields as
-- arguments.
pinpointAPNSVoipChannel
  :: Val Text -- ^ 'papnsvcApplicationId'
  -> PinpointAPNSVoipChannel
pinpointAPNSVoipChannel applicationIdarg =
  PinpointAPNSVoipChannel
  { _pinpointAPNSVoipChannelApplicationId = applicationIdarg
  , _pinpointAPNSVoipChannelBundleId = Nothing
  , _pinpointAPNSVoipChannelCertificate = Nothing
  , _pinpointAPNSVoipChannelDefaultAuthenticationMethod = Nothing
  , _pinpointAPNSVoipChannelEnabled = Nothing
  , _pinpointAPNSVoipChannelPrivateKey = Nothing
  , _pinpointAPNSVoipChannelTeamId = Nothing
  , _pinpointAPNSVoipChannelTokenKey = Nothing
  , _pinpointAPNSVoipChannelTokenKeyId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-applicationid
papnsvcApplicationId :: Lens' PinpointAPNSVoipChannel (Val Text)
papnsvcApplicationId = lens _pinpointAPNSVoipChannelApplicationId (\s a -> s { _pinpointAPNSVoipChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-bundleid
papnsvcBundleId :: Lens' PinpointAPNSVoipChannel (Maybe (Val Text))
papnsvcBundleId = lens _pinpointAPNSVoipChannelBundleId (\s a -> s { _pinpointAPNSVoipChannelBundleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-certificate
papnsvcCertificate :: Lens' PinpointAPNSVoipChannel (Maybe (Val Text))
papnsvcCertificate = lens _pinpointAPNSVoipChannelCertificate (\s a -> s { _pinpointAPNSVoipChannelCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-defaultauthenticationmethod
papnsvcDefaultAuthenticationMethod :: Lens' PinpointAPNSVoipChannel (Maybe (Val Text))
papnsvcDefaultAuthenticationMethod = lens _pinpointAPNSVoipChannelDefaultAuthenticationMethod (\s a -> s { _pinpointAPNSVoipChannelDefaultAuthenticationMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-enabled
papnsvcEnabled :: Lens' PinpointAPNSVoipChannel (Maybe (Val Bool))
papnsvcEnabled = lens _pinpointAPNSVoipChannelEnabled (\s a -> s { _pinpointAPNSVoipChannelEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-privatekey
papnsvcPrivateKey :: Lens' PinpointAPNSVoipChannel (Maybe (Val Text))
papnsvcPrivateKey = lens _pinpointAPNSVoipChannelPrivateKey (\s a -> s { _pinpointAPNSVoipChannelPrivateKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-teamid
papnsvcTeamId :: Lens' PinpointAPNSVoipChannel (Maybe (Val Text))
papnsvcTeamId = lens _pinpointAPNSVoipChannelTeamId (\s a -> s { _pinpointAPNSVoipChannelTeamId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-tokenkey
papnsvcTokenKey :: Lens' PinpointAPNSVoipChannel (Maybe (Val Text))
papnsvcTokenKey = lens _pinpointAPNSVoipChannelTokenKey (\s a -> s { _pinpointAPNSVoipChannelTokenKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-tokenkeyid
papnsvcTokenKeyId :: Lens' PinpointAPNSVoipChannel (Maybe (Val Text))
papnsvcTokenKeyId = lens _pinpointAPNSVoipChannelTokenKeyId (\s a -> s { _pinpointAPNSVoipChannelTokenKeyId = a })
