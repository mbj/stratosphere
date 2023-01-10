
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html

module Stratosphere.ResourceProperties.CognitoUserPoolLambdaConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolLambdaConfig. See
-- 'cognitoUserPoolLambdaConfig' for a more convenient constructor.
data CognitoUserPoolLambdaConfig =
  CognitoUserPoolLambdaConfig
  { _cognitoUserPoolLambdaConfigCreateAuthChallenge :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigCustomMessage :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigDefineAuthChallenge :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigPostAuthentication :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigPostConfirmation :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigPreAuthentication :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigPreSignUp :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigPreTokenGeneration :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigUserMigration :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolLambdaConfig where
  toJSON CognitoUserPoolLambdaConfig{..} =
    object $
    catMaybes
    [ fmap (("CreateAuthChallenge",) . toJSON) _cognitoUserPoolLambdaConfigCreateAuthChallenge
    , fmap (("CustomMessage",) . toJSON) _cognitoUserPoolLambdaConfigCustomMessage
    , fmap (("DefineAuthChallenge",) . toJSON) _cognitoUserPoolLambdaConfigDefineAuthChallenge
    , fmap (("PostAuthentication",) . toJSON) _cognitoUserPoolLambdaConfigPostAuthentication
    , fmap (("PostConfirmation",) . toJSON) _cognitoUserPoolLambdaConfigPostConfirmation
    , fmap (("PreAuthentication",) . toJSON) _cognitoUserPoolLambdaConfigPreAuthentication
    , fmap (("PreSignUp",) . toJSON) _cognitoUserPoolLambdaConfigPreSignUp
    , fmap (("PreTokenGeneration",) . toJSON) _cognitoUserPoolLambdaConfigPreTokenGeneration
    , fmap (("UserMigration",) . toJSON) _cognitoUserPoolLambdaConfigUserMigration
    , fmap (("VerifyAuthChallengeResponse",) . toJSON) _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse
    ]

-- | Constructor for 'CognitoUserPoolLambdaConfig' containing required fields
-- as arguments.
cognitoUserPoolLambdaConfig
  :: CognitoUserPoolLambdaConfig
cognitoUserPoolLambdaConfig  =
  CognitoUserPoolLambdaConfig
  { _cognitoUserPoolLambdaConfigCreateAuthChallenge = Nothing
  , _cognitoUserPoolLambdaConfigCustomMessage = Nothing
  , _cognitoUserPoolLambdaConfigDefineAuthChallenge = Nothing
  , _cognitoUserPoolLambdaConfigPostAuthentication = Nothing
  , _cognitoUserPoolLambdaConfigPostConfirmation = Nothing
  , _cognitoUserPoolLambdaConfigPreAuthentication = Nothing
  , _cognitoUserPoolLambdaConfigPreSignUp = Nothing
  , _cognitoUserPoolLambdaConfigPreTokenGeneration = Nothing
  , _cognitoUserPoolLambdaConfigUserMigration = Nothing
  , _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-createauthchallenge
cuplcCreateAuthChallenge :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcCreateAuthChallenge = lens _cognitoUserPoolLambdaConfigCreateAuthChallenge (\s a -> s { _cognitoUserPoolLambdaConfigCreateAuthChallenge = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-custommessage
cuplcCustomMessage :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcCustomMessage = lens _cognitoUserPoolLambdaConfigCustomMessage (\s a -> s { _cognitoUserPoolLambdaConfigCustomMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-defineauthchallenge
cuplcDefineAuthChallenge :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcDefineAuthChallenge = lens _cognitoUserPoolLambdaConfigDefineAuthChallenge (\s a -> s { _cognitoUserPoolLambdaConfigDefineAuthChallenge = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-postauthentication
cuplcPostAuthentication :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcPostAuthentication = lens _cognitoUserPoolLambdaConfigPostAuthentication (\s a -> s { _cognitoUserPoolLambdaConfigPostAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-postconfirmation
cuplcPostConfirmation :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcPostConfirmation = lens _cognitoUserPoolLambdaConfigPostConfirmation (\s a -> s { _cognitoUserPoolLambdaConfigPostConfirmation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-preauthentication
cuplcPreAuthentication :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcPreAuthentication = lens _cognitoUserPoolLambdaConfigPreAuthentication (\s a -> s { _cognitoUserPoolLambdaConfigPreAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-presignup
cuplcPreSignUp :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcPreSignUp = lens _cognitoUserPoolLambdaConfigPreSignUp (\s a -> s { _cognitoUserPoolLambdaConfigPreSignUp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-pretokengeneration
cuplcPreTokenGeneration :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcPreTokenGeneration = lens _cognitoUserPoolLambdaConfigPreTokenGeneration (\s a -> s { _cognitoUserPoolLambdaConfigPreTokenGeneration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-usermigration
cuplcUserMigration :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcUserMigration = lens _cognitoUserPoolLambdaConfigUserMigration (\s a -> s { _cognitoUserPoolLambdaConfigUserMigration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-verifyauthchallengeresponse
cuplcVerifyAuthChallengeResponse :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcVerifyAuthChallengeResponse = lens _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse (\s a -> s { _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse = a })
