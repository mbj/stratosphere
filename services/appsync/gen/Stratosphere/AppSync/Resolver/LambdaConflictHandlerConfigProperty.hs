module Stratosphere.AppSync.Resolver.LambdaConflictHandlerConfigProperty (
        LambdaConflictHandlerConfigProperty(..),
        mkLambdaConflictHandlerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaConflictHandlerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-lambdaconflicthandlerconfig.html>
    LambdaConflictHandlerConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-lambdaconflicthandlerconfig.html#cfn-appsync-resolver-lambdaconflicthandlerconfig-lambdaconflicthandlerarn>
                                         lambdaConflictHandlerArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaConflictHandlerConfigProperty ::
  LambdaConflictHandlerConfigProperty
mkLambdaConflictHandlerConfigProperty
  = LambdaConflictHandlerConfigProperty
      {haddock_workaround_ = (),
       lambdaConflictHandlerArn = Prelude.Nothing}
instance ToResourceProperties LambdaConflictHandlerConfigProperty where
  toResourceProperties LambdaConflictHandlerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Resolver.LambdaConflictHandlerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LambdaConflictHandlerArn"
                              Prelude.<$> lambdaConflictHandlerArn])}
instance JSON.ToJSON LambdaConflictHandlerConfigProperty where
  toJSON LambdaConflictHandlerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LambdaConflictHandlerArn"
                 Prelude.<$> lambdaConflictHandlerArn]))
instance Property "LambdaConflictHandlerArn" LambdaConflictHandlerConfigProperty where
  type PropertyType "LambdaConflictHandlerArn" LambdaConflictHandlerConfigProperty = Value Prelude.Text
  set newValue LambdaConflictHandlerConfigProperty {..}
    = LambdaConflictHandlerConfigProperty
        {lambdaConflictHandlerArn = Prelude.pure newValue, ..}