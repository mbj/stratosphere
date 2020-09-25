{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html

module Stratosphere.Resources.AppSyncGraphQLApi where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncGraphQLApiLogConfig
import Stratosphere.ResourceProperties.AppSyncGraphQLApiOpenIDConnectConfig
import Stratosphere.ResourceProperties.AppSyncGraphQLApiUserPoolConfig

-- | Full data type definition for AppSyncGraphQLApi. See 'appSyncGraphQLApi'
-- for a more convenient constructor.
data AppSyncGraphQLApi =
  AppSyncGraphQLApi
  { _appSyncGraphQLApiAuthenticationType :: Val Text
  , _appSyncGraphQLApiLogConfig :: Maybe AppSyncGraphQLApiLogConfig
  , _appSyncGraphQLApiName :: Val Text
  , _appSyncGraphQLApiOpenIDConnectConfig :: Maybe AppSyncGraphQLApiOpenIDConnectConfig
  , _appSyncGraphQLApiUserPoolConfig :: Maybe AppSyncGraphQLApiUserPoolConfig
  , _appSyncGraphQLApiXrayEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToResourceProperties AppSyncGraphQLApi where
  toResourceProperties AppSyncGraphQLApi{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppSync::GraphQLApi"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("AuthenticationType",) . toJSON) _appSyncGraphQLApiAuthenticationType
        , fmap (("LogConfig",) . toJSON) _appSyncGraphQLApiLogConfig
        , (Just . ("Name",) . toJSON) _appSyncGraphQLApiName
        , fmap (("OpenIDConnectConfig",) . toJSON) _appSyncGraphQLApiOpenIDConnectConfig
        , fmap (("UserPoolConfig",) . toJSON) _appSyncGraphQLApiUserPoolConfig
        , fmap (("XrayEnabled",) . toJSON) _appSyncGraphQLApiXrayEnabled
        ]
    }

-- | Constructor for 'AppSyncGraphQLApi' containing required fields as
-- arguments.
appSyncGraphQLApi
  :: Val Text -- ^ 'asgqlaAuthenticationType'
  -> Val Text -- ^ 'asgqlaName'
  -> AppSyncGraphQLApi
appSyncGraphQLApi authenticationTypearg namearg =
  AppSyncGraphQLApi
  { _appSyncGraphQLApiAuthenticationType = authenticationTypearg
  , _appSyncGraphQLApiLogConfig = Nothing
  , _appSyncGraphQLApiName = namearg
  , _appSyncGraphQLApiOpenIDConnectConfig = Nothing
  , _appSyncGraphQLApiUserPoolConfig = Nothing
  , _appSyncGraphQLApiXrayEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-authenticationtype
asgqlaAuthenticationType :: Lens' AppSyncGraphQLApi (Val Text)
asgqlaAuthenticationType = lens _appSyncGraphQLApiAuthenticationType (\s a -> s { _appSyncGraphQLApiAuthenticationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-logconfig
asgqlaLogConfig :: Lens' AppSyncGraphQLApi (Maybe AppSyncGraphQLApiLogConfig)
asgqlaLogConfig = lens _appSyncGraphQLApiLogConfig (\s a -> s { _appSyncGraphQLApiLogConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-name
asgqlaName :: Lens' AppSyncGraphQLApi (Val Text)
asgqlaName = lens _appSyncGraphQLApiName (\s a -> s { _appSyncGraphQLApiName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-openidconnectconfig
asgqlaOpenIDConnectConfig :: Lens' AppSyncGraphQLApi (Maybe AppSyncGraphQLApiOpenIDConnectConfig)
asgqlaOpenIDConnectConfig = lens _appSyncGraphQLApiOpenIDConnectConfig (\s a -> s { _appSyncGraphQLApiOpenIDConnectConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-userpoolconfig
asgqlaUserPoolConfig :: Lens' AppSyncGraphQLApi (Maybe AppSyncGraphQLApiUserPoolConfig)
asgqlaUserPoolConfig = lens _appSyncGraphQLApiUserPoolConfig (\s a -> s { _appSyncGraphQLApiUserPoolConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-xrayenabled
asgqlaXrayEnabled :: Lens' AppSyncGraphQLApi (Maybe (Val Bool))
asgqlaXrayEnabled = lens _appSyncGraphQLApiXrayEnabled (\s a -> s { _appSyncGraphQLApiXrayEnabled = a })
