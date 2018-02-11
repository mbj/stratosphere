{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html

module Stratosphere.ResourceProperties.CognitoUserPoolPasswordPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolPasswordPolicy. See
-- 'cognitoUserPoolPasswordPolicy' for a more convenient constructor.
data CognitoUserPoolPasswordPolicy =
  CognitoUserPoolPasswordPolicy
  { _cognitoUserPoolPasswordPolicyMinimumLength :: Maybe (Val Integer)
  , _cognitoUserPoolPasswordPolicyRequireLowercase :: Maybe (Val Bool)
  , _cognitoUserPoolPasswordPolicyRequireNumbers :: Maybe (Val Bool)
  , _cognitoUserPoolPasswordPolicyRequireSymbols :: Maybe (Val Bool)
  , _cognitoUserPoolPasswordPolicyRequireUppercase :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolPasswordPolicy where
  toJSON CognitoUserPoolPasswordPolicy{..} =
    object $
    catMaybes
    [ fmap (("MinimumLength",) . toJSON . fmap Integer') _cognitoUserPoolPasswordPolicyMinimumLength
    , fmap (("RequireLowercase",) . toJSON . fmap Bool') _cognitoUserPoolPasswordPolicyRequireLowercase
    , fmap (("RequireNumbers",) . toJSON . fmap Bool') _cognitoUserPoolPasswordPolicyRequireNumbers
    , fmap (("RequireSymbols",) . toJSON . fmap Bool') _cognitoUserPoolPasswordPolicyRequireSymbols
    , fmap (("RequireUppercase",) . toJSON . fmap Bool') _cognitoUserPoolPasswordPolicyRequireUppercase
    ]

instance FromJSON CognitoUserPoolPasswordPolicy where
  parseJSON (Object obj) =
    CognitoUserPoolPasswordPolicy <$>
      fmap (fmap (fmap unInteger')) (obj .:? "MinimumLength") <*>
      fmap (fmap (fmap unBool')) (obj .:? "RequireLowercase") <*>
      fmap (fmap (fmap unBool')) (obj .:? "RequireNumbers") <*>
      fmap (fmap (fmap unBool')) (obj .:? "RequireSymbols") <*>
      fmap (fmap (fmap unBool')) (obj .:? "RequireUppercase")
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolPasswordPolicy' containing required
-- fields as arguments.
cognitoUserPoolPasswordPolicy
  :: CognitoUserPoolPasswordPolicy
cognitoUserPoolPasswordPolicy  =
  CognitoUserPoolPasswordPolicy
  { _cognitoUserPoolPasswordPolicyMinimumLength = Nothing
  , _cognitoUserPoolPasswordPolicyRequireLowercase = Nothing
  , _cognitoUserPoolPasswordPolicyRequireNumbers = Nothing
  , _cognitoUserPoolPasswordPolicyRequireSymbols = Nothing
  , _cognitoUserPoolPasswordPolicyRequireUppercase = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-minimumlength
cupppMinimumLength :: Lens' CognitoUserPoolPasswordPolicy (Maybe (Val Integer))
cupppMinimumLength = lens _cognitoUserPoolPasswordPolicyMinimumLength (\s a -> s { _cognitoUserPoolPasswordPolicyMinimumLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requirelowercase
cupppRequireLowercase :: Lens' CognitoUserPoolPasswordPolicy (Maybe (Val Bool))
cupppRequireLowercase = lens _cognitoUserPoolPasswordPolicyRequireLowercase (\s a -> s { _cognitoUserPoolPasswordPolicyRequireLowercase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requirenumbers
cupppRequireNumbers :: Lens' CognitoUserPoolPasswordPolicy (Maybe (Val Bool))
cupppRequireNumbers = lens _cognitoUserPoolPasswordPolicyRequireNumbers (\s a -> s { _cognitoUserPoolPasswordPolicyRequireNumbers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requiresymbols
cupppRequireSymbols :: Lens' CognitoUserPoolPasswordPolicy (Maybe (Val Bool))
cupppRequireSymbols = lens _cognitoUserPoolPasswordPolicyRequireSymbols (\s a -> s { _cognitoUserPoolPasswordPolicyRequireSymbols = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requireuppercase
cupppRequireUppercase :: Lens' CognitoUserPoolPasswordPolicy (Maybe (Val Bool))
cupppRequireUppercase = lens _cognitoUserPoolPasswordPolicyRequireUppercase (\s a -> s { _cognitoUserPoolPasswordPolicyRequireUppercase = a })
