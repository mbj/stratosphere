{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-singularconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileSingularConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileSingularConnectorProfileCredentials. See
-- 'appFlowConnectorProfileSingularConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileSingularConnectorProfileCredentials =
  AppFlowConnectorProfileSingularConnectorProfileCredentials
  { _appFlowConnectorProfileSingularConnectorProfileCredentialsApiKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileSingularConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileSingularConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("ApiKey",) . toJSON) _appFlowConnectorProfileSingularConnectorProfileCredentialsApiKey
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileSingularConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileSingularConnectorProfileCredentials
  :: Val Text -- ^ 'afcpscpcApiKey'
  -> AppFlowConnectorProfileSingularConnectorProfileCredentials
appFlowConnectorProfileSingularConnectorProfileCredentials apiKeyarg =
  AppFlowConnectorProfileSingularConnectorProfileCredentials
  { _appFlowConnectorProfileSingularConnectorProfileCredentialsApiKey = apiKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-singularconnectorprofilecredentials.html#cfn-appflow-connectorprofile-singularconnectorprofilecredentials-apikey
afcpscpcApiKey :: Lens' AppFlowConnectorProfileSingularConnectorProfileCredentials (Val Text)
afcpscpcApiKey = lens _appFlowConnectorProfileSingularConnectorProfileCredentialsApiKey (\s a -> s { _appFlowConnectorProfileSingularConnectorProfileCredentialsApiKey = a })
