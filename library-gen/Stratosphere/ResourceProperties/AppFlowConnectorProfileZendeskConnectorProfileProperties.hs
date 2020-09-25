{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileZendeskConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileZendeskConnectorProfileProperties. See
-- 'appFlowConnectorProfileZendeskConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileZendeskConnectorProfileProperties =
  AppFlowConnectorProfileZendeskConnectorProfileProperties
  { _appFlowConnectorProfileZendeskConnectorProfilePropertiesInstanceUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileZendeskConnectorProfileProperties where
  toJSON AppFlowConnectorProfileZendeskConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("InstanceUrl",) . toJSON) _appFlowConnectorProfileZendeskConnectorProfilePropertiesInstanceUrl
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileZendeskConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileZendeskConnectorProfileProperties
  :: Val Text -- ^ 'afcpzcppInstanceUrl'
  -> AppFlowConnectorProfileZendeskConnectorProfileProperties
appFlowConnectorProfileZendeskConnectorProfileProperties instanceUrlarg =
  AppFlowConnectorProfileZendeskConnectorProfileProperties
  { _appFlowConnectorProfileZendeskConnectorProfilePropertiesInstanceUrl = instanceUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofileproperties.html#cfn-appflow-connectorprofile-zendeskconnectorprofileproperties-instanceurl
afcpzcppInstanceUrl :: Lens' AppFlowConnectorProfileZendeskConnectorProfileProperties (Val Text)
afcpzcppInstanceUrl = lens _appFlowConnectorProfileZendeskConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileZendeskConnectorProfilePropertiesInstanceUrl = a })
