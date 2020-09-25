{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-salesforceconnectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileSalesforceConnectorProfileCredentials where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorOAuthRequest

-- | Full data type definition for
-- AppFlowConnectorProfileSalesforceConnectorProfileCredentials. See
-- 'appFlowConnectorProfileSalesforceConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileSalesforceConnectorProfileCredentials =
  AppFlowConnectorProfileSalesforceConnectorProfileCredentials
  { _appFlowConnectorProfileSalesforceConnectorProfileCredentialsAccessToken :: Maybe (Val Text)
  , _appFlowConnectorProfileSalesforceConnectorProfileCredentialsConnectorOAuthRequest :: Maybe AppFlowConnectorProfileConnectorOAuthRequest
  , _appFlowConnectorProfileSalesforceConnectorProfileCredentialsRefreshToken :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileSalesforceConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileSalesforceConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ fmap (("AccessToken",) . toJSON) _appFlowConnectorProfileSalesforceConnectorProfileCredentialsAccessToken
    , fmap (("ConnectorOAuthRequest",) . toJSON) _appFlowConnectorProfileSalesforceConnectorProfileCredentialsConnectorOAuthRequest
    , fmap (("RefreshToken",) . toJSON) _appFlowConnectorProfileSalesforceConnectorProfileCredentialsRefreshToken
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileSalesforceConnectorProfileCredentials' containing
-- required fields as arguments.
appFlowConnectorProfileSalesforceConnectorProfileCredentials
  :: AppFlowConnectorProfileSalesforceConnectorProfileCredentials
appFlowConnectorProfileSalesforceConnectorProfileCredentials  =
  AppFlowConnectorProfileSalesforceConnectorProfileCredentials
  { _appFlowConnectorProfileSalesforceConnectorProfileCredentialsAccessToken = Nothing
  , _appFlowConnectorProfileSalesforceConnectorProfileCredentialsConnectorOAuthRequest = Nothing
  , _appFlowConnectorProfileSalesforceConnectorProfileCredentialsRefreshToken = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-salesforceconnectorprofilecredentials.html#cfn-appflow-connectorprofile-salesforceconnectorprofilecredentials-accesstoken
afcpscpcAccessToken :: Lens' AppFlowConnectorProfileSalesforceConnectorProfileCredentials (Maybe (Val Text))
afcpscpcAccessToken = lens _appFlowConnectorProfileSalesforceConnectorProfileCredentialsAccessToken (\s a -> s { _appFlowConnectorProfileSalesforceConnectorProfileCredentialsAccessToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-salesforceconnectorprofilecredentials.html#cfn-appflow-connectorprofile-salesforceconnectorprofilecredentials-connectoroauthrequest
afcpscpcConnectorOAuthRequest :: Lens' AppFlowConnectorProfileSalesforceConnectorProfileCredentials (Maybe AppFlowConnectorProfileConnectorOAuthRequest)
afcpscpcConnectorOAuthRequest = lens _appFlowConnectorProfileSalesforceConnectorProfileCredentialsConnectorOAuthRequest (\s a -> s { _appFlowConnectorProfileSalesforceConnectorProfileCredentialsConnectorOAuthRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-salesforceconnectorprofilecredentials.html#cfn-appflow-connectorprofile-salesforceconnectorprofilecredentials-refreshtoken
afcpscpcRefreshToken :: Lens' AppFlowConnectorProfileSalesforceConnectorProfileCredentials (Maybe (Val Text))
afcpscpcRefreshToken = lens _appFlowConnectorProfileSalesforceConnectorProfileCredentialsRefreshToken (\s a -> s { _appFlowConnectorProfileSalesforceConnectorProfileCredentialsRefreshToken = a })
