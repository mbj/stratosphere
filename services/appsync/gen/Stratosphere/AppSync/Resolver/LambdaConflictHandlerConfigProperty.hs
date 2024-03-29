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
  = LambdaConflictHandlerConfigProperty {lambdaConflictHandlerArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaConflictHandlerConfigProperty ::
  LambdaConflictHandlerConfigProperty
mkLambdaConflictHandlerConfigProperty
  = LambdaConflictHandlerConfigProperty
      {lambdaConflictHandlerArn = Prelude.Nothing}
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
  set newValue LambdaConflictHandlerConfigProperty {}
    = LambdaConflictHandlerConfigProperty
        {lambdaConflictHandlerArn = Prelude.pure newValue, ..}