{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileDatadogConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileDatadogConnectorProfileCredentials. See
-- 'appFlowConnectorProfileDatadogConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileDatadogConnectorProfileCredentials =
  AppFlowConnectorProfileDatadogConnectorProfileCredentials
  { _appFlowConnectorProfileDatadogConnectorProfileCredentialsApiKey :: Val Text
  , _appFlowConnectorProfileDatadogConnectorProfileCredentialsApplicationKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileDatadogConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileDatadogConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("ApiKey",) . toJSON) _appFlowConnectorProfileDatadogConnectorProfileCredentialsApiKey
    , (Just . ("ApplicationKey",) . toJSON) _appFlowConnectorProfileDatadogConnectorProfileCredentialsApplicationKey
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileDatadogConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileDatadogConnectorProfileCredentials
  :: Val Text -- ^ 'afcpdcpcApiKey'
  -> Val Text -- ^ 'afcpdcpcApplicationKey'
  -> AppFlowConnectorProfileDatadogConnectorProfileCredentials
appFlowConnectorProfileDatadogConnectorProfileCredentials apiKeyarg applicationKeyarg =
  AppFlowConnectorProfileDatadogConnectorProfileCredentials
  { _appFlowConnectorProfileDatadogConnectorProfileCredentialsApiKey = apiKeyarg
  , _appFlowConnectorProfileDatadogConnectorProfileCredentialsApplicationKey = applicationKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofilecredentials.html#cfn-appflow-connectorprofile-datadogconnectorprofilecredentials-apikey
afcpdcpcApiKey :: Lens' AppFlowConnectorProfileDatadogConnectorProfileCredentials (Val Text)
afcpdcpcApiKey = lens _appFlowConnectorProfileDatadogConnectorProfileCredentialsApiKey (\s a -> s { _appFlowConnectorProfileDatadogConnectorProfileCredentialsApiKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofilecredentials.html#cfn-appflow-connectorprofile-datadogconnectorprofilecredentials-applicationkey
afcpdcpcApplicationKey :: Lens' AppFlowConnectorProfileDatadogConnectorProfileCredentials (Val Text)
afcpdcpcApplicationKey = lens _appFlowConnectorProfileDatadogConnectorProfileCredentialsApplicationKey (\s a -> s { _appFlowConnectorProfileDatadogConnectorProfileCredentialsApplicationKey = a })
