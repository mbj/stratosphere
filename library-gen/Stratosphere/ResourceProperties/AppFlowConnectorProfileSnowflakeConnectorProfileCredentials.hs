{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileSnowflakeConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileSnowflakeConnectorProfileCredentials. See
-- 'appFlowConnectorProfileSnowflakeConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileSnowflakeConnectorProfileCredentials =
  AppFlowConnectorProfileSnowflakeConnectorProfileCredentials
  { _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsPassword :: Val Text
  , _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileSnowflakeConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileSnowflakeConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("Password",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsPassword
    , (Just . ("Username",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsUsername
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileSnowflakeConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileSnowflakeConnectorProfileCredentials
  :: Val Text -- ^ 'afcpscpcPassword'
  -> Val Text -- ^ 'afcpscpcUsername'
  -> AppFlowConnectorProfileSnowflakeConnectorProfileCredentials
appFlowConnectorProfileSnowflakeConnectorProfileCredentials passwordarg usernamearg =
  AppFlowConnectorProfileSnowflakeConnectorProfileCredentials
  { _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsPassword = passwordarg
  , _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofilecredentials.html#cfn-appflow-connectorprofile-snowflakeconnectorprofilecredentials-password
afcpscpcPassword :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileCredentials (Val Text)
afcpscpcPassword = lens _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsPassword (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofilecredentials.html#cfn-appflow-connectorprofile-snowflakeconnectorprofilecredentials-username
afcpscpcUsername :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileCredentials (Val Text)
afcpscpcUsername = lens _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsUsername (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfileCredentialsUsername = a })
