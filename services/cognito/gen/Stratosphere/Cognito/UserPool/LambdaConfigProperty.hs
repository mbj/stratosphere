module Stratosphere.Cognito.UserPool.LambdaConfigProperty (
        module Exports, LambdaConfigProperty(..), mkLambdaConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.CustomEmailSenderProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.CustomSMSSenderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaConfigProperty
  = LambdaConfigProperty {createAuthChallenge :: (Prelude.Maybe (Value Prelude.Text)),
                          customEmailSender :: (Prelude.Maybe CustomEmailSenderProperty),
                          customMessage :: (Prelude.Maybe (Value Prelude.Text)),
                          customSMSSender :: (Prelude.Maybe CustomSMSSenderProperty),
                          defineAuthChallenge :: (Prelude.Maybe (Value Prelude.Text)),
                          kMSKeyID :: (Prelude.Maybe (Value Prelude.Text)),
                          postAuthentication :: (Prelude.Maybe (Value Prelude.Text)),
                          postConfirmation :: (Prelude.Maybe (Value Prelude.Text)),
                          preAuthentication :: (Prelude.Maybe (Value Prelude.Text)),
                          preSignUp :: (Prelude.Maybe (Value Prelude.Text)),
                          preTokenGeneration :: (Prelude.Maybe (Value Prelude.Text)),
                          userMigration :: (Prelude.Maybe (Value Prelude.Text)),
                          verifyAuthChallengeResponse :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaConfigProperty :: LambdaConfigProperty
mkLambdaConfigProperty
  = LambdaConfigProperty
      {createAuthChallenge = Prelude.Nothing,
       customEmailSender = Prelude.Nothing,
       customMessage = Prelude.Nothing, customSMSSender = Prelude.Nothing,
       defineAuthChallenge = Prelude.Nothing, kMSKeyID = Prelude.Nothing,
       postAuthentication = Prelude.Nothing,
       postConfirmation = Prelude.Nothing,
       preAuthentication = Prelude.Nothing, preSignUp = Prelude.Nothing,
       preTokenGeneration = Prelude.Nothing,
       userMigration = Prelude.Nothing,
       verifyAuthChallengeResponse = Prelude.Nothing}
instance ToResourceProperties LambdaConfigProperty where
  toResourceProperties LambdaConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.LambdaConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CreateAuthChallenge" Prelude.<$> createAuthChallenge,
                            (JSON..=) "CustomEmailSender" Prelude.<$> customEmailSender,
                            (JSON..=) "CustomMessage" Prelude.<$> customMessage,
                            (JSON..=) "CustomSMSSender" Prelude.<$> customSMSSender,
                            (JSON..=) "DefineAuthChallenge" Prelude.<$> defineAuthChallenge,
                            (JSON..=) "KMSKeyID" Prelude.<$> kMSKeyID,
                            (JSON..=) "PostAuthentication" Prelude.<$> postAuthentication,
                            (JSON..=) "PostConfirmation" Prelude.<$> postConfirmation,
                            (JSON..=) "PreAuthentication" Prelude.<$> preAuthentication,
                            (JSON..=) "PreSignUp" Prelude.<$> preSignUp,
                            (JSON..=) "PreTokenGeneration" Prelude.<$> preTokenGeneration,
                            (JSON..=) "UserMigration" Prelude.<$> userMigration,
                            (JSON..=) "VerifyAuthChallengeResponse"
                              Prelude.<$> verifyAuthChallengeResponse])}
instance JSON.ToJSON LambdaConfigProperty where
  toJSON LambdaConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CreateAuthChallenge" Prelude.<$> createAuthChallenge,
               (JSON..=) "CustomEmailSender" Prelude.<$> customEmailSender,
               (JSON..=) "CustomMessage" Prelude.<$> customMessage,
               (JSON..=) "CustomSMSSender" Prelude.<$> customSMSSender,
               (JSON..=) "DefineAuthChallenge" Prelude.<$> defineAuthChallenge,
               (JSON..=) "KMSKeyID" Prelude.<$> kMSKeyID,
               (JSON..=) "PostAuthentication" Prelude.<$> postAuthentication,
               (JSON..=) "PostConfirmation" Prelude.<$> postConfirmation,
               (JSON..=) "PreAuthentication" Prelude.<$> preAuthentication,
               (JSON..=) "PreSignUp" Prelude.<$> preSignUp,
               (JSON..=) "PreTokenGeneration" Prelude.<$> preTokenGeneration,
               (JSON..=) "UserMigration" Prelude.<$> userMigration,
               (JSON..=) "VerifyAuthChallengeResponse"
                 Prelude.<$> verifyAuthChallengeResponse]))
instance Property "CreateAuthChallenge" LambdaConfigProperty where
  type PropertyType "CreateAuthChallenge" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {createAuthChallenge = Prelude.pure newValue, ..}
instance Property "CustomEmailSender" LambdaConfigProperty where
  type PropertyType "CustomEmailSender" LambdaConfigProperty = CustomEmailSenderProperty
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {customEmailSender = Prelude.pure newValue, ..}
instance Property "CustomMessage" LambdaConfigProperty where
  type PropertyType "CustomMessage" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty {customMessage = Prelude.pure newValue, ..}
instance Property "CustomSMSSender" LambdaConfigProperty where
  type PropertyType "CustomSMSSender" LambdaConfigProperty = CustomSMSSenderProperty
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {customSMSSender = Prelude.pure newValue, ..}
instance Property "DefineAuthChallenge" LambdaConfigProperty where
  type PropertyType "DefineAuthChallenge" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {defineAuthChallenge = Prelude.pure newValue, ..}
instance Property "KMSKeyID" LambdaConfigProperty where
  type PropertyType "KMSKeyID" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty {kMSKeyID = Prelude.pure newValue, ..}
instance Property "PostAuthentication" LambdaConfigProperty where
  type PropertyType "PostAuthentication" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {postAuthentication = Prelude.pure newValue, ..}
instance Property "PostConfirmation" LambdaConfigProperty where
  type PropertyType "PostConfirmation" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {postConfirmation = Prelude.pure newValue, ..}
instance Property "PreAuthentication" LambdaConfigProperty where
  type PropertyType "PreAuthentication" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {preAuthentication = Prelude.pure newValue, ..}
instance Property "PreSignUp" LambdaConfigProperty where
  type PropertyType "PreSignUp" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty {preSignUp = Prelude.pure newValue, ..}
instance Property "PreTokenGeneration" LambdaConfigProperty where
  type PropertyType "PreTokenGeneration" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {preTokenGeneration = Prelude.pure newValue, ..}
instance Property "UserMigration" LambdaConfigProperty where
  type PropertyType "UserMigration" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty {userMigration = Prelude.pure newValue, ..}
instance Property "VerifyAuthChallengeResponse" LambdaConfigProperty where
  type PropertyType "VerifyAuthChallengeResponse" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty
        {verifyAuthChallengeResponse = Prelude.pure newValue, ..}