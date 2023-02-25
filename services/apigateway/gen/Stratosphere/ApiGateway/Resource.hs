module Stratosphere.ApiGateway.Resource (
        Resource(..), mkResource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Resource
  = Resource {parentId :: (Value Prelude.Text),
              pathPart :: (Value Prelude.Text),
              restApiId :: (Value Prelude.Text)}
mkResource ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Resource
mkResource parentId pathPart restApiId
  = Resource
      {parentId = parentId, pathPart = pathPart, restApiId = restApiId}
instance ToResourceProperties Resource where
  toResourceProperties Resource {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Resource",
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