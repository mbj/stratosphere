{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileInforNexusConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileInforNexusConnectorProfileProperties. See
-- 'appFlowConnectorProfileInforNexusConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileInforNexusConnectorProfileProperties =
  AppFlowConnectorProfileInforNexusConnectorProfileProperties
  { _appFlowConnectorProfileInforNexusConnectorProfilePropertiesInstanceUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileInforNexusConnectorProfileProperties where
  toJSON AppFlowConnectorProfileInforNexusConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("InstanceUrl",) . toJSON) _appFlowConnectorProfileInforNexusConnectorProfilePropertiesInstanceUrl
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileInforNexusConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileInforNexusConnectorProfileProperties
  :: Val Text -- ^ 'afcpincppInstanceUrl'
  -> AppFlowConnectorProfileInforNexusConnectorProfileProperties
appFlowConnectorProfileInforNexusConnectorProfileProperties instanceUrlarg =
  AppFlowConnectorProfileInforNexusConnectorProfileProperties
  { _appFlowConnectorProfileInforNexusConnectorProfilePropertiesInstanceUrl = instanceUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofileproperties.html#cfn-appflow-connectorprofile-infornexusconnectorprofileproperties-instanceurl
afcpincppInstanceUrl :: Lens' AppFlowConnectorProfileInforNexusConnectorProfileProperties (Val Text)
afcpincppInstanceUrl = lens _appFlowConnectorProfileInforNexusConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileInforNexusConnectorProfilePropertiesInstanceUrl = a })
