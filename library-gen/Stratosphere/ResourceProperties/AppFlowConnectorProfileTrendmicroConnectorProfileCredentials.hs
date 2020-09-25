{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-trendmicroconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileTrendmicroConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileTrendmicroConnectorProfileCredentials. See
-- 'appFlowConnectorProfileTrendmicroConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileTrendmicroConnectorProfileCredentials =
  AppFlowConnectorProfileTrendmicroConnectorProfileCredentials
  { _appFlowConnectorProfileTrendmicroConnectorProfileCredentialsApiSecretKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileTrendmicroConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileTrendmicroConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("ApiSecretKey",) . toJSON) _appFlowConnectorProfileTrendmicroConnectorProfileCredentialsApiSecretKey
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileTrendmicroConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileTrendmicroConnectorProfileCredentials
  :: Val Text -- ^ 'afcptcpcApiSecretKey'
  -> AppFlowConnectorProfileTrendmicroConnectorProfileCredentials
appFlowConnectorProfileTrendmicroConnectorProfileCredentials apiSecretKeyarg =
  AppFlowConnectorProfileTrendmicroConnectorProfileCredentials
  { _appFlowConnectorProfileTrendmicroConnectorProfileCredentialsApiSecretKey = apiSecretKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-trendmicroconnectorprofilecredentials.html#cfn-appflow-connectorprofile-trendmicroconnectorprofilecredentials-apisecretkey
afcptcpcApiSecretKey :: Lens' AppFlowConnectorProfileTrendmicroConnectorProfileCredentials (Val Text)
afcptcpcApiSecretKey = lens _appFlowConnectorProfileTrendmicroConnectorProfileCredentialsApiSecretKey (\s a -> s { _appFlowConnectorProfileTrendmicroConnectorProfileCredentialsApiSecretKey = a })
