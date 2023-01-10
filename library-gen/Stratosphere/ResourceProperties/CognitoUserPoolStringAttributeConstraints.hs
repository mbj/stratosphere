
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-stringattributeconstraints.html

module Stratosphere.ResourceProperties.CognitoUserPoolStringAttributeConstraints where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolStringAttributeConstraints.
-- See 'cognitoUserPoolStringAttributeConstraints' for a more convenient
-- constructor.
data CognitoUserPoolStringAttributeConstraints =
  CognitoUserPoolStringAttributeConstraints
  { _cognitoUserPoolStringAttributeConstraintsMaxLength :: Maybe (Val Text)
  , _cognitoUserPoolStringAttributeConstraintsMinLength :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolStringAttributeConstraints where
  toJSON CognitoUserPoolStringAttributeConstraints{..} =
    object $
    catMaybes
    [ fmap (("MaxLength",) . toJSON) _cognitoUserPoolStringAttributeConstraintsMaxLength
    , fmap (("MinLength",) . toJSON) _cognitoUserPoolStringAttributeConstraintsMinLength
    ]

-- | Constructor for 'CognitoUserPoolStringAttributeConstraints' containing
-- required fields as arguments.
cognitoUserPoolStringAttributeConstraints
  :: CognitoUserPoolStringAttributeConstraints
cognitoUserPoolStringAttributeConstraints  =
  CognitoUserPoolStringAttributeConstraints
  { _cognitoUserPoolStringAttributeConstraintsMaxLength = Nothing
  , _cognitoUserPoolStringAttributeConstraintsMinLength = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-stringattributeconstraints.html#cfn-cognito-userpool-stringattributeconstraints-maxlength
cupsacMaxLength :: Lens' CognitoUserPoolStringAttributeConstraints (Maybe (Val Text))
cupsacMaxLength = lens _cognitoUserPoolStringAttributeConstraintsMaxLength (\s a -> s { _cognitoUserPoolStringAttributeConstraintsMaxLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-stringattributeconstraints.html#cfn-cognito-userpool-stringattributeconstraints-minlength
cupsacMinLength :: Lens' CognitoUserPoolStringAttributeConstraints (Maybe (Val Text))
cupsacMinLength = lens _cognitoUserPoolStringAttributeConstraintsMinLength (\s a -> s { _cognitoUserPoolStringAttributeConstraintsMinLength = a })
