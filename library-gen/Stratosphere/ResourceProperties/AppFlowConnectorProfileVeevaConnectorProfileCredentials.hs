{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-veevaconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileVeevaConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileVeevaConnectorProfileCredentials. See
-- 'appFlowConnectorProfileVeevaConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileVeevaConnectorProfileCredentials =
  AppFlowConnectorProfileVeevaConnectorProfileCredentials
  { _appFlowConnectorProfileVeevaConnectorProfileCredentialsPassword :: Val Text
  , _appFlowConnectorProfileVeevaConnectorProfileCredentialsUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileVeevaConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileVeevaConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("Password",) . toJSON) _appFlowConnectorProfileVeevaConnectorProfileCredentialsPassword
    , (Just . ("Username",) . toJSON) _appFlowConnectorProfileVeevaConnectorProfileCredentialsUsername
    ]

-- | Constructor for 'AppFlowConnectorProfileVeevaConnectorProfileCredentials'
-- containing required fields as arguments.
appFlowConnectorProfileVeevaConnectorProfileCredentials
  :: Val Text -- ^ 'afcpvcpcPassword'
  -> Val Text -- ^ 'afcpvcpcUsername'
  -> AppFlowConnectorProfileVeevaConnectorProfileCredentials
appFlowConnectorProfileVeevaConnectorProfileCredentials passwordarg usernamearg =
  AppFlowConnectorProfileVeevaConnectorProfileCredentials
  { _appFlowConnectorProfileVeevaConnectorProfileCredentialsPassword = passwordarg
  , _appFlowConnectorProfileVeevaConnectorProfileCredentialsUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-veevaconnectorprofilecredentials.html#cfn-appflow-connectorprofile-veevaconnectorprofilecredentials-password
afcpvcpcPassword :: Lens' AppFlowConnectorProfileVeevaConnectorProfileCredentials (Val Text)
afcpvcpcPassword = lens _appFlowConnectorProfileVeevaConnectorProfileCredentialsPassword (\s a -> s { _appFlowConnectorProfileVeevaConnectorProfileCredentialsPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-veevaconnectorprofilecredentials.html#cfn-appflow-connectorprofile-veevaconnectorprofilecredentials-username
afcpvcpcUsername :: Lens' AppFlowConnectorProfileVeevaConnectorProfileCredentials (Val Text)
afcpvcpcUsername = lens _appFlowConnectorProfileVeevaConnectorProfileCredentialsUsername (\s a -> s { _appFlowConnectorProfileVeevaConnectorProfileCredentialsUsername = a })
