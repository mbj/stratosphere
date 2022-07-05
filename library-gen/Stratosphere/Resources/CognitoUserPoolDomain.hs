{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html

module Stratosphere.Resources.CognitoUserPoolDomain where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolDomainCustomDomainConfigType

-- | Full data type definition for CognitoUserPoolDomain. See
-- 'cognitoUserPoolDomain' for a more convenient constructor.
data CognitoUserPoolDomain =
  CognitoUserPoolDomain
  { _cognitoUserPoolDomainCustomDomainConfig :: Maybe CognitoUserPoolDomainCustomDomainConfigType
  , _cognitoUserPoolDomainDomain :: Val Text
  , _cognitoUserPoolDomainUserPoolId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPoolDomain where
  toResourceProperties CognitoUserPoolDomain{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPoolDomain"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CustomDomainConfig",) . toJSON) _cognitoUserPoolDomainCustomDomainConfig
        , (Just . ("Domain",) . toJSON) _cognitoUserPoolDomainDomain
        , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolDomainUserPoolId
        ]
    }

-- | Constructor for 'CognitoUserPoolDomain' containing required fields as
-- arguments.
cognitoUserPoolDomain
  :: Val Text -- ^ 'cupdDomain'
  -> Val Text -- ^ 'cupdUserPoolId'
  -> CognitoUserPoolDomain
cognitoUserPoolDomain domainarg userPoolIdarg =
  CognitoUserPoolDomain
  { _cognitoUserPoolDomainCustomDomainConfig = Nothing
  , _cognitoUserPoolDomainDomain = domainarg
  , _cognitoUserPoolDomainUserPoolId = userPoolIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-customdomainconfig
cupdCustomDomainConfig :: Lens' CognitoUserPoolDomain (Maybe CognitoUserPoolDomainCustomDomainConfigType)
cupdCustomDomainConfig = lens _cognitoUserPoolDomainCustomDomainConfig (\s a -> s { _cognitoUserPoolDomainCustomDomainConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-domain
cupdDomain :: Lens' CognitoUserPoolDomain (Val Text)
cupdDomain = lens _cognitoUserPoolDomainDomain (\s a -> s { _cognitoUserPoolDomainDomain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-userpoolid
cupdUserPoolId :: Lens' CognitoUserPoolDomain (Val Text)
cupdUserPoolId = lens _cognitoUserPoolDomainUserPoolId (\s a -> s { _cognitoUserPoolDomainUserPoolId = a })
