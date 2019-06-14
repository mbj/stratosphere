{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-directoryserviceauthenticationrequest.html

module Stratosphere.ResourceProperties.EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest. See
-- 'ec2ClientVpnEndpointDirectoryServiceAuthenticationRequest' for a more
-- convenient constructor.
data EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest =
  EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest
  { _eC2ClientVpnEndpointDirectoryServiceAuthenticationRequestDirectoryId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest where
  toJSON EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest{..} =
    object $
    catMaybes
    [ (Just . ("DirectoryId",) . toJSON) _eC2ClientVpnEndpointDirectoryServiceAuthenticationRequestDirectoryId
    ]

-- | Constructor for
-- 'EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest' containing
-- required fields as arguments.
ec2ClientVpnEndpointDirectoryServiceAuthenticationRequest
  :: Val Text -- ^ 'eccvedsarDirectoryId'
  -> EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest
ec2ClientVpnEndpointDirectoryServiceAuthenticationRequest directoryIdarg =
  EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest
  { _eC2ClientVpnEndpointDirectoryServiceAuthenticationRequestDirectoryId = directoryIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-directoryserviceauthenticationrequest.html#cfn-ec2-clientvpnendpoint-directoryserviceauthenticationrequest-directoryid
eccvedsarDirectoryId :: Lens' EC2ClientVpnEndpointDirectoryServiceAuthenticationRequest (Val Text)
eccvedsarDirectoryId = lens _eC2ClientVpnEndpointDirectoryServiceAuthenticationRequestDirectoryId (\s a -> s { _eC2ClientVpnEndpointDirectoryServiceAuthenticationRequestDirectoryId = a })
