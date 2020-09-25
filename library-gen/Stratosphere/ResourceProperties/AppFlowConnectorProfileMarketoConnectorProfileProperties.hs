{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileMarketoConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileMarketoConnectorProfileProperties. See
-- 'appFlowConnectorProfileMarketoConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileMarketoConnectorProfileProperties =
  AppFlowConnectorProfileMarketoConnectorProfileProperties
  { _appFlowConnectorProfileMarketoConnectorProfilePropertiesInstanceUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileMarketoConnectorProfileProperties where
  toJSON AppFlowConnectorProfileMarketoConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("InstanceUrl",) . toJSON) _appFlowConnectorProfileMarketoConnectorProfilePropertiesInstanceUrl
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileMarketoConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileMarketoConnectorProfileProperties
  :: Val Text -- ^ 'afcpmcppInstanceUrl'
  -> AppFlowConnectorProfileMarketoConnectorProfileProperties
appFlowConnectorProfileMarketoConnectorProfileProperties instanceUrlarg =
  AppFlowConnectorProfileMarketoConnectorProfileProperties
  { _appFlowConnectorProfileMarketoConnectorProfilePropertiesInstanceUrl = instanceUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofileproperties.html#cfn-appflow-connectorprofile-marketoconnectorprofileproperties-instanceurl
afcpmcppInstanceUrl :: Lens' AppFlowConnectorProfileMarketoConnectorProfileProperties (Val Text)
afcpmcppInstanceUrl = lens _appFlowConnectorProfileMarketoConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileMarketoConnectorProfilePropertiesInstanceUrl = a })
