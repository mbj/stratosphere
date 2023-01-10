
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html

module Stratosphere.ResourceProperties.EC2ClientVpnEndpointCertificateAuthenticationRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2ClientVpnEndpointCertificateAuthenticationRequest. See
-- 'ec2ClientVpnEndpointCertificateAuthenticationRequest' for a more
-- convenient constructor.
data EC2ClientVpnEndpointCertificateAuthenticationRequest =
  EC2ClientVpnEndpointCertificateAuthenticationRequest
  { _eC2ClientVpnEndpointCertificateAuthenticationRequestClientRootCertificateChainArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2ClientVpnEndpointCertificateAuthenticationRequest where
  toJSON EC2ClientVpnEndpointCertificateAuthenticationRequest{..} =
    object $
    catMaybes
    [ (Just . ("ClientRootCertificateChainArn",) . toJSON) _eC2ClientVpnEndpointCertificateAuthenticationRequestClientRootCertificateChainArn
    ]

-- | Constructor for 'EC2ClientVpnEndpointCertificateAuthenticationRequest'
-- containing required fields as arguments.
ec2ClientVpnEndpointCertificateAuthenticationRequest
  :: Val Text -- ^ 'eccvecarClientRootCertificateChainArn'
  -> EC2ClientVpnEndpointCertificateAuthenticationRequest
ec2ClientVpnEndpointCertificateAuthenticationRequest clientRootCertificateChainArnarg =
  EC2ClientVpnEndpointCertificateAuthenticationRequest
  { _eC2ClientVpnEndpointCertificateAuthenticationRequestClientRootCertificateChainArn = clientRootCertificateChainArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html#cfn-ec2-clientvpnendpoint-certificateauthenticationrequest-clientrootcertificatechainarn
eccvecarClientRootCertificateChainArn :: Lens' EC2ClientVpnEndpointCertificateAuthenticationRequest (Val Text)
eccvecarClientRootCertificateChainArn = lens _eC2ClientVpnEndpointCertificateAuthenticationRequestClientRootCertificateChainArn (\s a -> s { _eC2ClientVpnEndpointCertificateAuthenticationRequestClientRootCertificateChainArn = a })
