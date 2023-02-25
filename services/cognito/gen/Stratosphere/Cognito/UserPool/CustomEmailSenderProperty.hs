module Stratosphere.Cognito.UserPool.CustomEmailSenderProperty (
        CustomEmailSenderProperty(..), mkCustomEmailSenderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomEmailSenderProperty
  = CustomEmailSenderProperty {lambdaArn :: (Prelude.Maybe (Value Prelude.Text)),
                               lambdaVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkCustomEmailSenderProperty :: CustomEmailSenderProperty
mkCustomEmailSenderProperty
  = CustomEmailSenderProperty
      {lambdaArn = Prelude.Nothing, lambdaVersion = Prelude.Nothing}
instance ToResourceProperties CustomEmailSenderProperty where
  toResourceProperties CustomEmailSenderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.CustomEmailSender",
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