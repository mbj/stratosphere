{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-servicenowconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileServiceNowConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileServiceNowConnectorProfileCredentials. See
-- 'appFlowConnectorProfileServiceNowConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileServiceNowConnectorProfileCredentials =
  AppFlowConnectorProfileServiceNowConnectorProfileCredentials
  { _appFlowConnectorProfileServiceNowConnectorProfileCredentialsPassword :: Val Text
  , _appFlowConnectorProfileServiceNowConnectorProfileCredentialsUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileServiceNowConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileServiceNowConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("Password",) . toJSON) _appFlowConnectorProfileServiceNowConnectorProfileCredentialsPassword
    , (Just . ("Username",) . toJSON) _appFlowConnectorProfileServiceNowConnectorProfileCredentialsUsername
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileServiceNowConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileServiceNowConnectorProfileCredentials
  :: Val Text -- ^ 'afcpsncpcPassword'
  -> Val Text -- ^ 'afcpsncpcUsername'
  -> AppFlowConnectorProfileServiceNowConnectorProfileCredentials
appFlowConnectorProfileServiceNowConnectorProfileCredentials passwordarg usernamearg =
  AppFlowConnectorProfileServiceNowConnectorProfileCredentials
  { _appFlowConnectorProfileServiceNowConnectorProfileCredentialsPassword = passwordarg
  , _appFlowConnectorProfileServiceNowConnectorProfileCredentialsUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-servicenowconnectorprofilecredentials.html#cfn-appflow-connectorprofile-servicenowconnectorprofilecredentials-password
afcpsncpcPassword :: Lens' AppFlowConnectorProfileServiceNowConnectorProfileCredentials (Val Text)
afcpsncpcPassword = lens _appFlowConnectorProfileServiceNowConnectorProfileCredentialsPassword (\s a -> s { _appFlowConnectorProfileServiceNowConnectorProfileCredentialsPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-servicenowconnectorprofilecredentials.html#cfn-appflow-connectorprofile-servicenowconnectorprofilecredentials-username
afcpsncpcUsername :: Lens' AppFlowConnectorProfileServiceNowConnectorProfileCredentials (Val Text)
afcpsncpcUsername = lens _appFlowConnectorProfileServiceNowConnectorProfileCredentialsUsername (\s a -> s { _appFlowConnectorProfileServiceNowConnectorProfileCredentialsUsername = a })
