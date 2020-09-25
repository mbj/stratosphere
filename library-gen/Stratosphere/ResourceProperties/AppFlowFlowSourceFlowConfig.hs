{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceflowconfig.html

module Stratosphere.ResourceProperties.AppFlowFlowSourceFlowConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowSourceConnectorProperties

-- | Full data type definition for AppFlowFlowSourceFlowConfig. See
-- 'appFlowFlowSourceFlowConfig' for a more convenient constructor.
data AppFlowFlowSourceFlowConfig =
  AppFlowFlowSourceFlowConfig
  { _appFlowFlowSourceFlowConfigConnectorProfileName :: Maybe (Val Text)
  , _appFlowFlowSourceFlowConfigConnectorType :: Val Text
  , _appFlowFlowSourceFlowConfigSourceConnectorProperties :: AppFlowFlowSourceConnectorProperties
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowSourceFlowConfig where
  toJSON AppFlowFlowSourceFlowConfig{..} =
    object $
    catMaybes
    [ fmap (("ConnectorProfileName",) . toJSON) _appFlowFlowSourceFlowConfigConnectorProfileName
    , (Just . ("ConnectorType",) . toJSON) _appFlowFlowSourceFlowConfigConnectorType
    , (Just . ("SourceConnectorProperties",) . toJSON) _appFlowFlowSourceFlowConfigSourceConnectorProperties
    ]

-- | Constructor for 'AppFlowFlowSourceFlowConfig' containing required fields
-- as arguments.
appFlowFlowSourceFlowConfig
  :: Val Text -- ^ 'affsfcConnectorType'
  -> AppFlowFlowSourceConnectorProperties -- ^ 'affsfcSourceConnectorProperties'
  -> AppFlowFlowSourceFlowConfig
appFlowFlowSourceFlowConfig connectorTypearg sourceConnectorPropertiesarg =
  AppFlowFlowSourceFlowConfig
  { _appFlowFlowSourceFlowConfigConnectorProfileName = Nothing
  , _appFlowFlowSourceFlowConfigConnectorType = connectorTypearg
  , _appFlowFlowSourceFlowConfigSourceConnectorProperties = sourceConnectorPropertiesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceflowconfig.html#cfn-appflow-flow-sourceflowconfig-connectorprofilename
affsfcConnectorProfileName :: Lens' AppFlowFlowSourceFlowConfig (Maybe (Val Text))
affsfcConnectorProfileName = lens _appFlowFlowSourceFlowConfigConnectorProfileName (\s a -> s { _appFlowFlowSourceFlowConfigConnectorProfileName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceflowconfig.html#cfn-appflow-flow-sourceflowconfig-connectortype
affsfcConnectorType :: Lens' AppFlowFlowSourceFlowConfig (Val Text)
affsfcConnectorType = lens _appFlowFlowSourceFlowConfigConnectorType (\s a -> s { _appFlowFlowSourceFlowConfigConnectorType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceflowconfig.html#cfn-appflow-flow-sourceflowconfig-sourceconnectorproperties
affsfcSourceConnectorProperties :: Lens' AppFlowFlowSourceFlowConfig AppFlowFlowSourceConnectorProperties
affsfcSourceConnectorProperties = lens _appFlowFlowSourceFlowConfigSourceConnectorProperties (\s a -> s { _appFlowFlowSourceFlowConfigSourceConnectorProperties = a })
