{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-dynatraceconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileDynatraceConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileDynatraceConnectorProfileCredentials. See
-- 'appFlowConnectorProfileDynatraceConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileDynatraceConnectorProfileCredentials =
  AppFlowConnectorProfileDynatraceConnectorProfileCredentials
  { _appFlowConnectorProfileDynatraceConnectorProfileCredentialsApiToken :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileDynatraceConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileDynatraceConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("ApiToken",) . toJSON) _appFlowConnectorProfileDynatraceConnectorProfileCredentialsApiToken
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileDynatraceConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileDynatraceConnectorProfileCredentials
  :: Val Text -- ^ 'afcpdcpcApiToken'
  -> AppFlowConnectorProfileDynatraceConnectorProfileCredentials
appFlowConnectorProfileDynatraceConnectorProfileCredentials apiTokenarg =
  AppFlowConnectorProfileDynatraceConnectorProfileCredentials
  { _appFlowConnectorProfileDynatraceConnectorProfileCredentialsApiToken = apiTokenarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-dynatraceconnectorprofilecredentials.html#cfn-appflow-connectorprofile-dynatraceconnectorprofilecredentials-apitoken
afcpdcpcApiToken :: Lens' AppFlowConnectorProfileDynatraceConnectorProfileCredentials (Val Text)
afcpdcpcApiToken = lens _appFlowConnectorProfileDynatraceConnectorProfileCredentialsApiToken (\s a -> s { _appFlowConnectorProfileDynatraceConnectorProfileCredentialsApiToken = a })
