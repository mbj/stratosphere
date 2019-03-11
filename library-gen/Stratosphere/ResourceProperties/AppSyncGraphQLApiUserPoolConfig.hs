{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html

module Stratosphere.ResourceProperties.AppSyncGraphQLApiUserPoolConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncGraphQLApiUserPoolConfig. See
-- 'appSyncGraphQLApiUserPoolConfig' for a more convenient constructor.
data AppSyncGraphQLApiUserPoolConfig =
  AppSyncGraphQLApiUserPoolConfig
  { _appSyncGraphQLApiUserPoolConfigAppIdClientRegex :: Maybe (Val Text)
  , _appSyncGraphQLApiUserPoolConfigAwsRegion :: Maybe (Val Text)
  , _appSyncGraphQLApiUserPoolConfigDefaultAction :: Maybe (Val Text)
  , _appSyncGraphQLApiUserPoolConfigUserPoolId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppSyncGraphQLApiUserPoolConfig where
  toJSON AppSyncGraphQLApiUserPoolConfig{..} =
    object $
    catMaybes
    [ fmap (("AppIdClientRegex",) . toJSON) _appSyncGraphQLApiUserPoolConfigAppIdClientRegex
    , fmap (("AwsRegion",) . toJSON) _appSyncGraphQLApiUserPoolConfigAwsRegion
    , fmap (("DefaultAction",) . toJSON) _appSyncGraphQLApiUserPoolConfigDefaultAction
    , fmap (("UserPoolId",) . toJSON) _appSyncGraphQLApiUserPoolConfigUserPoolId
    ]

-- | Constructor for 'AppSyncGraphQLApiUserPoolConfig' containing required
-- fields as arguments.
appSyncGraphQLApiUserPoolConfig
  :: AppSyncGraphQLApiUserPoolConfig
appSyncGraphQLApiUserPoolConfig  =
  AppSyncGraphQLApiUserPoolConfig
  { _appSyncGraphQLApiUserPoolConfigAppIdClientRegex = Nothing
  , _appSyncGraphQLApiUserPoolConfigAwsRegion = Nothing
  , _appSyncGraphQLApiUserPoolConfigDefaultAction = Nothing
  , _appSyncGraphQLApiUserPoolConfigUserPoolId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html#cfn-appsync-graphqlapi-userpoolconfig-appidclientregex
asgqlaupcAppIdClientRegex :: Lens' AppSyncGraphQLApiUserPoolConfig (Maybe (Val Text))
asgqlaupcAppIdClientRegex = lens _appSyncGraphQLApiUserPoolConfigAppIdClientRegex (\s a -> s { _appSyncGraphQLApiUserPoolConfigAppIdClientRegex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html#cfn-appsync-graphqlapi-userpoolconfig-awsregion
asgqlaupcAwsRegion :: Lens' AppSyncGraphQLApiUserPoolConfig (Maybe (Val Text))
asgqlaupcAwsRegion = lens _appSyncGraphQLApiUserPoolConfigAwsRegion (\s a -> s { _appSyncGraphQLApiUserPoolConfigAwsRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html#cfn-appsync-graphqlapi-userpoolconfig-defaultaction
asgqlaupcDefaultAction :: Lens' AppSyncGraphQLApiUserPoolConfig (Maybe (Val Text))
asgqlaupcDefaultAction = lens _appSyncGraphQLApiUserPoolConfigDefaultAction (\s a -> s { _appSyncGraphQLApiUserPoolConfigDefaultAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html#cfn-appsync-graphqlapi-userpoolconfig-userpoolid
asgqlaupcUserPoolId :: Lens' AppSyncGraphQLApiUserPoolConfig (Maybe (Val Text))
asgqlaupcUserPoolId = lens _appSyncGraphQLApiUserPoolConfigUserPoolId (\s a -> s { _appSyncGraphQLApiUserPoolConfigUserPoolId = a })
