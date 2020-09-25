{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorOAuthRequest

-- | Full data type definition for
-- AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials. See
-- 'appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials' for a
-- more convenient constructor.
data AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials =
  AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials
  { _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsAccessToken :: Maybe (Val Text)
  , _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientId :: Val Text
  , _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientSecret :: Val Text
  , _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsConnectorOAuthRequest :: Maybe AppFlowConnectorProfileConnectorOAuthRequest
  , _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsRefreshToken :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ fmap (("AccessToken",) . toJSON) _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsAccessToken
    , (Just . ("ClientId",) . toJSON) _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientId
    , (Just . ("ClientSecret",) . toJSON) _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientSecret
    , fmap (("ConnectorOAuthRequest",) . toJSON) _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsConnectorOAuthRequest
    , fmap (("RefreshToken",) . toJSON) _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsRefreshToken
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials'
-- containing required fields as arguments.
appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials
  :: Val Text -- ^ 'afcpgacpcClientId'
  -> Val Text -- ^ 'afcpgacpcClientSecret'
  -> AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials
appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials clientIdarg clientSecretarg =
  AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials
  { _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsAccessToken = Nothing
  , _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientId = clientIdarg
  , _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientSecret = clientSecretarg
  , _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsConnectorOAuthRequest = Nothing
  , _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsRefreshToken = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-accesstoken
afcpgacpcAccessToken :: Lens' AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials (Maybe (Val Text))
afcpgacpcAccessToken = lens _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsAccessToken (\s a -> s { _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsAccessToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-clientid
afcpgacpcClientId :: Lens' AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials (Val Text)
afcpgacpcClientId = lens _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientId (\s a -> s { _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-clientsecret
afcpgacpcClientSecret :: Lens' AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials (Val Text)
afcpgacpcClientSecret = lens _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientSecret (\s a -> s { _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsClientSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-connectoroauthrequest
afcpgacpcConnectorOAuthRequest :: Lens' AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials (Maybe AppFlowConnectorProfileConnectorOAuthRequest)
afcpgacpcConnectorOAuthRequest = lens _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsConnectorOAuthRequest (\s a -> s { _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsConnectorOAuthRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-refreshtoken
afcpgacpcRefreshToken :: Lens' AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials (Maybe (Val Text))
afcpgacpcRefreshToken = lens _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsRefreshToken (\s a -> s { _appFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentialsRefreshToken = a })
