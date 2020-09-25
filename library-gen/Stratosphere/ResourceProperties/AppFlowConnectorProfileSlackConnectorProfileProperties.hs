{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileSlackConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileSlackConnectorProfileProperties. See
-- 'appFlowConnectorProfileSlackConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileSlackConnectorProfileProperties =
  AppFlowConnectorProfileSlackConnectorProfileProperties
  { _appFlowConnectorProfileSlackConnectorProfilePropertiesInstanceUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileSlackConnectorProfileProperties where
  toJSON AppFlowConnectorProfileSlackConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("InstanceUrl",) . toJSON) _appFlowConnectorProfileSlackConnectorProfilePropertiesInstanceUrl
    ]

-- | Constructor for 'AppFlowConnectorProfileSlackConnectorProfileProperties'
-- containing required fields as arguments.
appFlowConnectorProfileSlackConnectorProfileProperties
  :: Val Text -- ^ 'afcpscppInstanceUrl'
  -> AppFlowConnectorProfileSlackConnectorProfileProperties
appFlowConnectorProfileSlackConnectorProfileProperties instanceUrlarg =
  AppFlowConnectorProfileSlackConnectorProfileProperties
  { _appFlowConnectorProfileSlackConnectorProfilePropertiesInstanceUrl = instanceUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofileproperties.html#cfn-appflow-connectorprofile-slackconnectorprofileproperties-instanceurl
afcpscppInstanceUrl :: Lens' AppFlowConnectorProfileSlackConnectorProfileProperties (Val Text)
afcpscppInstanceUrl = lens _appFlowConnectorProfileSlackConnectorProfilePropertiesInstanceUrl (\s a -> s { _appFlowConnectorProfileSlackConnectorProfilePropertiesInstanceUrl = a })
