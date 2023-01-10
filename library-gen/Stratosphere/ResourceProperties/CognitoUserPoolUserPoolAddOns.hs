
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-userpooladdons.html

module Stratosphere.ResourceProperties.CognitoUserPoolUserPoolAddOns where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolUserPoolAddOns. See
-- 'cognitoUserPoolUserPoolAddOns' for a more convenient constructor.
data CognitoUserPoolUserPoolAddOns =
  CognitoUserPoolUserPoolAddOns
  { _cognitoUserPoolUserPoolAddOnsAdvancedSecurityMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolUserPoolAddOns where
  toJSON CognitoUserPoolUserPoolAddOns{..} =
    object $
    catMaybes
    [ fmap (("AdvancedSecurityMode",) . toJSON) _cognitoUserPoolUserPoolAddOnsAdvancedSecurityMode
    ]

-- | Constructor for 'CognitoUserPoolUserPoolAddOns' containing required
-- fields as arguments.
cognitoUserPoolUserPoolAddOns
  :: CognitoUserPoolUserPoolAddOns
cognitoUserPoolUserPoolAddOns  =
  CognitoUserPoolUserPoolAddOns
  { _cognitoUserPoolUserPoolAddOnsAdvancedSecurityMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-userpooladdons.html#cfn-cognito-userpool-userpooladdons-advancedsecuritymode
cupupaoAdvancedSecurityMode :: Lens' CognitoUserPoolUserPoolAddOns (Maybe (Val Text))
cupupaoAdvancedSecurityMode = lens _cognitoUserPoolUserPoolAddOnsAdvancedSecurityMode (\s a -> s { _cognitoUserPoolUserPoolAddOnsAdvancedSecurityMode = a })
