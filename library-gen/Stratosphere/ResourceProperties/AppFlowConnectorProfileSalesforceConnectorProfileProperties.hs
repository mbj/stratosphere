{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-salesforceconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileSalesforceConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileSalesforceConnectorProfileProperties. See
-- 'appFlowConnectorProfileSalesforceConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileSalesforceConnectorProfileProperties =
  AppFlowConnectorProfileSalesforceConnectorProfileProperties
  { _appFlowConnectorProfileSalesforceConnectorProfilePropertiesInstanceUrl :: Maybe (Val Text)
  , _appFlowConnectorProfileSalesforceConnectorProfilePropertiesisSandboxEnvironment :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileSalesforceConnectorProfileProperties where
  toJSON AppFlowConnectorProfileSalesforceConnectorProfileProperties{..} =
    object $
    catMaybes
    [ fmap (("InstanceUrl",) . toJSON) _appFlowConnectorProfileSalesforceConnectorProfilePropertiesInstanceUrl
    , fmap (("isSandboxEnvironment",) . toJSON) _appFlowConnectorProfileSalesforceConnectorProfilePropertiesisSandboxEnvironment
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileSalesforceConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileSalesforceConnectorProfileProperties
  :: AppFlowConnectorProfileSalesforceConnectorProfileProperties
appFlowConnectorProfileSalesforceConnectorProfileProperties  =
  AppFlowConnectorProfileSalesforceConnectorProfileProperties
  { _appFlowConnectorProfileSalesforceConnectorProfilePropertiesInstanceUrl = Nothing
  , _appFlowConnectorProfileSalesforceConnectorProfilePropertiesisSandboxEnvironment = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-salesforceconnectorprofileproperties.html#cfn-appflow-connectorprofile-salesforceconnectorprofileproperties-instanceurl
afcpscppInstanceUrl :: Lens' AppFlowConnectorProfileSalesforceConnectorProfileProperties (Maybe (Val Text))
afcpscppInstanceUrl = lens _appFlowConnectorProfileSalesforceConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileSalesforceConnectorProfilePropertiesInstanceUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-salesforceconnectorprofileproperties.html#cfn-appflow-connectorprofile-salesforceconnectorprofileproperties-issandboxenvironment
afcpscppisSandboxEnvironment :: Lens' AppFlowConnectorProfileSalesforceConnectorProfileProperties (Maybe (Val Bool))
afcpscppisSandboxEnvironment = lens _appFlowConnectorProfileSalesforceConnectorProfilePropertiesisSandboxEnvironment (\s a -> s { _appFlowConnectorProfileSalesforceConnectorProfilePropertiesisSandboxEnvironment = a })
