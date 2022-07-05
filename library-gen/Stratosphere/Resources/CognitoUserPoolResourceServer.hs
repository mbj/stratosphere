{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html

module Stratosphere.Resources.CognitoUserPoolResourceServer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolResourceServerResourceServerScopeType

-- | Full data type definition for CognitoUserPoolResourceServer. See
-- 'cognitoUserPoolResourceServer' for a more convenient constructor.
data CognitoUserPoolResourceServer =
  CognitoUserPoolResourceServer
  { _cognitoUserPoolResourceServerIdentifier :: Val Text
  , _cognitoUserPoolResourceServerName :: Val Text
  , _cognitoUserPoolResourceServerScopes :: Maybe [CognitoUserPoolResourceServerResourceServerScopeType]
  , _cognitoUserPoolResourceServerUserPoolId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPoolResourceServer where
  toResourceProperties CognitoUserPoolResourceServer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPoolResourceServer"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Identifier",) . toJSON) _cognitoUserPoolResourceServerIdentifier
        , (Just . ("Name",) . toJSON) _cognitoUserPoolResourceServerName
        , fmap (("Scopes",) . toJSON) _cognitoUserPoolResourceServerScopes
        , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolResourceServerUserPoolId
        ]
    }

-- | Constructor for 'CognitoUserPoolResourceServer' containing required
-- fields as arguments.
cognitoUserPoolResourceServer
  :: Val Text -- ^ 'cuprsIdentifier'
  -> Val Text -- ^ 'cuprsName'
  -> Val Text -- ^ 'cuprsUserPoolId'
  -> CognitoUserPoolResourceServer
cognitoUserPoolResourceServer identifierarg namearg userPoolIdarg =
  CognitoUserPoolResourceServer
  { _cognitoUserPoolResourceServerIdentifier = identifierarg
  , _cognitoUserPoolResourceServerName = namearg
  , _cognitoUserPoolResourceServerScopes = Nothing
  , _cognitoUserPoolResourceServerUserPoolId = userPoolIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html#cfn-cognito-userpoolresourceserver-identifier
cuprsIdentifier :: Lens' CognitoUserPoolResourceServer (Val Text)
cuprsIdentifier = lens _cognitoUserPoolResourceServerIdentifier (\s a -> s { _cognitoUserPoolResourceServerIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html#cfn-cognito-userpoolresourceserver-name
cuprsName :: Lens' CognitoUserPoolResourceServer (Val Text)
cuprsName = lens _cognitoUserPoolResourceServerName (\s a -> s { _cognitoUserPoolResourceServerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html#cfn-cognito-userpoolresourceserver-scopes
cuprsScopes :: Lens' CognitoUserPoolResourceServer (Maybe [CognitoUserPoolResourceServerResourceServerScopeType])
cuprsScopes = lens _cognitoUserPoolResourceServerScopes (\s a -> s { _cognitoUserPoolResourceServerScopes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html#cfn-cognito-userpoolresourceserver-userpoolid
cuprsUserPoolId :: Lens' CognitoUserPoolResourceServer (Val Text)
cuprsUserPoolId = lens _cognitoUserPoolResourceServerUserPoolId (\s a -> s { _cognitoUserPoolResourceServerUserPoolId = a })
