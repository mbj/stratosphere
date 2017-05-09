{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html

module Stratosphere.ResourceProperties.CognitoUserPoolLambdaConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
  , _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolLambdaConfig where
  toJSON CognitoUserPoolLambdaConfig{..} =
    object $
    catMaybes
    [ ("CreateAuthChallenge" .=) <$> _cognitoUserPoolLambdaConfigCreateAuthChallenge
    , ("CustomMessage" .=) <$> _cognitoUserPoolLambdaConfigCustomMessage
    , ("DefineAuthChallenge" .=) <$> _cognitoUserPoolLambdaConfigDefineAuthChallenge
    , ("PostAuthentication" .=) <$> _cognitoUserPoolLambdaConfigPostAuthentication
    , ("PostConfirmation" .=) <$> _cognitoUserPoolLambdaConfigPostConfirmation
    , ("PreAuthentication" .=) <$> _cognitoUserPoolLambdaConfigPreAuthentication
    , ("PreSignUp" .=) <$> _cognitoUserPoolLambdaConfigPreSignUp
    , ("VerifyAuthChallengeResponse" .=) <$> _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse
    ]

instance FromJSON CognitoUserPoolLambdaConfig where
  parseJSON (Object obj) =
    CognitoUserPoolLambdaConfig <$>
      obj .:? "CreateAuthChallenge" <*>
      obj .:? "CustomMessage" <*>
      obj .:? "DefineAuthChallenge" <*>
      obj .:? "PostAuthentication" <*>
      obj .:? "PostConfirmation" <*>
      obj .:? "PreAuthentication" <*>
      obj .:? "PreSignUp" <*>
      obj .:? "VerifyAuthChallengeResponse"
  parseJSON _ = mempty

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-verifyauthchallengeresponse
cuplcVerifyAuthChallengeResponse :: Lens' CognitoUserPoolLambdaConfig (Maybe (Val Text))
cuplcVerifyAuthChallengeResponse = lens _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse (\s a -> s { _cognitoUserPoolLambdaConfigVerifyAuthChallengeResponse = a })
