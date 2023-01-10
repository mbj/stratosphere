
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-federatedauthenticationrequest.html

module Stratosphere.ResourceProperties.EC2ClientVpnEndpointFederatedAuthenticationRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2ClientVpnEndpointFederatedAuthenticationRequest. See
-- 'ec2ClientVpnEndpointFederatedAuthenticationRequest' for a more
-- convenient constructor.
data EC2ClientVpnEndpointFederatedAuthenticationRequest =
  EC2ClientVpnEndpointFederatedAuthenticationRequest
  { _eC2ClientVpnEndpointFederatedAuthenticationRequestSAMLProviderArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2ClientVpnEndpointFederatedAuthenticationRequest where
  toJSON EC2ClientVpnEndpointFederatedAuthenticationRequest{..} =
    object $
    catMaybes
    [ (Just . ("SAMLProviderArn",) . toJSON) _eC2ClientVpnEndpointFederatedAuthenticationRequestSAMLProviderArn
    ]

-- | Constructor for 'EC2ClientVpnEndpointFederatedAuthenticationRequest'
-- containing required fields as arguments.
ec2ClientVpnEndpointFederatedAuthenticationRequest
  :: Val Text -- ^ 'eccvefarSAMLProviderArn'
  -> EC2ClientVpnEndpointFederatedAuthenticationRequest
ec2ClientVpnEndpointFederatedAuthenticationRequest sAMLProviderArnarg =
  EC2ClientVpnEndpointFederatedAuthenticationRequest
  { _eC2ClientVpnEndpointFederatedAuthenticationRequestSAMLProviderArn = sAMLProviderArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-federatedauthenticationrequest.html#cfn-ec2-clientvpnendpoint-federatedauthenticationrequest-samlproviderarn
eccvefarSAMLProviderArn :: Lens' EC2ClientVpnEndpointFederatedAuthenticationRequest (Val Text)
eccvefarSAMLProviderArn = lens _eC2ClientVpnEndpointFederatedAuthenticationRequestSAMLProviderArn (\s a -> s { _eC2ClientVpnEndpointFederatedAuthenticationRequestSAMLProviderArn = a })
