{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectoroauthrequest.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorOAuthRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileConnectorOAuthRequest. See
-- 'appFlowConnectorProfileConnectorOAuthRequest' for a more convenient
-- constructor.
data AppFlowConnectorProfileConnectorOAuthRequest =
  AppFlowConnectorProfileConnectorOAuthRequest
  { _appFlowConnectorProfileConnectorOAuthRequestAuthCode :: Maybe (Val Text)
  , _appFlowConnectorProfileConnectorOAuthRequestRedirectUri :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileConnectorOAuthRequest where
  toJSON AppFlowConnectorProfileConnectorOAuthRequest{..} =
    object $
    catMaybes
    [ fmap (("AuthCode",) . toJSON) _appFlowConnectorProfileConnectorOAuthRequestAuthCode
    , fmap (("RedirectUri",) . toJSON) _appFlowConnectorProfileConnectorOAuthRequestRedirectUri
    ]

-- | Constructor for 'AppFlowConnectorProfileConnectorOAuthRequest' containing
-- required fields as arguments.
appFlowConnectorProfileConnectorOAuthRequest
  :: AppFlowConnectorProfileConnectorOAuthRequest
appFlowConnectorProfileConnectorOAuthRequest  =
  AppFlowConnectorProfileConnectorOAuthRequest
  { _appFlowConnectorProfileConnectorOAuthRequestAuthCode = Nothing
  , _appFlowConnectorProfileConnectorOAuthRequestRedirectUri = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectoroauthrequest.html#cfn-appflow-connectorprofile-connectoroauthrequest-authcode
afcpcoarAuthCode :: Lens' AppFlowConnectorProfileConnectorOAuthRequest (Maybe (Val Text))
afcpcoarAuthCode = lens _appFlowConnectorProfileConnectorOAuthRequestAuthCode (\s a -> s { _appFlowConnectorProfileConnectorOAuthRequestAuthCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectoroauthrequest.html#cfn-appflow-connectorprofile-connectoroauthrequest-redirecturi
afcpcoarRedirectUri :: Lens' AppFlowConnectorProfileConnectorOAuthRequest (Maybe (Val Text))
afcpcoarRedirectUri = lens _appFlowConnectorProfileConnectorOAuthRequestRedirectUri (\s a -> s { _appFlowConnectorProfileConnectorOAuthRequestRedirectUri = a })
