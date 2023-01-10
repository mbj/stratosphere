
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html

module Stratosphere.ResourceProperties.AppSyncGraphQLApiAdditionalAuthenticationProvider where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncGraphQLApiOpenIDConnectConfig
import Stratosphere.ResourceProperties.AppSyncGraphQLApiCognitoUserPoolConfig

-- | Full data type definition for
-- AppSyncGraphQLApiAdditionalAuthenticationProvider. See
-- 'appSyncGraphQLApiAdditionalAuthenticationProvider' for a more convenient
-- constructor.
data AppSyncGraphQLApiAdditionalAuthenticationProvider =
  AppSyncGraphQLApiAdditionalAuthenticationProvider
  { _appSyncGraphQLApiAdditionalAuthenticationProviderAuthenticationType :: Val Text
  , _appSyncGraphQLApiAdditionalAuthenticationProviderOpenIDConnectConfig :: Maybe AppSyncGraphQLApiOpenIDConnectConfig
  , _appSyncGraphQLApiAdditionalAuthenticationProviderUserPoolConfig :: Maybe AppSyncGraphQLApiCognitoUserPoolConfig
  } deriving (Show, Eq)

instance ToJSON AppSyncGraphQLApiAdditionalAuthenticationProvider where
  toJSON AppSyncGraphQLApiAdditionalAuthenticationProvider{..} =
    object $
    catMaybes
    [ (Just . ("AuthenticationType",) . toJSON) _appSyncGraphQLApiAdditionalAuthenticationProviderAuthenticationType
    , fmap (("OpenIDConnectConfig",) . toJSON) _appSyncGraphQLApiAdditionalAuthenticationProviderOpenIDConnectConfig
    , fmap (("UserPoolConfig",) . toJSON) _appSyncGraphQLApiAdditionalAuthenticationProviderUserPoolConfig
    ]

-- | Constructor for 'AppSyncGraphQLApiAdditionalAuthenticationProvider'
-- containing required fields as arguments.
appSyncGraphQLApiAdditionalAuthenticationProvider
  :: Val Text -- ^ 'asgqlaaapAuthenticationType'
  -> AppSyncGraphQLApiAdditionalAuthenticationProvider
appSyncGraphQLApiAdditionalAuthenticationProvider authenticationTypearg =
  AppSyncGraphQLApiAdditionalAuthenticationProvider
  { _appSyncGraphQLApiAdditionalAuthenticationProviderAuthenticationType = authenticationTypearg
  , _appSyncGraphQLApiAdditionalAuthenticationProviderOpenIDConnectConfig = Nothing
  , _appSyncGraphQLApiAdditionalAuthenticationProviderUserPoolConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-authenticationtype
asgqlaaapAuthenticationType :: Lens' AppSyncGraphQLApiAdditionalAuthenticationProvider (Val Text)
asgqlaaapAuthenticationType = lens _appSyncGraphQLApiAdditionalAuthenticationProviderAuthenticationType (\s a -> s { _appSyncGraphQLApiAdditionalAuthenticationProviderAuthenticationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-openidconnectconfig
asgqlaaapOpenIDConnectConfig :: Lens' AppSyncGraphQLApiAdditionalAuthenticationProvider (Maybe AppSyncGraphQLApiOpenIDConnectConfig)
asgqlaaapOpenIDConnectConfig = lens _appSyncGraphQLApiAdditionalAuthenticationProviderOpenIDConnectConfig (\s a -> s { _appSyncGraphQLApiAdditionalAuthenticationProviderOpenIDConnectConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-userpoolconfig
asgqlaaapUserPoolConfig :: Lens' AppSyncGraphQLApiAdditionalAuthenticationProvider (Maybe AppSyncGraphQLApiCognitoUserPoolConfig)
asgqlaaapUserPoolConfig = lens _appSyncGraphQLApiAdditionalAuthenticationProviderUserPoolConfig (\s a -> s { _appSyncGraphQLApiAdditionalAuthenticationProviderUserPoolConfig = a })
