{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileInforNexusConnectorProfileCredentials where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileInforNexusConnectorProfileCredentials. See
-- 'appFlowConnectorProfileInforNexusConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileInforNexusConnectorProfileCredentials =
  AppFlowConnectorProfileInforNexusConnectorProfileCredentials
  { _appFlowConnectorProfileInforNexusConnectorProfileCredentialsAccessKeyId :: Val Text
  , _appFlowConnectorProfileInforNexusConnectorProfileCredentialsDatakey :: Val Text
  , _appFlowConnectorProfileInforNexusConnectorProfileCredentialsSecretAccessKey :: Val Text
  , _appFlowConnectorProfileInforNexusConnectorProfileCredentialsUserId :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileInforNexusConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileInforNexusConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ (Just . ("AccessKeyId",) . toJSON) _appFlowConnectorProfileInforNexusConnectorProfileCredentialsAccessKeyId
    , (Just . ("Datakey",) . toJSON) _appFlowConnectorProfileInforNexusConnectorProfileCredentialsDatakey
    , (Just . ("SecretAccessKey",) . toJSON) _appFlowConnectorProfileInforNexusConnectorProfileCredentialsSecretAccessKey
    , (Just . ("UserId",) . toJSON) _appFlowConnectorProfileInforNexusConnectorProfileCredentialsUserId
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileInforNexusConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileInforNexusConnectorProfileCredentials
  :: Val Text -- ^ 'afcpincpcAccessKeyId'
  -> Val Text -- ^ 'afcpincpcDatakey'
  -> Val Text -- ^ 'afcpincpcSecretAccessKey'
  -> Val Text -- ^ 'afcpincpcUserId'
  -> AppFlowConnectorProfileInforNexusConnectorProfileCredentials
appFlowConnectorProfileInforNexusConnectorProfileCredentials accessKeyIdarg datakeyarg secretAccessKeyarg userIdarg =
  AppFlowConnectorProfileInforNexusConnectorProfileCredentials
  { _appFlowConnectorProfileInforNexusConnectorProfileCredentialsAccessKeyId = accessKeyIdarg
  , _appFlowConnectorProfileInforNexusConnectorProfileCredentialsDatakey = datakeyarg
  , _appFlowConnectorProfileInforNexusConnectorProfileCredentialsSecretAccessKey = secretAccessKeyarg
  , _appFlowConnectorProfileInforNexusConnectorProfileCredentialsUserId = userIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html#cfn-appflow-connectorprofile-infornexusconnectorprofilecredentials-accesskeyid
afcpincpcAccessKeyId :: Lens' AppFlowConnectorProfileInforNexusConnectorProfileCredentials (Val Text)
afcpincpcAccessKeyId = lens _appFlowConnectorProfileInforNexusConnectorProfileCredentialsAccessKeyId (\s a -> s { _appFlowConnectorProfileInforNexusConnectorProfileCredentialsAccessKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html#cfn-appflow-connectorprofile-infornexusconnectorprofilecredentials-datakey
afcpincpcDatakey :: Lens' AppFlowConnectorProfileInforNexusConnectorProfileCredentials (Val Text)
afcpincpcDatakey = lens _appFlowConnectorProfileInforNexusConnectorProfileCredentialsDatakey (\s a -> s { _appFlowConnectorProfileInforNexusConnectorProfileCredentialsDatakey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html#cfn-appflow-connectorprofile-infornexusconnectorprofilecredentials-secretaccesskey
afcpincpcSecretAccessKey :: Lens' AppFlowConnectorProfileInforNexusConnectorProfileCredentials (Val Text)
afcpincpcSecretAccessKey = lens _appFlowConnectorProfileInforNexusConnectorProfileCredentialsSecretAccessKey (\s a -> s { _appFlowConnectorProfileInforNexusConnectorProfileCredentialsSecretAccessKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html#cfn-appflow-connectorprofile-infornexusconnectorprofilecredentials-userid
afcpincpcUserId :: Lens' AppFlowConnectorProfileInforNexusConnectorProfileCredentials (Val Text)
afcpincpcUserId = lens _appFlowConnectorProfileInforNexusConnectorProfileCredentialsUserId (\s a -> s { _appFlowConnectorProfileInforNexusConnectorProfileCredentialsUserId = a })
