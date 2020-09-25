{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileSlackConnectorProfileCredentials where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorOAuthRequest

-- | Full data type definition for
-- AppFlowConnectorProfileSlackConnectorProfileCredentials. See
-- 'appFlowConnectorProfileSlackConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileSlackConnectorProfileCredentials =
  AppFlowConnectorProfileSlackConnectorProfileCredentials
  { _appFlowConnectorProfileSlackConnectorProfileCredentialsAccessToken :: Maybe (Val Text)
  , _appFlowConnectorProfileSlackConnectorProfileCredentialsClientId :: Val Text
  , _appFlowConnectorProfileSlackConnectorProfileCredentialsClientSecret :: Val Text
  , _appFlowConnectorProfileSlackConnectorProfileCredentialsConnectorOAuthRequest :: Maybe AppFlowConnectorProfileConnectorOAuthRequest
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileSlackConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileSlackConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ fmap (("AccessToken",) . toJSON) _appFlowConnectorProfileSlackConnectorProfileCredentialsAccessToken
    , (Just . ("ClientId",) . toJSON) _appFlowConnectorProfileSlackConnectorProfileCredentialsClientId
    , (Just . ("ClientSecret",) . toJSON) _appFlowConnectorProfileSlackConnectorProfileCredentialsClientSecret
    , fmap (("ConnectorOAuthRequest",) . toJSON) _appFlowConnectorProfileSlackConnectorProfileCredentialsConnectorOAuthRequest
    ]

-- | Constructor for 'AppFlowConnectorProfileSlackConnectorProfileCredentials'
-- containing required fields as arguments.
appFlowConnectorProfileSlackConnectorProfileCredentials
  :: Val Text -- ^ 'afcpscpcClientId'
  -> Val Text -- ^ 'afcpscpcClientSecret'
  -> AppFlowConnectorProfileSlackConnectorProfileCredentials
appFlowConnectorProfileSlackConnectorProfileCredentials clientIdarg clientSecretarg =
  AppFlowConnectorProfileSlackConnectorProfileCredentials
  { _appFlowConnectorProfileSlackConnectorProfileCredentialsAccessToken = Nothing
  , _appFlowConnectorProfileSlackConnectorProfileCredentialsClientId = clientIdarg
  , _appFlowConnectorProfileSlackConnectorProfileCredentialsClientSecret = clientSecretarg
  , _appFlowConnectorProfileSlackConnectorProfileCredentialsConnectorOAuthRequest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html#cfn-appflow-connectorprofile-slackconnectorprofilecredentials-accesstoken
afcpscpcAccessToken :: Lens' AppFlowConnectorProfileSlackConnectorProfileCredentials (Maybe (Val Text))
afcpscpcAccessToken = lens _appFlowConnectorProfileSlackConnectorProfileCredentialsAccessToken (\s a -> s { _appFlowConnectorProfileSlackConnectorProfileCredentialsAccessToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html#cfn-appflow-connectorprofile-slackconnectorprofilecredentials-clientid
afcpscpcClientId :: Lens' AppFlowConnectorProfileSlackConnectorProfileCredentials (Val Text)
afcpscpcClientId = lens _appFlowConnectorProfileSlackConnectorProfileCredentialsClientId (\s a -> s { _appFlowConnectorProfileSlackConnectorProfileCredentialsClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html#cfn-appflow-connectorprofile-slackconnectorprofilecredentials-clientsecret
afcpscpcClientSecret :: Lens' AppFlowConnectorProfileSlackConnectorProfileCredentials (Val Text)
afcpscpcClientSecret = lens _appFlowConnectorProfileSlackConnectorProfileCredentialsClientSecret (\s a -> s { _appFlowConnectorProfileSlackConnectorProfileCredentialsClientSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html#cfn-appflow-connectorprofile-slackconnectorprofilecredentials-connectoroauthrequest
afcpscpcConnectorOAuthRequest :: Lens' AppFlowConnectorProfileSlackConnectorProfileCredentials (Maybe AppFlowConnectorProfileConnectorOAuthRequest)
afcpscpcConnectorOAuthRequest = lens _appFlowConnectorProfileSlackConnectorProfileCredentialsConnectorOAuthRequest (\s a -> s { _appFlowConnectorProfileSlackConnectorProfileCredentialsConnectorOAuthRequest = a })
