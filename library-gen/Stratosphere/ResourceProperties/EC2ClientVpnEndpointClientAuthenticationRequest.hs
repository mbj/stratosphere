{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html

module Stratosphere.ResourceProperties.EC2ClientVpnEndpointClientAuthenticationRequest where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2ClientVpnEndpointCertificateAuthenticationRequest
import Stratosphere.ResourceProperties.EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest
import Stratosphere.ResourceProperties.EC2ClientVpnEndpointFederatedAuthenticationRequest

-- | Full data type definition for
-- EC2ClientVpnEndpointClientAuthenticationRequest. See
-- 'ec2ClientVpnEndpointClientAuthenticationRequest' for a more convenient
-- constructor.
data EC2ClientVpnEndpointClientAuthenticationRequest =
  EC2ClientVpnEndpointClientAuthenticationRequest
  { _eC2ClientVpnEndpointClientAuthenticationRequestActiveDirectory :: Maybe EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest
  , _eC2ClientVpnEndpointClientAuthenticationRequestFederatedAuthentication :: Maybe EC2ClientVpnEndpointFederatedAuthenticationRequest
  , _eC2ClientVpnEndpointClientAuthenticationRequestMutualAuthentication :: Maybe EC2ClientVpnEndpointCertificateAuthenticationRequest
  , _eC2ClientVpnEndpointClientAuthenticationRequestType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2ClientVpnEndpointClientAuthenticationRequest where
  toJSON EC2ClientVpnEndpointClientAuthenticationRequest{..} =
    object $
    catMaybes
    [ fmap (("ActiveDirectory",) . toJSON) _eC2ClientVpnEndpointClientAuthenticationRequestActiveDirectory
    , fmap (("FederatedAuthentication",) . toJSON) _eC2ClientVpnEndpointClientAuthenticationRequestFederatedAuthentication
    , fmap (("MutualAuthentication",) . toJSON) _eC2ClientVpnEndpointClientAuthenticationRequestMutualAuthentication
    , (Just . ("Type",) . toJSON) _eC2ClientVpnEndpointClientAuthenticationRequestType
    ]

-- | Constructor for 'EC2ClientVpnEndpointClientAuthenticationRequest'
-- containing required fields as arguments.
ec2ClientVpnEndpointClientAuthenticationRequest
  :: Val Text -- ^ 'eccvecarType'
  -> EC2ClientVpnEndpointClientAuthenticationRequest
ec2ClientVpnEndpointClientAuthenticationRequest typearg =
  EC2ClientVpnEndpointClientAuthenticationRequest
  { _eC2ClientVpnEndpointClientAuthenticationRequestActiveDirectory = Nothing
  , _eC2ClientVpnEndpointClientAuthenticationRequestFederatedAuthentication = Nothing
  , _eC2ClientVpnEndpointClientAuthenticationRequestMutualAuthentication = Nothing
  , _eC2ClientVpnEndpointClientAuthenticationRequestType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-activedirectory
eccvecarActiveDirectory :: Lens' EC2ClientVpnEndpointClientAuthenticationRequest (Maybe EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest)
eccvecarActiveDirectory = lens _eC2ClientVpnEndpointClientAuthenticationRequestActiveDirectory (\s a -> s { _eC2ClientVpnEndpointClientAuthenticationRequestActiveDirectory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-federatedauthentication
eccvecarFederatedAuthentication :: Lens' EC2ClientVpnEndpointClientAuthenticationRequest (Maybe EC2ClientVpnEndpointFederatedAuthenticationRequest)
eccvecarFederatedAuthentication = lens _eC2ClientVpnEndpointClientAuthenticationRequestFederatedAuthentication (\s a -> s { _eC2ClientVpnEndpointClientAuthenticationRequestFederatedAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-mutualauthentication
eccvecarMutualAuthentication :: Lens' EC2ClientVpnEndpointClientAuthenticationRequest (Maybe EC2ClientVpnEndpointCertificateAuthenticationRequest)
eccvecarMutualAuthentication = lens _eC2ClientVpnEndpointClientAuthenticationRequestMutualAuthentication (\s a -> s { _eC2ClientVpnEndpointClientAuthenticationRequestMutualAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-type
eccvecarType :: Lens' EC2ClientVpnEndpointClientAuthenticationRequest (Val Text)
eccvecarType = lens _eC2ClientVpnEndpointClientAuthenticationRequestType (\s a -> s { _eC2ClientVpnEndpointClientAuthenticationRequestType = a })
