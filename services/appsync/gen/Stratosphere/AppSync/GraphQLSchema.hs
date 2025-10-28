module Stratosphere.AppSync.GraphQLSchema (
        GraphQLSchema(..), mkGraphQLSchema
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GraphQLSchema
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html>
    GraphQLSchema {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-apiid>
                   apiId :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-definition>
                   definition :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-definitions3location>
                   definitionS3Location :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGraphQLSchema :: Value Prelude.Text -> GraphQLSchema
mkGraphQLSchema apiId
  = GraphQLSchema
      {haddock_workaround_ = (), apiId = apiId,
       definition = Prelude.Nothing,
       definitionS3Location = Prelude.Nothing}
instance ToResourceProperties GraphQLSchema where
  toResourceProperties GraphQLSchema {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId]
                           (Prelude.catMaybes
                              [(JSON..=) "Definition" Prelude.<$> definition,
                               (JSON..=) "DefinitionS3Location"
                                 Prelude.<$> definitionS3Location]))}
instance JSON.ToJSON GraphQLSchema where
  toJSON GraphQLSchema {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId]
              (Prelude.catMaybes
                 [(JSON..=) "Definition" Prelude.<$> definition,
                  (JSON..=) "DefinitionS3Location"
                    Prelude.<$> definitionS3Location])))
instance Property "ApiId" GraphQLSchema where
  type PropertyType "ApiId" GraphQLSchema = Value Prelude.Text
  set newValue GraphQLSchema {..}
    = GraphQLSchema {apiId = newValue, ..}
instance Property "Definition" GraphQLSchema where
  type PropertyType "Definition" GraphQLSchema = Value Prelude.Text
  set newValue GraphQLSchema {..}
    = GraphQLSchema {definition = Prelude.pure newValue, ..}
instance Property "DefinitionS3Location" GraphQLSchema where
  type PropertyType "DefinitionS3Location" GraphQLSchema = Value Prelude.Text
  set newValue GraphQLSchema {..}
    = GraphQLSchema {definitionS3Location = Prelude.pure newValue, ..}