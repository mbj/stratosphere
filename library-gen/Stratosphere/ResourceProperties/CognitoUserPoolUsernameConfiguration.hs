
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html

module Stratosphere.ResourceProperties.CognitoUserPoolUsernameConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolUsernameConfiguration. See
-- 'cognitoUserPoolUsernameConfiguration' for a more convenient constructor.
data CognitoUserPoolUsernameConfiguration =
  CognitoUserPoolUsernameConfiguration
  { _cognitoUserPoolUsernameConfigurationCaseSensitive :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolUsernameConfiguration where
  toJSON CognitoUserPoolUsernameConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CaseSensitive",) . toJSON) _cognitoUserPoolUsernameConfigurationCaseSensitive
    ]

-- | Constructor for 'CognitoUserPoolUsernameConfiguration' containing
-- required fields as arguments.
cognitoUserPoolUsernameConfiguration
  :: CognitoUserPoolUsernameConfiguration
cognitoUserPoolUsernameConfiguration  =
  CognitoUserPoolUsernameConfiguration
  { _cognitoUserPoolUsernameConfigurationCaseSensitive = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html#cfn-cognito-userpool-usernameconfiguration-casesensitive
cupucCaseSensitive :: Lens' CognitoUserPoolUsernameConfiguration (Maybe (Val Bool))
cupucCaseSensitive = lens _cognitoUserPoolUsernameConfigurationCaseSensitive (\s a -> s { _cognitoUserPoolUsernameConfigurationCaseSensitive = a })
