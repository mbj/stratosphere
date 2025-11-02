module Stratosphere.Cognito.UserPool.CustomSMSSenderProperty (
        CustomSMSSenderProperty(..), mkCustomSMSSenderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomSMSSenderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-customsmssender.html>
    CustomSMSSenderProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-customsmssender.html#cfn-cognito-userpool-customsmssender-lambdaarn>
                             lambdaArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-customsmssender.html#cfn-cognito-userpool-customsmssender-lambdaversion>
                             lambdaVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomSMSSenderProperty :: CustomSMSSenderProperty
mkCustomSMSSenderProperty
  = CustomSMSSenderProperty
      {haddock_workaround_ = (), lambdaArn = Prelude.Nothing,
       lambdaVersion = Prelude.Nothing}
instance ToResourceProperties CustomSMSSenderProperty where
  toResourceProperties CustomSMSSenderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.CustomSMSSender",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LambdaArn" Prelude.<$> lambdaArn,
                            (JSON..=) "LambdaVersion" Prelude.<$> lambdaVersion])}
instance JSON.ToJSON CustomSMSSenderProperty where
  toJSON CustomSMSSenderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LambdaArn" Prelude.<$> lambdaArn,
               (JSON..=) "LambdaVersion" Prelude.<$> lambdaVersion]))
instance Property "LambdaArn" CustomSMSSenderProperty where
  type PropertyType "LambdaArn" CustomSMSSenderProperty = Value Prelude.Text
  set newValue CustomSMSSenderProperty {..}
    = CustomSMSSenderProperty {lambdaArn = Prelude.pure newValue, ..}
instance Property "LambdaVersion" CustomSMSSenderProperty where
  type PropertyType "LambdaVersion" CustomSMSSenderProperty = Value Prelude.Text
  set newValue CustomSMSSenderProperty {..}
    = CustomSMSSenderProperty
        {lambdaVersion = Prelude.pure newValue, ..}