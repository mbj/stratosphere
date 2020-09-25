{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html

module Stratosphere.ResourceProperties.AppFlowFlowDestinationFlowConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowDestinationConnectorProperties

-- | Full data type definition for AppFlowFlowDestinationFlowConfig. See
-- 'appFlowFlowDestinationFlowConfig' for a more convenient constructor.
data AppFlowFlowDestinationFlowConfig =
  AppFlowFlowDestinationFlowConfig
  { _appFlowFlowDestinationFlowConfigConnectorProfileName :: Maybe (Val Text)
  , _appFlowFlowDestinationFlowConfigConnectorType :: Val Text
  , _appFlowFlowDestinationFlowConfigDestinationConnectorProperties :: AppFlowFlowDestinationConnectorProperties
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowDestinationFlowConfig where
  toJSON AppFlowFlowDestinationFlowConfig{..} =
    object $
    catMaybes
    [ fmap (("ConnectorProfileName",) . toJSON) _appFlowFlowDestinationFlowConfigConnectorProfileName
    , (Just . ("ConnectorType",) . toJSON) _appFlowFlowDestinationFlowConfigConnectorType
    , (Just . ("DestinationConnectorProperties",) . toJSON) _appFlowFlowDestinationFlowConfigDestinationConnectorProperties
    ]

-- | Constructor for 'AppFlowFlowDestinationFlowConfig' containing required
-- fields as arguments.
appFlowFlowDestinationFlowConfig
  :: Val Text -- ^ 'affdfcConnectorType'
  -> AppFlowFlowDestinationConnectorProperties -- ^ 'affdfcDestinationConnectorProperties'
  -> AppFlowFlowDestinationFlowConfig
appFlowFlowDestinationFlowConfig connectorTypearg destinationConnectorPropertiesarg =
  AppFlowFlowDestinationFlowConfig
  { _appFlowFlowDestinationFlowConfigConnectorProfileName = Nothing
  , _appFlowFlowDestinationFlowConfigConnectorType = connectorTypearg
  , _appFlowFlowDestinationFlowConfigDestinationConnectorProperties = destinationConnectorPropertiesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html#cfn-appflow-flow-destinationflowconfig-connectorprofilename
affdfcConnectorProfileName :: Lens' AppFlowFlowDestinationFlowConfig (Maybe (Val Text))
affdfcConnectorProfileName = lens _appFlowFlowDestinationFlowConfigConnectorProfileName (\s a -> s { _appFlowFlowDestinationFlowConfigConnectorProfileName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html#cfn-appflow-flow-destinationflowconfig-connectortype
affdfcConnectorType :: Lens' AppFlowFlowDestinationFlowConfig (Val Text)
affdfcConnectorType = lens _appFlowFlowDestinationFlowConfigConnectorType (\s a -> s { _appFlowFlowDestinationFlowConfigConnectorType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html#cfn-appflow-flow-destinationflowconfig-destinationconnectorproperties
affdfcDestinationConnectorProperties :: Lens' AppFlowFlowDestinationFlowConfig AppFlowFlowDestinationConnectorProperties
affdfcDestinationConnectorProperties = lens _appFlowFlowDestinationFlowConfigDestinationConnectorProperties (\s a -> s { _appFlowFlowDestinationFlowConfigDestinationConnectorProperties = a })
