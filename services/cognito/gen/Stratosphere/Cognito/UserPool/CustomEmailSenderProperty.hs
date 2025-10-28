module Stratosphere.Cognito.UserPool.CustomEmailSenderProperty (
        CustomEmailSenderProperty(..), mkCustomEmailSenderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomEmailSenderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-customemailsender.html>
    CustomEmailSenderProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-customemailsender.html#cfn-cognito-userpool-customemailsender-lambdaarn>
                               lambdaArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-customemailsender.html#cfn-cognito-userpool-customemailsender-lambdaversion>
                               lambdaVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomEmailSenderProperty :: CustomEmailSenderProperty
mkCustomEmailSenderProperty
  = CustomEmailSenderProperty
      {haddock_workaround_ = (), lambdaArn = Prelude.Nothing,
       lambdaVersion = Prelude.Nothing}
instance ToResourceProperties CustomEmailSenderProperty where
  toResourceProperties CustomEmailSenderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.CustomEmailSender",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LambdaArn" Prelude.<$> lambdaArn,
                            (JSON..=) "LambdaVersion" Prelude.<$> lambdaVersion])}
instance JSON.ToJSON CustomEmailSenderProperty where
  toJSON CustomEmailSenderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LambdaArn" Prelude.<$> lambdaArn,
               (JSON..=) "LambdaVersion" Prelude.<$> lambdaVersion]))
instance Property "LambdaArn" CustomEmailSenderProperty where
  type PropertyType "LambdaArn" CustomEmailSenderProperty = Value Prelude.Text
  set newValue CustomEmailSenderProperty {..}
    = CustomEmailSenderProperty {lambdaArn = Prelude.pure newValue, ..}
instance Property "LambdaVersion" CustomEmailSenderProperty where
  type PropertyType "LambdaVersion" CustomEmailSenderProperty = Value Prelude.Text
  set newValue CustomEmailSenderProperty {..}
    = CustomEmailSenderProperty
        {lambdaVersion = Prelude.pure newValue, ..}