{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html

module Stratosphere.Resources.CognitoIdentityPool where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoIdentityPoolCognitoIdentityProvider
import Stratosphere.ResourceProperties.CognitoIdentityPoolCognitoStreams
import Stratosphere.ResourceProperties.CognitoIdentityPoolPushSync

-- | Full data type definition for CognitoIdentityPool. See
-- 'cognitoIdentityPool' for a more convenient constructor.
data CognitoIdentityPool =
  CognitoIdentityPool
  { _cognitoIdentityPoolAllowClassicFlow :: Maybe (Val Bool)
  , _cognitoIdentityPoolAllowUnauthenticatedIdentities :: Val Bool
  , _cognitoIdentityPoolCognitoEvents :: Maybe Object
  , _cognitoIdentityPoolCognitoIdentityProviders :: Maybe [CognitoIdentityPoolCognitoIdentityProvider]
  , _cognitoIdentityPoolCognitoStreams :: Maybe CognitoIdentityPoolCognitoStreams
  , _cognitoIdentityPoolDeveloperProviderName :: Maybe (Val Text)
  , _cognitoIdentityPoolIdentityPoolName :: Maybe (Val Text)
  , _cognitoIdentityPoolOpenIdConnectProviderARNs :: Maybe (ValList Text)
  , _cognitoIdentityPoolPushSync :: Maybe CognitoIdentityPoolPushSync
  , _cognitoIdentityPoolSamlProviderARNs :: Maybe (ValList Text)
  , _cognitoIdentityPoolSupportedLoginProviders :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties CognitoIdentityPool where
  toResourceProperties CognitoIdentityPool{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::IdentityPool"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AllowClassicFlow",) . toJSON) _cognitoIdentityPoolAllowClassicFlow
        , (Just . ("AllowUnauthenticatedIdentities",) . toJSON) _cognitoIdentityPoolAllowUnauthenticatedIdentities
        , fmap (("CognitoEvents",) . toJSON) _cognitoIdentityPoolCognitoEvents
        , fmap (("CognitoIdentityProviders",) . toJSON) _cognitoIdentityPoolCognitoIdentityProviders
        , fmap (("CognitoStreams",) . toJSON) _cognitoIdentityPoolCognitoStreams
        , fmap (("DeveloperProviderName",) . toJSON) _cognitoIdentityPoolDeveloperProviderName
        , fmap (("IdentityPoolName",) . toJSON) _cognitoIdentityPoolIdentityPoolName
        , fmap (("OpenIdConnectProviderARNs",) . toJSON) _cognitoIdentityPoolOpenIdConnectProviderARNs
        , fmap (("PushSync",) . toJSON) _cognitoIdentityPoolPushSync
        , fmap (("SamlProviderARNs",) . toJSON) _cognitoIdentityPoolSamlProviderARNs
        , fmap (("SupportedLoginProviders",) . toJSON) _cognitoIdentityPoolSupportedLoginProviders
        ]
    }

-- | Constructor for 'CognitoIdentityPool' containing required fields as
-- arguments.
cognitoIdentityPool
  :: Val Bool -- ^ 'cipAllowUnauthenticatedIdentities'
  -> CognitoIdentityPool
cognitoIdentityPool allowUnauthenticatedIdentitiesarg =
  CognitoIdentityPool
  { _cognitoIdentityPoolAllowClassicFlow = Nothing
  , _cognitoIdentityPoolAllowUnauthenticatedIdentities = allowUnauthenticatedIdentitiesarg
  , _cognitoIdentityPoolCognitoEvents = Nothing
  , _cognitoIdentityPoolCognitoIdentityProviders = Nothing
  , _cognitoIdentityPoolCognitoStreams = Nothing
  , _cognitoIdentityPoolDeveloperProviderName = Nothing
  , _cognitoIdentityPoolIdentityPoolName = Nothing
  , _cognitoIdentityPoolOpenIdConnectProviderARNs = Nothing
  , _cognitoIdentityPoolPushSync = Nothing
  , _cognitoIdentityPoolSamlProviderARNs = Nothing
  , _cognitoIdentityPoolSupportedLoginProviders = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-allowclassicflow
cipAllowClassicFlow :: Lens' CognitoIdentityPool (Maybe (Val Bool))
cipAllowClassicFlow = lens _cognitoIdentityPoolAllowClassicFlow (\s a -> s { _cognitoIdentityPoolAllowClassicFlow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-allowunauthenticatedidentities
cipAllowUnauthenticatedIdentities :: Lens' CognitoIdentityPool (Val Bool)
cipAllowUnauthenticatedIdentities = lens _cognitoIdentityPoolAllowUnauthenticatedIdentities (\s a -> s { _cognitoIdentityPoolAllowUnauthenticatedIdentities = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-cognitoevents
cipCognitoEvents :: Lens' CognitoIdentityPool (Maybe Object)
cipCognitoEvents = lens _cognitoIdentityPoolCognitoEvents (\s a -> s { _cognitoIdentityPoolCognitoEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-cognitoidentityproviders
cipCognitoIdentityProviders :: Lens' CognitoIdentityPool (Maybe [CognitoIdentityPoolCognitoIdentityProvider])
cipCognitoIdentityProviders = lens _cognitoIdentityPoolCognitoIdentityProviders (\s a -> s { _cognitoIdentityPoolCognitoIdentityProviders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-cognitostreams
cipCognitoStreams :: Lens' CognitoIdentityPool (Maybe CognitoIdentityPoolCognitoStreams)
cipCognitoStreams = lens _cognitoIdentityPoolCognitoStreams (\s a -> s { _cognitoIdentityPoolCognitoStreams = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-developerprovidername
cipDeveloperProviderName :: Lens' CognitoIdentityPool (Maybe (Val Text))
cipDeveloperProviderName = lens _cognitoIdentityPoolDeveloperProviderName (\s a -> s { _cognitoIdentityPoolDeveloperProviderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-identitypoolname
cipIdentityPoolName :: Lens' CognitoIdentityPool (Maybe (Val Text))
cipIdentityPoolName = lens _cognitoIdentityPoolIdentityPoolName (\s a -> s { _cognitoIdentityPoolIdentityPoolName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-openidconnectproviderarns
cipOpenIdConnectProviderARNs :: Lens' CognitoIdentityPool (Maybe (ValList Text))
cipOpenIdConnectProviderARNs = lens _cognitoIdentityPoolOpenIdConnectProviderARNs (\s a -> s { _cognitoIdentityPoolOpenIdConnectProviderARNs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-pushsync
cipPushSync :: Lens' CognitoIdentityPool (Maybe CognitoIdentityPoolPushSync)
cipPushSync = lens _cognitoIdentityPoolPushSync (\s a -> s { _cognitoIdentityPoolPushSync = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-samlproviderarns
cipSamlProviderARNs :: Lens' CognitoIdentityPool (Maybe (ValList Text))
cipSamlProviderARNs = lens _cognitoIdentityPoolSamlProviderARNs (\s a -> s { _cognitoIdentityPoolSamlProviderARNs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-supportedloginproviders
cipSupportedLoginProviders :: Lens' CognitoIdentityPool (Maybe Object)
cipSupportedLoginProviders = lens _cognitoIdentityPoolSupportedLoginProviders (\s a -> s { _cognitoIdentityPoolSupportedLoginProviders = a })
