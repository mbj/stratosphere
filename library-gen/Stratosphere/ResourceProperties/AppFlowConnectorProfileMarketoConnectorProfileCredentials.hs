{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileMarketoConnectorProfileCredentials where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorOAuthRequest

-- | Full data type definition for
-- AppFlowConnectorProfileMarketoConnectorProfileCredentials. See
-- 'appFlowConnectorProfileMarketoConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileMarketoConnectorProfileCredentials =
  AppFlowConnectorProfileMarketoConnectorProfileCredentials
  { _appFlowConnectorProfileMarketoConnectorProfileCredentialsAccessToken :: Maybe (Val Text)
  , _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientId :: Val Text
  , _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientSecret :: Val Text
  , _appFlowConnectorProfileMarketoConnectorProfileCredentialsConnectorOAuthRequest :: Maybe AppFlowConnectorProfileConnectorOAuthRequest
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileMarketoConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileMarketoConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ fmap (("AccessToken",) . toJSON) _appFlowConnectorProfileMarketoConnectorProfileCredentialsAccessToken
    , (Just . ("ClientId",) . toJSON) _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientId
    , (Just . ("ClientSecret",) . toJSON) _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientSecret
    , fmap (("ConnectorOAuthRequest",) . toJSON) _appFlowConnectorProfileMarketoConnectorProfileCredentialsConnectorOAuthRequest
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileMarketoConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileMarketoConnectorProfileCredentials
  :: Val Text -- ^ 'afcpmcpcClientId'
  -> Val Text -- ^ 'afcpmcpcClientSecret'
  -> AppFlowConnectorProfileMarketoConnectorProfileCredentials
appFlowConnectorProfileMarketoConnectorProfileCredentials clientIdarg clientSecretarg =
  AppFlowConnectorProfileMarketoConnectorProfileCredentials
  { _appFlowConnectorProfileMarketoConnectorProfileCredentialsAccessToken = Nothing
  , _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientId = clientIdarg
  , _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientSecret = clientSecretarg
  , _appFlowConnectorProfileMarketoConnectorProfileCredentialsConnectorOAuthRequest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofilecredentials.html#cfn-appflow-connectorprofile-marketoconnectorprofilecredentials-accesstoken
afcpmcpcAccessToken :: Lens' AppFlowConnectorProfileMarketoConnectorProfileCredentials (Maybe (Val Text))
afcpmcpcAccessToken = lens _appFlowConnectorProfileMarketoConnectorProfileCredentialsAccessToken (\s a -> s { _appFlowConnectorProfileMarketoConnectorProfileCredentialsAccessToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofilecredentials.html#cfn-appflow-connectorprofile-marketoconnectorprofilecredentials-clientid
afcpmcpcClientId :: Lens' AppFlowConnectorProfileMarketoConnectorProfileCredentials (Val Text)
afcpmcpcClientId = lens _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientId (\s a -> s { _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofilecredentials.html#cfn-appflow-connectorprofile-marketoconnectorprofilecredentials-clientsecret
afcpmcpcClientSecret :: Lens' AppFlowConnectorProfileMarketoConnectorProfileCredentials (Val Text)
afcpmcpcClientSecret = lens _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientSecret (\s a -> s { _appFlowConnectorProfileMarketoConnectorProfileCredentialsClientSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofilecredentials.html#cfn-appflow-connectorprofile-marketoconnectorprofilecredentials-connectoroauthrequest
afcpmcpcConnectorOAuthRequest :: Lens' AppFlowConnectorProfileMarketoConnectorProfileCredentials (Maybe AppFlowConnectorProfileConnectorOAuthRequest)
afcpmcpcConnectorOAuthRequest = lens _appFlowConnectorProfileMarketoConnectorProfileCredentialsConnectorOAuthRequest (\s a -> s { _appFlowConnectorProfileMarketoConnectorProfileCredentialsConnectorOAuthRequest = a })
