{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileDatadogConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileDatadogConnectorProfileProperties. See
-- 'appFlowConnectorProfileDatadogConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileDatadogConnectorProfileProperties =
  AppFlowConnectorProfileDatadogConnectorProfileProperties
  { _appFlowConnectorProfileDatadogConnectorProfilePropertiesInstanceUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileDatadogConnectorProfileProperties where
  toJSON AppFlowConnectorProfileDatadogConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("InstanceUrl",) . toJSON) _appFlowConnectorProfileDatadogConnectorProfilePropertiesInstanceUrl
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileDatadogConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileDatadogConnectorProfileProperties
  :: Val Text -- ^ 'afcpdcppInstanceUrl'
  -> AppFlowConnectorProfileDatadogConnectorProfileProperties
appFlowConnectorProfileDatadogConnectorProfileProperties instanceUrlarg =
  AppFlowConnectorProfileDatadogConnectorProfileProperties
  { _appFlowConnectorProfileDatadogConnectorProfilePropertiesInstanceUrl = instanceUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofileproperties.html#cfn-appflow-connectorprofile-datadogconnectorprofileproperties-instanceurl
afcpdcppInstanceUrl :: Lens' AppFlowConnectorProfileDatadogConnectorProfileProperties (Val Text)
afcpdcppInstanceUrl = lens _appFlowConnectorProfileDatadogConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileDatadogConnectorProfilePropertiesInstanceUrl = a })
