module Stratosphere.AppSync.ChannelNamespace.LambdaConfigProperty (
        LambdaConfigProperty(..), mkLambdaConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-lambdaconfig.html>
    LambdaConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-lambdaconfig.html#cfn-appsync-channelnamespace-lambdaconfig-invoketype>
                          invokeType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaConfigProperty ::
  Value Prelude.Text -> LambdaConfigProperty
mkLambdaConfigProperty invokeType
  = LambdaConfigProperty
      {haddock_workaround_ = (), invokeType = invokeType}
instance ToResourceProperties LambdaConfigProperty where
  toResourceProperties LambdaConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ChannelNamespace.LambdaConfig",
         supportsTags = Prelude.False,
         properties = ["InvokeType" JSON..= invokeType]}
instance JSON.ToJSON LambdaConfigProperty where
  toJSON LambdaConfigProperty {..}
    = JSON.object ["InvokeType" JSON..= invokeType]
instance Property "InvokeType" LambdaConfigProperty where
  type PropertyType "InvokeType" LambdaConfigProperty = Value Prelude.Text
  set newValue LambdaConfigProperty {..}
    = LambdaConfigProperty {invokeType = newValue, ..}