{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html

module Stratosphere.Resources.AppFlowConnectorProfile where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorProfileConfig

-- | Full data type definition for AppFlowConnectorProfile. See
-- 'appFlowConnectorProfile' for a more convenient constructor.
data AppFlowConnectorProfile =
  AppFlowConnectorProfile
  { _appFlowConnectorProfileConnectionMode :: Val Text
  , _appFlowConnectorProfileConnectorProfileConfig :: Maybe AppFlowConnectorProfileConnectorProfileConfig
  , _appFlowConnectorProfileConnectorProfileName :: Val Text
  , _appFlowConnectorProfileConnectorType :: Val Text
  , _appFlowConnectorProfileKMSArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties AppFlowConnectorProfile where
  toResourceProperties AppFlowConnectorProfile{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppFlow::ConnectorProfile"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("ConnectionMode",) . toJSON) _appFlowConnectorProfileConnectionMode
        , fmap (("ConnectorProfileConfig",) . toJSON) _appFlowConnectorProfileConnectorProfileConfig
        , (Just . ("ConnectorProfileName",) . toJSON) _appFlowConnectorProfileConnectorProfileName
        , (Just . ("ConnectorType",) . toJSON) _appFlowConnectorProfileConnectorType
        , fmap (("KMSArn",) . toJSON) _appFlowConnectorProfileKMSArn
        ]
    }

-- | Constructor for 'AppFlowConnectorProfile' containing required fields as
-- arguments.
appFlowConnectorProfile
  :: Val Text -- ^ 'afcpConnectionMode'
  -> Val Text -- ^ 'afcpConnectorProfileName'
  -> Val Text -- ^ 'afcpConnectorType'
  -> AppFlowConnectorProfile
appFlowConnectorProfile connectionModearg connectorProfileNamearg connectorTypearg =
  AppFlowConnectorProfile
  { _appFlowConnectorProfileConnectionMode = connectionModearg
  , _appFlowConnectorProfileConnectorProfileConfig = Nothing
  , _appFlowConnectorProfileConnectorProfileName = connectorProfileNamearg
  , _appFlowConnectorProfileConnectorType = connectorTypearg
  , _appFlowConnectorProfileKMSArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectionmode
afcpConnectionMode :: Lens' AppFlowConnectorProfile (Val Text)
afcpConnectionMode = lens _appFlowConnectorProfileConnectionMode (\s a -> s { _appFlowConnectorProfileConnectionMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectorprofileconfig
afcpConnectorProfileConfig :: Lens' AppFlowConnectorProfile (Maybe AppFlowConnectorProfileConnectorProfileConfig)
afcpConnectorProfileConfig = lens _appFlowConnectorProfileConnectorProfileConfig (\s a -> s { _appFlowConnectorProfileConnectorProfileConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectorprofilename
afcpConnectorProfileName :: Lens' AppFlowConnectorProfile (Val Text)
afcpConnectorProfileName = lens _appFlowConnectorProfileConnectorProfileName (\s a -> s { _appFlowConnectorProfileConnectorProfileName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectortype
afcpConnectorType :: Lens' AppFlowConnectorProfile (Val Text)
afcpConnectorType = lens _appFlowConnectorProfileConnectorType (\s a -> s { _appFlowConnectorProfileConnectorType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-kmsarn
afcpKMSArn :: Lens' AppFlowConnectorProfile (Maybe (Val Text))
afcpKMSArn = lens _appFlowConnectorProfileKMSArn (\s a -> s { _appFlowConnectorProfileKMSArn = a })
