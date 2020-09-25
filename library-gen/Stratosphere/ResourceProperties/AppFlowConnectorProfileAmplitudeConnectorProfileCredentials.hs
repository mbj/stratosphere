{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-amplitudeconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileAmplitudeConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileAmplitudeConnectorProfileCredentials. See
-- 'appFlowConnectorProfileAmplitudeConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileAmplitudeConnectorProfileCredentials =
  AppFlowConnectorProfileAmplitudeConnectorProfileCredentials
  { _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsApiKey :: Val Text
  , _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsSecretKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileAmplitudeConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileAmplitudeConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("ApiKey",) . toJSON) _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsApiKey
    , (Just . ("SecretKey",) . toJSON) _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsSecretKey
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileAmplitudeConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileAmplitudeConnectorProfileCredentials
  :: Val Text -- ^ 'afcpacpcApiKey'
  -> Val Text -- ^ 'afcpacpcSecretKey'
  -> AppFlowConnectorProfileAmplitudeConnectorProfileCredentials
appFlowConnectorProfileAmplitudeConnectorProfileCredentials apiKeyarg secretKeyarg =
  AppFlowConnectorProfileAmplitudeConnectorProfileCredentials
  { _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsApiKey = apiKeyarg
  , _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsSecretKey = secretKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-amplitudeconnectorprofilecredentials.html#cfn-appflow-connectorprofile-amplitudeconnectorprofilecredentials-apikey
afcpacpcApiKey :: Lens' AppFlowConnectorProfileAmplitudeConnectorProfileCredentials (Val Text)
afcpacpcApiKey = lens _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsApiKey (\s a -> s { _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsApiKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-amplitudeconnectorprofilecredentials.html#cfn-appflow-connectorprofile-amplitudeconnectorprofilecredentials-secretkey
afcpacpcSecretKey :: Lens' AppFlowConnectorProfileAmplitudeConnectorProfileCredentials (Val Text)
afcpacpcSecretKey = lens _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsSecretKey (\s a -> s { _appFlowConnectorProfileAmplitudeConnectorProfileCredentialsSecretKey = a })
