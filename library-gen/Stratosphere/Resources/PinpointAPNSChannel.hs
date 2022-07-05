{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html

module Stratosphere.Resources.PinpointAPNSChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointAPNSChannel. See
-- 'pinpointAPNSChannel' for a more convenient constructor.
data PinpointAPNSChannel =
  PinpointAPNSChannel
  { _pinpointAPNSChannelApplicationId :: Val Text
  , _pinpointAPNSChannelBundleId :: Maybe (Val Text)
  , _pinpointAPNSChannelCertificate :: Maybe (Val Text)
  , _pinpointAPNSChannelDefaultAuthenticationMethod :: Maybe (Val Text)
  , _pinpointAPNSChannelEnabled :: Maybe (Val Bool)
  , _pinpointAPNSChannelPrivateKey :: Maybe (Val Text)
  , _pinpointAPNSChannelTeamId :: Maybe (Val Text)
  , _pinpointAPNSChannelTokenKey :: Maybe (Val Text)
  , _pinpointAPNSChannelTokenKeyId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointAPNSChannel where
  toResourceProperties PinpointAPNSChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::APNSChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointAPNSChannelApplicationId
        , fmap (("BundleId",) . toJSON) _pinpointAPNSChannelBundleId
        , fmap (("Certificate",) . toJSON) _pinpointAPNSChannelCertificate
        , fmap (("DefaultAuthenticationMethod",) . toJSON) _pinpointAPNSChannelDefaultAuthenticationMethod
        , fmap (("Enabled",) . toJSON) _pinpointAPNSChannelEnabled
        , fmap (("PrivateKey",) . toJSON) _pinpointAPNSChannelPrivateKey
        , fmap (("TeamId",) . toJSON) _pinpointAPNSChannelTeamId
        , fmap (("TokenKey",) . toJSON) _pinpointAPNSChannelTokenKey
        , fmap (("TokenKeyId",) . toJSON) _pinpointAPNSChannelTokenKeyId
        ]
    }

-- | Constructor for 'PinpointAPNSChannel' containing required fields as
-- arguments.
pinpointAPNSChannel
  :: Val Text -- ^ 'papnscApplicationId'
  -> PinpointAPNSChannel
pinpointAPNSChannel applicationIdarg =
  PinpointAPNSChannel
  { _pinpointAPNSChannelApplicationId = applicationIdarg
  , _pinpointAPNSChannelBundleId = Nothing
  , _pinpointAPNSChannelCertificate = Nothing
  , _pinpointAPNSChannelDefaultAuthenticationMethod = Nothing
  , _pinpointAPNSChannelEnabled = Nothing
  , _pinpointAPNSChannelPrivateKey = Nothing
  , _pinpointAPNSChannelTeamId = Nothing
  , _pinpointAPNSChannelTokenKey = Nothing
  , _pinpointAPNSChannelTokenKeyId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-applicationid
papnscApplicationId :: Lens' PinpointAPNSChannel (Val Text)
papnscApplicationId = lens _pinpointAPNSChannelApplicationId (\s a -> s { _pinpointAPNSChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-bundleid
papnscBundleId :: Lens' PinpointAPNSChannel (Maybe (Val Text))
papnscBundleId = lens _pinpointAPNSChannelBundleId (\s a -> s { _pinpointAPNSChannelBundleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-certificate
papnscCertificate :: Lens' PinpointAPNSChannel (Maybe (Val Text))
papnscCertificate = lens _pinpointAPNSChannelCertificate (\s a -> s { _pinpointAPNSChannelCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-defaultauthenticationmethod
papnscDefaultAuthenticationMethod :: Lens' PinpointAPNSChannel (Maybe (Val Text))
papnscDefaultAuthenticationMethod = lens _pinpointAPNSChannelDefaultAuthenticationMethod (\s a -> s { _pinpointAPNSChannelDefaultAuthenticationMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-enabled
papnscEnabled :: Lens' PinpointAPNSChannel (Maybe (Val Bool))
papnscEnabled = lens _pinpointAPNSChannelEnabled (\s a -> s { _pinpointAPNSChannelEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-privatekey
papnscPrivateKey :: Lens' PinpointAPNSChannel (Maybe (Val Text))
papnscPrivateKey = lens _pinpointAPNSChannelPrivateKey (\s a -> s { _pinpointAPNSChannelPrivateKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-teamid
papnscTeamId :: Lens' PinpointAPNSChannel (Maybe (Val Text))
papnscTeamId = lens _pinpointAPNSChannelTeamId (\s a -> s { _pinpointAPNSChannelTeamId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-tokenkey
papnscTokenKey :: Lens' PinpointAPNSChannel (Maybe (Val Text))
papnscTokenKey = lens _pinpointAPNSChannelTokenKey (\s a -> s { _pinpointAPNSChannelTokenKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-tokenkeyid
papnscTokenKeyId :: Lens' PinpointAPNSChannel (Maybe (Val Text))
papnscTokenKeyId = lens _pinpointAPNSChannelTokenKeyId (\s a -> s { _pinpointAPNSChannelTokenKeyId = a })
