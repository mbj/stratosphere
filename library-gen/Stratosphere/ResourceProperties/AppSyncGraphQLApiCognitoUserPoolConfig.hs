{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html

module Stratosphere.ResourceProperties.AppSyncGraphQLApiCognitoUserPoolConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncGraphQLApiCognitoUserPoolConfig. See
-- 'appSyncGraphQLApiCognitoUserPoolConfig' for a more convenient
-- constructor.
data AppSyncGraphQLApiCognitoUserPoolConfig =
  AppSyncGraphQLApiCognitoUserPoolConfig
  { _appSyncGraphQLApiCognitoUserPoolConfigAppIdClientRegex :: Maybe (Val Text)
  , _appSyncGraphQLApiCognitoUserPoolConfigAwsRegion :: Maybe (Val Text)
  , _appSyncGraphQLApiCognitoUserPoolConfigUserPoolId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppSyncGraphQLApiCognitoUserPoolConfig where
  toJSON AppSyncGraphQLApiCognitoUserPoolConfig{..} =
    object $
    catMaybes
    [ fmap (("AppIdClientRegex",) . toJSON) _appSyncGraphQLApiCognitoUserPoolConfigAppIdClientRegex
    , fmap (("AwsRegion",) . toJSON) _appSyncGraphQLApiCognitoUserPoolConfigAwsRegion
    , fmap (("UserPoolId",) . toJSON) _appSyncGraphQLApiCognitoUserPoolConfigUserPoolId
    ]

-- | Constructor for 'AppSyncGraphQLApiCognitoUserPoolConfig' containing
-- required fields as arguments.
appSyncGraphQLApiCognitoUserPoolConfig
  :: AppSyncGraphQLApiCognitoUserPoolConfig
appSyncGraphQLApiCognitoUserPoolConfig  =
  AppSyncGraphQLApiCognitoUserPoolConfig
  { _appSyncGraphQLApiCognitoUserPoolConfigAppIdClientRegex = Nothing
  , _appSyncGraphQLApiCognitoUserPoolConfigAwsRegion = Nothing
  , _appSyncGraphQLApiCognitoUserPoolConfigUserPoolId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-appidclientregex
asgqlacupcAppIdClientRegex :: Lens' AppSyncGraphQLApiCognitoUserPoolConfig (Maybe (Val Text))
asgqlacupcAppIdClientRegex = lens _appSyncGraphQLApiCognitoUserPoolConfigAppIdClientRegex (\s a -> s { _appSyncGraphQLApiCognitoUserPoolConfigAppIdClientRegex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-awsregion
asgqlacupcAwsRegion :: Lens' AppSyncGraphQLApiCognitoUserPoolConfig (Maybe (Val Text))
asgqlacupcAwsRegion = lens _appSyncGraphQLApiCognitoUserPoolConfigAwsRegion (\s a -> s { _appSyncGraphQLApiCognitoUserPoolConfigAwsRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-userpoolid
asgqlacupcUserPoolId :: Lens' AppSyncGraphQLApiCognitoUserPoolConfig (Maybe (Val Text))
asgqlacupcUserPoolId = lens _appSyncGraphQLApiCognitoUserPoolConfigUserPoolId (\s a -> s { _appSyncGraphQLApiCognitoUserPoolConfigUserPoolId = a })
