{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-servicenowconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileServiceNowConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileServiceNowConnectorProfileProperties. See
-- 'appFlowConnectorProfileServiceNowConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileServiceNowConnectorProfileProperties =
  AppFlowConnectorProfileServiceNowConnectorProfileProperties
  { _appFlowConnectorProfileServiceNowConnectorProfilePropertiesInstanceUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileServiceNowConnectorProfileProperties where
  toJSON AppFlowConnectorProfileServiceNowConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("InstanceUrl",) . toJSON) _appFlowConnectorProfileServiceNowConnectorProfilePropertiesInstanceUrl
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileServiceNowConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileServiceNowConnectorProfileProperties
  :: Val Text -- ^ 'afcpsncppInstanceUrl'
  -> AppFlowConnectorProfileServiceNowConnectorProfileProperties
appFlowConnectorProfileServiceNowConnectorProfileProperties instanceUrlarg =
  AppFlowConnectorProfileServiceNowConnectorProfileProperties
  { _appFlowConnectorProfileServiceNowConnectorProfilePropertiesInstanceUrl = instanceUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-servicenowconnectorprofileproperties.html#cfn-appflow-connectorprofile-servicenowconnectorprofileproperties-instanceurl
afcpsncppInstanceUrl :: Lens' AppFlowConnectorProfileServiceNowConnectorProfileProperties (Val Text)
afcpsncppInstanceUrl = lens _appFlowConnectorProfileServiceNowConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileServiceNowConnectorProfilePropertiesInstanceUrl = a })
