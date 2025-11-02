module Stratosphere.Cognito.UserPool.PreTokenGenerationConfigProperty (
        PreTokenGenerationConfigProperty(..),
        mkPreTokenGenerationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PreTokenGenerationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-pretokengenerationconfig.html>
    PreTokenGenerationConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-pretokengenerationconfig.html#cfn-cognito-userpool-pretokengenerationconfig-lambdaarn>
                                      lambdaArn :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-pretokengenerationconfig.html#cfn-cognito-userpool-pretokengenerationconfig-lambdaversion>
                                      lambdaVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPreTokenGenerationConfigProperty ::
  PreTokenGenerationConfigProperty
mkPreTokenGenerationConfigProperty
  = PreTokenGenerationConfigProperty
      {haddock_workaround_ = (), lambdaArn = Prelude.Nothing,
       lambdaVersion = Prelude.Nothing}
instance ToResourceProperties PreTokenGenerationConfigProperty where
  toResourceProperties PreTokenGenerationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.PreTokenGenerationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LambdaArn" Prelude.<$> lambdaArn,
                            (JSON..=) "LambdaVersion" Prelude.<$> lambdaVersion])}
instance JSON.ToJSON PreTokenGenerationConfigProperty where
  toJSON PreTokenGenerationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LambdaArn" Prelude.<$> lambdaArn,
               (JSON..=) "LambdaVersion" Prelude.<$> lambdaVersion]))
instance Property "LambdaArn" PreTokenGenerationConfigProperty where
  type PropertyType "LambdaArn" PreTokenGenerationConfigProperty = Value Prelude.Text
  set newValue PreTokenGenerationConfigProperty {..}
    = PreTokenGenerationConfigProperty
        {lambdaArn = Prelude.pure newValue, ..}
instance Property "LambdaVersion" PreTokenGenerationConfigProperty where
  type PropertyType "LambdaVersion" PreTokenGenerationConfigProperty = Value Prelude.Text
  set newValue PreTokenGenerationConfigProperty {..}
    = PreTokenGenerationConfigProperty
        {lambdaVersion = Prelude.pure newValue, ..}