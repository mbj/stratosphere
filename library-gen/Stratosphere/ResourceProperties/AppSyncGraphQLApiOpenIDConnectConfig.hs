{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html

module Stratosphere.ResourceProperties.AppSyncGraphQLApiOpenIDConnectConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncGraphQLApiOpenIDConnectConfig. See
-- 'appSyncGraphQLApiOpenIDConnectConfig' for a more convenient constructor.
data AppSyncGraphQLApiOpenIDConnectConfig =
  AppSyncGraphQLApiOpenIDConnectConfig
  { _appSyncGraphQLApiOpenIDConnectConfigAuthTTL :: Maybe (Val Double)
  , _appSyncGraphQLApiOpenIDConnectConfigClientId :: Maybe (Val Text)
  , _appSyncGraphQLApiOpenIDConnectConfigIatTTL :: Maybe (Val Double)
  , _appSyncGraphQLApiOpenIDConnectConfigIssuer :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppSyncGraphQLApiOpenIDConnectConfig where
  toJSON AppSyncGraphQLApiOpenIDConnectConfig{..} =
    object $
    catMaybes
    [ fmap (("AuthTTL",) . toJSON . fmap Double') _appSyncGraphQLApiOpenIDConnectConfigAuthTTL
    , fmap (("ClientId",) . toJSON) _appSyncGraphQLApiOpenIDConnectConfigClientId
    , fmap (("IatTTL",) . toJSON . fmap Double') _appSyncGraphQLApiOpenIDConnectConfigIatTTL
    , fmap (("Issuer",) . toJSON) _appSyncGraphQLApiOpenIDConnectConfigIssuer
    ]

-- | Constructor for 'AppSyncGraphQLApiOpenIDConnectConfig' containing
-- required fields as arguments.
appSyncGraphQLApiOpenIDConnectConfig
  :: AppSyncGraphQLApiOpenIDConnectConfig
appSyncGraphQLApiOpenIDConnectConfig  =
  AppSyncGraphQLApiOpenIDConnectConfig
  { _appSyncGraphQLApiOpenIDConnectConfigAuthTTL = Nothing
  , _appSyncGraphQLApiOpenIDConnectConfigClientId = Nothing
  , _appSyncGraphQLApiOpenIDConnectConfigIatTTL = Nothing
  , _appSyncGraphQLApiOpenIDConnectConfigIssuer = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-authttl
asgqlaoidccAuthTTL :: Lens' AppSyncGraphQLApiOpenIDConnectConfig (Maybe (Val Double))
asgqlaoidccAuthTTL = lens _appSyncGraphQLApiOpenIDConnectConfigAuthTTL (\s a -> s { _appSyncGraphQLApiOpenIDConnectConfigAuthTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-clientid
asgqlaoidccClientId :: Lens' AppSyncGraphQLApiOpenIDConnectConfig (Maybe (Val Text))
asgqlaoidccClientId = lens _appSyncGraphQLApiOpenIDConnectConfigClientId (\s a -> s { _appSyncGraphQLApiOpenIDConnectConfigClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-iatttl
asgqlaoidccIatTTL :: Lens' AppSyncGraphQLApiOpenIDConnectConfig (Maybe (Val Double))
asgqlaoidccIatTTL = lens _appSyncGraphQLApiOpenIDConnectConfigIatTTL (\s a -> s { _appSyncGraphQLApiOpenIDConnectConfigIatTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-issuer
asgqlaoidccIssuer :: Lens' AppSyncGraphQLApiOpenIDConnectConfig (Maybe (Val Text))
asgqlaoidccIssuer = lens _appSyncGraphQLApiOpenIDConnectConfigIssuer (\s a -> s { _appSyncGraphQLApiOpenIDConnectConfigIssuer = a })
