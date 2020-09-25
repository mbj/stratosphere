{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-veevaconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileVeevaConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileVeevaConnectorProfileProperties. See
-- 'appFlowConnectorProfileVeevaConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileVeevaConnectorProfileProperties =
  AppFlowConnectorProfileVeevaConnectorProfileProperties
  { _appFlowConnectorProfileVeevaConnectorProfilePropertiesInstanceUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileVeevaConnectorProfileProperties where
  toJSON AppFlowConnectorProfileVeevaConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("InstanceUrl",) . toJSON) _appFlowConnectorProfileVeevaConnectorProfilePropertiesInstanceUrl
    ]

-- | Constructor for 'AppFlowConnectorProfileVeevaConnectorProfileProperties'
-- containing required fields as arguments.
appFlowConnectorProfileVeevaConnectorProfileProperties
  :: Val Text -- ^ 'afcpvcppInstanceUrl'
  -> AppFlowConnectorProfileVeevaConnectorProfileProperties
appFlowConnectorProfileVeevaConnectorProfileProperties instanceUrlarg =
  AppFlowConnectorProfileVeevaConnectorProfileProperties
  { _appFlowConnectorProfileVeevaConnectorProfilePropertiesInstanceUrl = instanceUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-veevaconnectorprofileproperties.html#cfn-appflow-connectorprofile-veevaconnectorprofileproperties-instanceurl
afcpvcppInstanceUrl :: Lens' AppFlowConnectorProfileVeevaConnectorProfileProperties (Val Text)
afcpvcppInstanceUrl = lens _appFlowConnectorProfileVeevaConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileVeevaConnectorProfilePropertiesInstanceUrl = a })
