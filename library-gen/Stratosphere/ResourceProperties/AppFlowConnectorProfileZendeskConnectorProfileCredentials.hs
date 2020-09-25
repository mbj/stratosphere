{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileZendeskConnectorProfileCredentials where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorOAuthRequest

-- | Full data type definition for
-- AppFlowConnectorProfileZendeskConnectorProfileCredentials. See
-- 'appFlowConnectorProfileZendeskConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileZendeskConnectorProfileCredentials =
  AppFlowConnectorProfileZendeskConnectorProfileCredentials
  { _appFlowConnectorProfileZendeskConnectorProfileCredentialsAccessToken :: Maybe (Val Text)
  , _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientId :: Val Text
  , _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientSecret :: Val Text
  , _appFlowConnectorProfileZendeskConnectorProfileCredentialsConnectorOAuthRequest :: Maybe AppFlowConnectorProfileConnectorOAuthRequest
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileZendeskConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileZendeskConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ fmap (("AccessToken",) . toJSON) _appFlowConnectorProfileZendeskConnectorProfileCredentialsAccessToken
    , (Just . ("ClientId",) . toJSON) _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientId
    , (Just . ("ClientSecret",) . toJSON) _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientSecret
    , fmap (("ConnectorOAuthRequest",) . toJSON) _appFlowConnectorProfileZendeskConnectorProfileCredentialsConnectorOAuthRequest
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileZendeskConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileZendeskConnectorProfileCredentials
  :: Val Text -- ^ 'afcpzcpcClientId'
  -> Val Text -- ^ 'afcpzcpcClientSecret'
  -> AppFlowConnectorProfileZendeskConnectorProfileCredentials
appFlowConnectorProfileZendeskConnectorProfileCredentials clientIdarg clientSecretarg =
  AppFlowConnectorProfileZendeskConnectorProfileCredentials
  { _appFlowConnectorProfileZendeskConnectorProfileCredentialsAccessToken = Nothing
  , _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientId = clientIdarg
  , _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientSecret = clientSecretarg
  , _appFlowConnectorProfileZendeskConnectorProfileCredentialsConnectorOAuthRequest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html#cfn-appflow-connectorprofile-zendeskconnectorprofilecredentials-accesstoken
afcpzcpcAccessToken :: Lens' AppFlowConnectorProfileZendeskConnectorProfileCredentials (Maybe (Val Text))
afcpzcpcAccessToken = lens _appFlowConnectorProfileZendeskConnectorProfileCredentialsAccessToken (\s a -> s { _appFlowConnectorProfileZendeskConnectorProfileCredentialsAccessToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html#cfn-appflow-connectorprofile-zendeskconnectorprofilecredentials-clientid
afcpzcpcClientId :: Lens' AppFlowConnectorProfileZendeskConnectorProfileCredentials (Val Text)
afcpzcpcClientId = lens _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientId (\s a -> s { _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html#cfn-appflow-connectorprofile-zendeskconnectorprofilecredentials-clientsecret
afcpzcpcClientSecret :: Lens' AppFlowConnectorProfileZendeskConnectorProfileCredentials (Val Text)
afcpzcpcClientSecret = lens _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientSecret (\s a -> s { _appFlowConnectorProfileZendeskConnectorProfileCredentialsClientSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html#cfn-appflow-connectorprofile-zendeskconnectorprofilecredentials-connectoroauthrequest
afcpzcpcConnectorOAuthRequest :: Lens' AppFlowConnectorProfileZendeskConnectorProfileCredentials (Maybe AppFlowConnectorProfileConnectorOAuthRequest)
afcpzcpcConnectorOAuthRequest = lens _appFlowConnectorProfileZendeskConnectorProfileCredentialsConnectorOAuthRequest (\s a -> s { _appFlowConnectorProfileZendeskConnectorProfileCredentialsConnectorOAuthRequest = a })
