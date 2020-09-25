{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html

module Stratosphere.Resources.CognitoUserPoolClient where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolClientAnalyticsConfiguration
import Stratosphere.ResourceProperties.CognitoUserPoolClientTokenValidityUnits

-- | Full data type definition for CognitoUserPoolClient. See
-- 'cognitoUserPoolClient' for a more convenient constructor.
data CognitoUserPoolClient =
  CognitoUserPoolClient
  { _cognitoUserPoolClientAccessTokenValidity :: Maybe (Val Integer)
  , _cognitoUserPoolClientAllowedOAuthFlows :: Maybe (ValList Text)
  , _cognitoUserPoolClientAllowedOAuthFlowsUserPoolClient :: Maybe (Val Bool)
  , _cognitoUserPoolClientAllowedOAuthScopes :: Maybe (ValList Text)
  , _cognitoUserPoolClientAnalyticsConfiguration :: Maybe CognitoUserPoolClientAnalyticsConfiguration
  , _cognitoUserPoolClientCallbackURLs :: Maybe (ValList Text)
  , _cognitoUserPoolClientClientName :: Maybe (Val Text)
  , _cognitoUserPoolClientDefaultRedirectURI :: Maybe (Val Text)
  , _cognitoUserPoolClientExplicitAuthFlows :: Maybe (ValList Text)
  , _cognitoUserPoolClientGenerateSecret :: Maybe (Val Bool)
  , _cognitoUserPoolClientIdTokenValidity :: Maybe (Val Integer)
  , _cognitoUserPoolClientLogoutURLs :: Maybe (ValList Text)
  , _cognitoUserPoolClientPreventUserExistenceErrors :: Maybe (Val Text)
  , _cognitoUserPoolClientReadAttributes :: Maybe (ValList Text)
  , _cognitoUserPoolClientRefreshTokenValidity :: Maybe (Val Integer)
  , _cognitoUserPoolClientSupportedIdentityProviders :: Maybe (ValList Text)
  , _cognitoUserPoolClientTokenValidityUnits :: Maybe CognitoUserPoolClientTokenValidityUnits
  , _cognitoUserPoolClientUserPoolId :: Val Text
  , _cognitoUserPoolClientWriteAttributes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPoolClient where
  toResourceProperties CognitoUserPoolClient{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPoolClient"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AccessTokenValidity",) . toJSON) _cognitoUserPoolClientAccessTokenValidity
        , fmap (("AllowedOAuthFlows",) . toJSON) _cognitoUserPoolClientAllowedOAuthFlows
        , fmap (("AllowedOAuthFlowsUserPoolClient",) . toJSON) _cognitoUserPoolClientAllowedOAuthFlowsUserPoolClient
        , fmap (("AllowedOAuthScopes",) . toJSON) _cognitoUserPoolClientAllowedOAuthScopes
        , fmap (("AnalyticsConfiguration",) . toJSON) _cognitoUserPoolClientAnalyticsConfiguration
        , fmap (("CallbackURLs",) . toJSON) _cognitoUserPoolClientCallbackURLs
        , fmap (("ClientName",) . toJSON) _cognitoUserPoolClientClientName
        , fmap (("DefaultRedirectURI",) . toJSON) _cognitoUserPoolClientDefaultRedirectURI
        , fmap (("ExplicitAuthFlows",) . toJSON) _cognitoUserPoolClientExplicitAuthFlows
        , fmap (("GenerateSecret",) . toJSON) _cognitoUserPoolClientGenerateSecret
        , fmap (("IdTokenValidity",) . toJSON) _cognitoUserPoolClientIdTokenValidity
        , fmap (("LogoutURLs",) . toJSON) _cognitoUserPoolClientLogoutURLs
        , fmap (("PreventUserExistenceErrors",) . toJSON) _cognitoUserPoolClientPreventUserExistenceErrors
        , fmap (("ReadAttributes",) . toJSON) _cognitoUserPoolClientReadAttributes
        , fmap (("RefreshTokenValidity",) . toJSON) _cognitoUserPoolClientRefreshTokenValidity
        , fmap (("SupportedIdentityProviders",) . toJSON) _cognitoUserPoolClientSupportedIdentityProviders
        , fmap (("TokenValidityUnits",) . toJSON) _cognitoUserPoolClientTokenValidityUnits
        , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolClientUserPoolId
        , fmap (("WriteAttributes",) . toJSON) _cognitoUserPoolClientWriteAttributes
        ]
    }

-- | Constructor for 'CognitoUserPoolClient' containing required fields as
-- arguments.
cognitoUserPoolClient
  :: Val Text -- ^ 'cupcUserPoolId'
  -> CognitoUserPoolClient
cognitoUserPoolClient userPoolIdarg =
  CognitoUserPoolClient
  { _cognitoUserPoolClientAccessTokenValidity = Nothing
  , _cognitoUserPoolClientAllowedOAuthFlows = Nothing
  , _cognitoUserPoolClientAllowedOAuthFlowsUserPoolClient = Nothing
  , _cognitoUserPoolClientAllowedOAuthScopes = Nothing
  , _cognitoUserPoolClientAnalyticsConfiguration = Nothing
  , _cognitoUserPoolClientCallbackURLs = Nothing
  , _cognitoUserPoolClientClientName = Nothing
  , _cognitoUserPoolClientDefaultRedirectURI = Nothing
  , _cognitoUserPoolClientExplicitAuthFlows = Nothing
  , _cognitoUserPoolClientGenerateSecret = Nothing
  , _cognitoUserPoolClientIdTokenValidity = Nothing
  , _cognitoUserPoolClientLogoutURLs = Nothing
  , _cognitoUserPoolClientPreventUserExistenceErrors = Nothing
  , _cognitoUserPoolClientReadAttributes = Nothing
  , _cognitoUserPoolClientRefreshTokenValidity = Nothing
  , _cognitoUserPoolClientSupportedIdentityProviders = Nothing
  , _cognitoUserPoolClientTokenValidityUnits = Nothing
  , _cognitoUserPoolClientUserPoolId = userPoolIdarg
  , _cognitoUserPoolClientWriteAttributes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-accesstokenvalidity
cupcAccessTokenValidity :: Lens' CognitoUserPoolClient (Maybe (Val Integer))
cupcAccessTokenValidity = lens _cognitoUserPoolClientAccessTokenValidity (\s a -> s { _cognitoUserPoolClientAccessTokenValidity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthflows
cupcAllowedOAuthFlows :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcAllowedOAuthFlows = lens _cognitoUserPoolClientAllowedOAuthFlows (\s a -> s { _cognitoUserPoolClientAllowedOAuthFlows = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthflowsuserpoolclient
cupcAllowedOAuthFlowsUserPoolClient :: Lens' CognitoUserPoolClient (Maybe (Val Bool))
cupcAllowedOAuthFlowsUserPoolClient = lens _cognitoUserPoolClientAllowedOAuthFlowsUserPoolClient (\s a -> s { _cognitoUserPoolClientAllowedOAuthFlowsUserPoolClient = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthscopes
cupcAllowedOAuthScopes :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcAllowedOAuthScopes = lens _cognitoUserPoolClientAllowedOAuthScopes (\s a -> s { _cognitoUserPoolClientAllowedOAuthScopes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-analyticsconfiguration
cupcAnalyticsConfiguration :: Lens' CognitoUserPoolClient (Maybe CognitoUserPoolClientAnalyticsConfiguration)
cupcAnalyticsConfiguration = lens _cognitoUserPoolClientAnalyticsConfiguration (\s a -> s { _cognitoUserPoolClientAnalyticsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-callbackurls
cupcCallbackURLs :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcCallbackURLs = lens _cognitoUserPoolClientCallbackURLs (\s a -> s { _cognitoUserPoolClientCallbackURLs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-clientname
cupcClientName :: Lens' CognitoUserPoolClient (Maybe (Val Text))
cupcClientName = lens _cognitoUserPoolClientClientName (\s a -> s { _cognitoUserPoolClientClientName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-defaultredirecturi
cupcDefaultRedirectURI :: Lens' CognitoUserPoolClient (Maybe (Val Text))
cupcDefaultRedirectURI = lens _cognitoUserPoolClientDefaultRedirectURI (\s a -> s { _cognitoUserPoolClientDefaultRedirectURI = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-explicitauthflows
cupcExplicitAuthFlows :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcExplicitAuthFlows = lens _cognitoUserPoolClientExplicitAuthFlows (\s a -> s { _cognitoUserPoolClientExplicitAuthFlows = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-generatesecret
cupcGenerateSecret :: Lens' CognitoUserPoolClient (Maybe (Val Bool))
cupcGenerateSecret = lens _cognitoUserPoolClientGenerateSecret (\s a -> s { _cognitoUserPoolClientGenerateSecret = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-idtokenvalidity
cupcIdTokenValidity :: Lens' CognitoUserPoolClient (Maybe (Val Integer))
cupcIdTokenValidity = lens _cognitoUserPoolClientIdTokenValidity (\s a -> s { _cognitoUserPoolClientIdTokenValidity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-logouturls
cupcLogoutURLs :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcLogoutURLs = lens _cognitoUserPoolClientLogoutURLs (\s a -> s { _cognitoUserPoolClientLogoutURLs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-preventuserexistenceerrors
cupcPreventUserExistenceErrors :: Lens' CognitoUserPoolClient (Maybe (Val Text))
cupcPreventUserExistenceErrors = lens _cognitoUserPoolClientPreventUserExistenceErrors (\s a -> s { _cognitoUserPoolClientPreventUserExistenceErrors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-readattributes
cupcReadAttributes :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcReadAttributes = lens _cognitoUserPoolClientReadAttributes (\s a -> s { _cognitoUserPoolClientReadAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-refreshtokenvalidity
cupcRefreshTokenValidity :: Lens' CognitoUserPoolClient (Maybe (Val Integer))
cupcRefreshTokenValidity = lens _cognitoUserPoolClientRefreshTokenValidity (\s a -> s { _cognitoUserPoolClientRefreshTokenValidity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-supportedidentityproviders
cupcSupportedIdentityProviders :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcSupportedIdentityProviders = lens _cognitoUserPoolClientSupportedIdentityProviders (\s a -> s { _cognitoUserPoolClientSupportedIdentityProviders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-tokenvalidityunits
cupcTokenValidityUnits :: Lens' CognitoUserPoolClient (Maybe CognitoUserPoolClientTokenValidityUnits)
cupcTokenValidityUnits = lens _cognitoUserPoolClientTokenValidityUnits (\s a -> s { _cognitoUserPoolClientTokenValidityUnits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-userpoolid
cupcUserPoolId :: Lens' CognitoUserPoolClient (Val Text)
cupcUserPoolId = lens _cognitoUserPoolClientUserPoolId (\s a -> s { _cognitoUserPoolClientUserPoolId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-writeattributes
cupcWriteAttributes :: Lens' CognitoUserPoolClient (Maybe (ValList Text))
cupcWriteAttributes = lens _cognitoUserPoolClientWriteAttributes (\s a -> s { _cognitoUserPoolClientWriteAttributes = a })
