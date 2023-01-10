
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html

module Stratosphere.ResourceProperties.CognitoUserPoolResourceServerResourceServerScopeType where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CognitoUserPoolResourceServerResourceServerScopeType. See
-- 'cognitoUserPoolResourceServerResourceServerScopeType' for a more
-- convenient constructor.
data CognitoUserPoolResourceServerResourceServerScopeType =
  CognitoUserPoolResourceServerResourceServerScopeType
  { _cognitoUserPoolResourceServerResourceServerScopeTypeScopeDescription :: Val Text
  , _cognitoUserPoolResourceServerResourceServerScopeTypeScopeName :: Val Text
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolResourceServerResourceServerScopeType where
  toJSON CognitoUserPoolResourceServerResourceServerScopeType{..} =
    object $
    catMaybes
    [ (Just . ("ScopeDescription",) . toJSON) _cognitoUserPoolResourceServerResourceServerScopeTypeScopeDescription
    , (Just . ("ScopeName",) . toJSON) _cognitoUserPoolResourceServerResourceServerScopeTypeScopeName
    ]

-- | Constructor for 'CognitoUserPoolResourceServerResourceServerScopeType'
-- containing required fields as arguments.
cognitoUserPoolResourceServerResourceServerScopeType
  :: Val Text -- ^ 'cuprsrsstScopeDescription'
  -> Val Text -- ^ 'cuprsrsstScopeName'
  -> CognitoUserPoolResourceServerResourceServerScopeType
cognitoUserPoolResourceServerResourceServerScopeType scopeDescriptionarg scopeNamearg =
  CognitoUserPoolResourceServerResourceServerScopeType
  { _cognitoUserPoolResourceServerResourceServerScopeTypeScopeDescription = scopeDescriptionarg
  , _cognitoUserPoolResourceServerResourceServerScopeTypeScopeName = scopeNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html#cfn-cognito-userpoolresourceserver-resourceserverscopetype-scopedescription
cuprsrsstScopeDescription :: Lens' CognitoUserPoolResourceServerResourceServerScopeType (Val Text)
cuprsrsstScopeDescription = lens _cognitoUserPoolResourceServerResourceServerScopeTypeScopeDescription (\s a -> s { _cognitoUserPoolResourceServerResourceServerScopeTypeScopeDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html#cfn-cognito-userpoolresourceserver-resourceserverscopetype-scopename
cuprsrsstScopeName :: Lens' CognitoUserPoolResourceServerResourceServerScopeType (Val Text)
cuprsrsstScopeName = lens _cognitoUserPoolResourceServerResourceServerScopeTypeScopeName (\s a -> s { _cognitoUserPoolResourceServerResourceServerScopeTypeScopeName = a })
