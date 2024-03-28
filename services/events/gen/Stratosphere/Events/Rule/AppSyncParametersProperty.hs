module Stratosphere.Events.Rule.AppSyncParametersProperty (
        AppSyncParametersProperty(..), mkAppSyncParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppSyncParametersProperty
  = AppSyncParametersProperty {graphQLOperation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppSyncParametersProperty ::
  Value Prelude.Text -> AppSyncParametersProperty
mkAppSyncParametersProperty graphQLOperation
  = AppSyncParametersProperty {graphQLOperation = graphQLOperation}
instance ToResourceProperties AppSyncParametersProperty where
  toResourceProperties AppSyncParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.AppSyncParameters",
         supportsTags = Prelude.False,
         properties = ["GraphQLOperation" JSON..= graphQLOperation]}
instance JSON.ToJSON AppSyncParametersProperty where
  toJSON AppSyncParametersProperty {..}
    = JSON.object ["GraphQLOperation" JSON..= graphQLOperation]
instance Property "GraphQLOperation" AppSyncParametersProperty where
  type PropertyType "GraphQLOperation" AppSyncParametersProperty = Value Prelude.Text
  set newValue AppSyncParametersProperty {}
    = AppSyncParametersProperty {graphQLOperation = newValue, ..}