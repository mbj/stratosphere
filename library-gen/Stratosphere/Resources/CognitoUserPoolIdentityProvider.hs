{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html

module Stratosphere.Resources.CognitoUserPoolIdentityProvider where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolIdentityProvider. See
-- 'cognitoUserPoolIdentityProvider' for a more convenient constructor.
data CognitoUserPoolIdentityProvider =
  CognitoUserPoolIdentityProvider
  { _cognitoUserPoolIdentityProviderAttributeMapping :: Maybe Object
  , _cognitoUserPoolIdentityProviderIdpIdentifiers :: Maybe (ValList Text)
  , _cognitoUserPoolIdentityProviderProviderDetails :: Maybe Object
  , _cognitoUserPoolIdentityProviderProviderName :: Val Text
  , _cognitoUserPoolIdentityProviderProviderType :: Val Text
  , _cognitoUserPoolIdentityProviderUserPoolId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPoolIdentityProvider where
  toResourceProperties CognitoUserPoolIdentityProvider{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPoolIdentityProvider"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AttributeMapping",) . toJSON) _cognitoUserPoolIdentityProviderAttributeMapping
        , fmap (("IdpIdentifiers",) . toJSON) _cognitoUserPoolIdentityProviderIdpIdentifiers
        , fmap (("ProviderDetails",) . toJSON) _cognitoUserPoolIdentityProviderProviderDetails
        , (Just . ("ProviderName",) . toJSON) _cognitoUserPoolIdentityProviderProviderName
        , (Just . ("ProviderType",) . toJSON) _cognitoUserPoolIdentityProviderProviderType
        , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolIdentityProviderUserPoolId
        ]
    }

-- | Constructor for 'CognitoUserPoolIdentityProvider' containing required
-- fields as arguments.
cognitoUserPoolIdentityProvider
  :: Val Text -- ^ 'cupipProviderName'
  -> Val Text -- ^ 'cupipProviderType'
  -> Val Text -- ^ 'cupipUserPoolId'
  -> CognitoUserPoolIdentityProvider
cognitoUserPoolIdentityProvider providerNamearg providerTypearg userPoolIdarg =
  CognitoUserPoolIdentityProvider
  { _cognitoUserPoolIdentityProviderAttributeMapping = Nothing
  , _cognitoUserPoolIdentityProviderIdpIdentifiers = Nothing
  , _cognitoUserPoolIdentityProviderProviderDetails = Nothing
  , _cognitoUserPoolIdentityProviderProviderName = providerNamearg
  , _cognitoUserPoolIdentityProviderProviderType = providerTypearg
  , _cognitoUserPoolIdentityProviderUserPoolId = userPoolIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-attributemapping
cupipAttributeMapping :: Lens' CognitoUserPoolIdentityProvider (Maybe Object)
cupipAttributeMapping = lens _cognitoUserPoolIdentityProviderAttributeMapping (\s a -> s { _cognitoUserPoolIdentityProviderAttributeMapping = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-idpidentifiers
cupipIdpIdentifiers :: Lens' CognitoUserPoolIdentityProvider (Maybe (ValList Text))
cupipIdpIdentifiers = lens _cognitoUserPoolIdentityProviderIdpIdentifiers (\s a -> s { _cognitoUserPoolIdentityProviderIdpIdentifiers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providerdetails
cupipProviderDetails :: Lens' CognitoUserPoolIdentityProvider (Maybe Object)
cupipProviderDetails = lens _cognitoUserPoolIdentityProviderProviderDetails (\s a -> s { _cognitoUserPoolIdentityProviderProviderDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providername
cupipProviderName :: Lens' CognitoUserPoolIdentityProvider (Val Text)
cupipProviderName = lens _cognitoUserPoolIdentityProviderProviderName (\s a -> s { _cognitoUserPoolIdentityProviderProviderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providertype
cupipProviderType :: Lens' CognitoUserPoolIdentityProvider (Val Text)
cupipProviderType = lens _cognitoUserPoolIdentityProviderProviderType (\s a -> s { _cognitoUserPoolIdentityProviderProviderType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-userpoolid
cupipUserPoolId :: Lens' CognitoUserPoolIdentityProvider (Val Text)
cupipUserPoolId = lens _cognitoUserPoolIdentityProviderUserPoolId (\s a -> s { _cognitoUserPoolIdentityProviderUserPoolId = a })
