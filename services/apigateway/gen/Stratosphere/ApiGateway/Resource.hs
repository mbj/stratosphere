module Stratosphere.ApiGateway.Resource (
        Resource(..), mkResource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Resource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html>
    Resource {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-parentid>
              parentId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-pathpart>
              pathPart :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-restapiid>
              restApiId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResource ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Resource
mkResource parentId pathPart restApiId
  = Resource
      {haddock_workaround_ = (), parentId = parentId,
       pathPart = pathPart, restApiId = restApiId}
instance ToResourceProperties Resource where
  toResourceProperties Resource {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Resource",
         supportsTags = Prelude.False,
         properties = ["ParentId" JSON..= parentId,
                       "PathPart" JSON..= pathPart, "RestApiId" JSON..= restApiId]}
instance JSON.ToJSON Resource where
  toJSON Resource {..}
    = JSON.object
        ["ParentId" JSON..= parentId, "PathPart" JSON..= pathPart,
         "RestApiId" JSON..= restApiId]
instance Property "ParentId" Resource where
  type PropertyType "ParentId" Resource = Value Prelude.Text
  set newValue Resource {..} = Resource {parentId = newValue, ..}
instance Property "PathPart" Resource where
  type PropertyType "PathPart" Resource = Value Prelude.Text
  set newValue Resource {..} = Resource {pathPart = newValue, ..}
instance Property "RestApiId" Resource where
  type PropertyType "RestApiId" Resource = Value Prelude.Text
  set newValue Resource {..} = Resource {restApiId = newValue, ..}