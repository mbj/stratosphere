
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html

module Stratosphere.ResourceProperties.CognitoIdentityPoolCognitoIdentityProvider where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CognitoIdentityPoolCognitoIdentityProvider.
-- See 'cognitoIdentityPoolCognitoIdentityProvider' for a more convenient
-- constructor.
data CognitoIdentityPoolCognitoIdentityProvider =
  CognitoIdentityPoolCognitoIdentityProvider
  { _cognitoIdentityPoolCognitoIdentityProviderClientId :: Maybe (Val Text)
  , _cognitoIdentityPoolCognitoIdentityProviderProviderName :: Maybe (Val Text)
  , _cognitoIdentityPoolCognitoIdentityProviderServerSideTokenCheck :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CognitoIdentityPoolCognitoIdentityProvider where
  toJSON CognitoIdentityPoolCognitoIdentityProvider{..} =
    object $
    catMaybes
    [ fmap (("ClientId",) . toJSON) _cognitoIdentityPoolCognitoIdentityProviderClientId
    , fmap (("ProviderName",) . toJSON) _cognitoIdentityPoolCognitoIdentityProviderProviderName
    , fmap (("ServerSideTokenCheck",) . toJSON) _cognitoIdentityPoolCognitoIdentityProviderServerSideTokenCheck
    ]

-- | Constructor for 'CognitoIdentityPoolCognitoIdentityProvider' containing
-- required fields as arguments.
cognitoIdentityPoolCognitoIdentityProvider
  :: CognitoIdentityPoolCognitoIdentityProvider
cognitoIdentityPoolCognitoIdentityProvider  =
  CognitoIdentityPoolCognitoIdentityProvider
  { _cognitoIdentityPoolCognitoIdentityProviderClientId = Nothing
  , _cognitoIdentityPoolCognitoIdentityProviderProviderName = Nothing
  , _cognitoIdentityPoolCognitoIdentityProviderServerSideTokenCheck = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-clientid
cipcipClientId :: Lens' CognitoIdentityPoolCognitoIdentityProvider (Maybe (Val Text))
cipcipClientId = lens _cognitoIdentityPoolCognitoIdentityProviderClientId (\s a -> s { _cognitoIdentityPoolCognitoIdentityProviderClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-providername
cipcipProviderName :: Lens' CognitoIdentityPoolCognitoIdentityProvider (Maybe (Val Text))
cipcipProviderName = lens _cognitoIdentityPoolCognitoIdentityProviderProviderName (\s a -> s { _cognitoIdentityPoolCognitoIdentityProviderProviderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-serversidetokencheck
cipcipServerSideTokenCheck :: Lens' CognitoIdentityPoolCognitoIdentityProvider (Maybe (Val Bool))
cipcipServerSideTokenCheck = lens _cognitoIdentityPoolCognitoIdentityProviderServerSideTokenCheck (\s a -> s { _cognitoIdentityPoolCognitoIdentityProviderServerSideTokenCheck = a })
