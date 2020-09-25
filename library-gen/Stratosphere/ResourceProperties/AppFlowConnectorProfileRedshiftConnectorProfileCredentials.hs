{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileRedshiftConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileRedshiftConnectorProfileCredentials. See
-- 'appFlowConnectorProfileRedshiftConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileRedshiftConnectorProfileCredentials =
  AppFlowConnectorProfileRedshiftConnectorProfileCredentials
  { _appFlowConnectorProfileRedshiftConnectorProfileCredentialsPassword :: Val Text
  , _appFlowConnectorProfileRedshiftConnectorProfileCredentialsUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileRedshiftConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileRedshiftConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("Password",) . toJSON) _appFlowConnectorProfileRedshiftConnectorProfileCredentialsPassword
    , (Just . ("Username",) . toJSON) _appFlowConnectorProfileRedshiftConnectorProfileCredentialsUsername
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileRedshiftConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileRedshiftConnectorProfileCredentials
  :: Val Text -- ^ 'afcprcpcPassword'
  -> Val Text -- ^ 'afcprcpcUsername'
  -> AppFlowConnectorProfileRedshiftConnectorProfileCredentials
appFlowConnectorProfileRedshiftConnectorProfileCredentials passwordarg usernamearg =
  AppFlowConnectorProfileRedshiftConnectorProfileCredentials
  { _appFlowConnectorProfileRedshiftConnectorProfileCredentialsPassword = passwordarg
  , _appFlowConnectorProfileRedshiftConnectorProfileCredentialsUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofilecredentials.html#cfn-appflow-connectorprofile-redshiftconnectorprofilecredentials-password
afcprcpcPassword :: Lens' AppFlowConnectorProfileRedshiftConnectorProfileCredentials (Val Text)
afcprcpcPassword = lens _appFlowConnectorProfileRedshiftConnectorProfileCredentialsPassword (\s a -> s { _appFlowConnectorProfileRedshiftConnectorProfileCredentialsPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofilecredentials.html#cfn-appflow-connectorprofile-redshiftconnectorprofilecredentials-username
afcprcpcUsername :: Lens' AppFlowConnectorProfileRedshiftConnectorProfileCredentials (Val Text)
afcprcpcUsername = lens _appFlowConnectorProfileRedshiftConnectorProfileCredentialsUsername (\s a -> s { _appFlowConnectorProfileRedshiftConnectorProfileCredentialsUsername = a })
