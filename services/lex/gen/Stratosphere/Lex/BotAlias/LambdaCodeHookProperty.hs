module Stratosphere.Lex.BotAlias.LambdaCodeHookProperty (
        LambdaCodeHookProperty(..), mkLambdaCodeHookProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaCodeHookProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-lambdacodehook.html>
    LambdaCodeHookProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-lambdacodehook.html#cfn-lex-botalias-lambdacodehook-codehookinterfaceversion>
                            codeHookInterfaceVersion :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-lambdacodehook.html#cfn-lex-botalias-lambdacodehook-lambdaarn>
                            lambdaArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaCodeHookProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LambdaCodeHookProperty
mkLambdaCodeHookProperty codeHookInterfaceVersion lambdaArn
  = LambdaCodeHookProperty
      {haddock_workaround_ = (),
       codeHookInterfaceVersion = codeHookInterfaceVersion,
       lambdaArn = lambdaArn}
instance ToResourceProperties LambdaCodeHookProperty where
  toResourceProperties LambdaCodeHookProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.LambdaCodeHook",
         supportsTags = Prelude.False,
         properties = ["CodeHookInterfaceVersion"
                         JSON..= codeHookInterfaceVersion,
                       "LambdaArn" JSON..= lambdaArn]}
instance JSON.ToJSON LambdaCodeHookProperty where
  toJSON LambdaCodeHookProperty {..}
    = JSON.object
        ["CodeHookInterfaceVersion" JSON..= codeHookInterfaceVersion,
         "LambdaArn" JSON..= lambdaArn]
instance Property "CodeHookInterfaceVersion" LambdaCodeHookProperty where
  type PropertyType "CodeHookInterfaceVersion" LambdaCodeHookProperty = Value Prelude.Text
  set newValue LambdaCodeHookProperty {..}
    = LambdaCodeHookProperty {codeHookInterfaceVersion = newValue, ..}
instance Property "LambdaArn" LambdaCodeHookProperty where
  type PropertyType "LambdaArn" LambdaCodeHookProperty = Value Prelude.Text
  set newValue LambdaCodeHookProperty {..}
    = LambdaCodeHookProperty {lambdaArn = newValue, ..}