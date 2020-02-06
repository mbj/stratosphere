{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-recoveryoption.html

module Stratosphere.ResourceProperties.CognitoUserPoolRecoveryOption where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolRecoveryOption. See
-- 'cognitoUserPoolRecoveryOption' for a more convenient constructor.
data CognitoUserPoolRecoveryOption =
  CognitoUserPoolRecoveryOption
  { _cognitoUserPoolRecoveryOptionName :: Maybe (Val Text)
  , _cognitoUserPoolRecoveryOptionPriority :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolRecoveryOption where
  toJSON CognitoUserPoolRecoveryOption{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _cognitoUserPoolRecoveryOptionName
    , fmap (("Priority",) . toJSON) _cognitoUserPoolRecoveryOptionPriority
    ]

-- | Constructor for 'CognitoUserPoolRecoveryOption' containing required
-- fields as arguments.
cognitoUserPoolRecoveryOption
  :: CognitoUserPoolRecoveryOption
cognitoUserPoolRecoveryOption  =
  CognitoUserPoolRecoveryOption
  { _cognitoUserPoolRecoveryOptionName = Nothing
  , _cognitoUserPoolRecoveryOptionPriority = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-recoveryoption.html#cfn-cognito-userpool-recoveryoption-name
cuproName :: Lens' CognitoUserPoolRecoveryOption (Maybe (Val Text))
cuproName = lens _cognitoUserPoolRecoveryOptionName (\s a -> s { _cognitoUserPoolRecoveryOptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-recoveryoption.html#cfn-cognito-userpool-recoveryoption-priority
cuproPriority :: Lens' CognitoUserPoolRecoveryOption (Maybe (Val Integer))
cuproPriority = lens _cognitoUserPoolRecoveryOptionPriority (\s a -> s { _cognitoUserPoolRecoveryOptionPriority = a })
