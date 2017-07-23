{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-policies.html

module Stratosphere.ResourceProperties.CognitoUserPoolPolicies where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CognitoUserPoolPasswordPolicy

-- | Full data type definition for CognitoUserPoolPolicies. See
-- 'cognitoUserPoolPolicies' for a more convenient constructor.
data CognitoUserPoolPolicies =
  CognitoUserPoolPolicies
  { _cognitoUserPoolPoliciesPasswordPolicy :: Maybe CognitoUserPoolPasswordPolicy
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolPolicies where
  toJSON CognitoUserPoolPolicies{..} =
    object $
    catMaybes
    [ fmap (("PasswordPolicy",) . toJSON) _cognitoUserPoolPoliciesPasswordPolicy
    ]

instance FromJSON CognitoUserPoolPolicies where
  parseJSON (Object obj) =
    CognitoUserPoolPolicies <$>
      (obj .:? "PasswordPolicy")
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolPolicies' containing required fields as
-- arguments.
cognitoUserPoolPolicies
  :: CognitoUserPoolPolicies
cognitoUserPoolPolicies  =
  CognitoUserPoolPolicies
  { _cognitoUserPoolPoliciesPasswordPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-policies.html#cfn-cognito-userpool-policies-passwordpolicy
cuppPasswordPolicy :: Lens' CognitoUserPoolPolicies (Maybe CognitoUserPoolPasswordPolicy)
cuppPasswordPolicy = lens _cognitoUserPoolPoliciesPasswordPolicy (\s a -> s { _cognitoUserPoolPoliciesPasswordPolicy = a })
