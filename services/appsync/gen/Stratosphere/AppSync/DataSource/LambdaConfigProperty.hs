module Stratosphere.AppSync.DataSource.LambdaConfigProperty (
        LambdaConfigProperty(..), mkLambdaConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html>
    LambdaConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html#cfn-appsync-datasource-lambdaconfig-lambdafunctionarn>
                          lambdaFunctionArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaConfigProperty ::
  Value Prelude.Text -> LambdaConfigProperty
mkLambdaConfigProperty lambdaFunctionArn
  = LambdaConfigProperty
      {haddock_workaround_ = (), lambdaFunctionArn = lambdaFunctionArn}
instance ToResourceProperties LambdaConfigProperty where
  toResourceProperties LambdaConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.LambdaConfig",
         supportsTags = Prelude.False,
         properties = ["LambdaFunctionArn" JSON..= lambdaFunctionArn]}
instance JSON.ToJSON LambdaConfigProperty where
  toJSON LambdaConfigProperty {..}
    = JSON.object ["LambdaFunctionArn" JSON..= lambdaFunctionArn]
instance Property "LambdaFunctionArn" LambdaConfigProperty where
  type PropertyType "LambdaFunctionArn" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty {lambdaFunctionArn = newValue, ..}