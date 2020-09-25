{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-dynatraceconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileDynatraceConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileDynatraceConnectorProfileProperties. See
-- 'appFlowConnectorProfileDynatraceConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileDynatraceConnectorProfileProperties =
  AppFlowConnectorProfileDynatraceConnectorProfileProperties
  { _appFlowConnectorProfileDynatraceConnectorProfilePropertiesInstanceUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileDynatraceConnectorProfileProperties where
  toJSON AppFlowConnectorProfileDynatraceConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("InstanceUrl",) . toJSON) _appFlowConnectorProfileDynatraceConnectorProfilePropertiesInstanceUrl
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileDynatraceConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileDynatraceConnectorProfileProperties
  :: Val Text -- ^ 'afcpdcppInstanceUrl'
  -> AppFlowConnectorProfileDynatraceConnectorProfileProperties
appFlowConnectorProfileDynatraceConnectorProfileProperties instanceUrlarg =
  AppFlowConnectorProfileDynatraceConnectorProfileProperties
  { _appFlowConnectorProfileDynatraceConnectorProfilePropertiesInstanceUrl = instanceUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-dynatraceconnectorprofileproperties.html#cfn-appflow-connectorprofile-dynatraceconnectorprofileproperties-instanceurl
afcpdcppInstanceUrl :: Lens' AppFlowConnectorProfileDynatraceConnectorProfileProperties (Val Text)
afcpdcppInstanceUrl = lens _appFlowConnectorProfileDynatraceConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileDynatraceConnectorProfilePropertiesInstanceUrl = a })
