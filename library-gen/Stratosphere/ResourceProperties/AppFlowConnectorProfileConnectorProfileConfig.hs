{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileconfig.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorProfileConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorProfileProperties

-- | Full data type definition for
-- AppFlowConnectorProfileConnectorProfileConfig. See
-- 'appFlowConnectorProfileConnectorProfileConfig' for a more convenient
-- constructor.
data AppFlowConnectorProfileConnectorProfileConfig =
  AppFlowConnectorProfileConnectorProfileConfig
  { _appFlowConnectorProfileConnectorProfileConfigConnectorProfileCredentials :: AppFlowConnectorProfileConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileConfigConnectorProfileProperties :: Maybe AppFlowConnectorProfileConnectorProfileProperties
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileConnectorProfileConfig where
  toJSON AppFlowConnectorProfileConnectorProfileConfig{..} =
    object $
    catMaybes
    [ (Just . ("ConnectorProfileCredentials",) . toJSON) _appFlowConnectorProfileConnectorProfileConfigConnectorProfileCredentials
    , fmap (("ConnectorProfileProperties",) . toJSON) _appFlowConnectorProfileConnectorProfileConfigConnectorProfileProperties
    ]

-- | Constructor for 'AppFlowConnectorProfileConnectorProfileConfig'
-- containing required fields as arguments.
appFlowConnectorProfileConnectorProfileConfig
  :: AppFlowConnectorProfileConnectorProfileCredentials -- ^ 'afcpcpcConnectorProfileCredentials'
  -> AppFlowConnectorProfileConnectorProfileConfig
appFlowConnectorProfileConnectorProfileConfig connectorProfileCredentialsarg =
  AppFlowConnectorProfileConnectorProfileConfig
  { _appFlowConnectorProfileConnectorProfileConfigConnectorProfileCredentials = connectorProfileCredentialsarg
  , _appFlowConnectorProfileConnectorProfileConfigConnectorProfileProperties = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileconfig.html#cfn-appflow-connectorprofile-connectorprofileconfig-connectorprofilecredentials
afcpcpcConnectorProfileCredentials :: Lens' AppFlowConnectorProfileConnectorProfileConfig AppFlowConnectorProfileConnectorProfileCredentials
afcpcpcConnectorProfileCredentials = lens _appFlowConnectorProfileConnectorProfileConfigConnectorProfileCredentials (\s a -> s { _appFlowConnectorProfileConnectorProfileConfigConnectorProfileCredentials = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileconfig.html#cfn-appflow-connectorprofile-connectorprofileconfig-connectorprofileproperties
afcpcpcConnectorProfileProperties :: Lens' AppFlowConnectorProfileConnectorProfileConfig (Maybe AppFlowConnectorProfileConnectorProfileProperties)
afcpcpcConnectorProfileProperties = lens _appFlowConnectorProfileConnectorProfileConfigConnectorProfileProperties (\s a -> s { _appFlowConnectorProfileConnectorProfileConfigConnectorProfileProperties = a })
