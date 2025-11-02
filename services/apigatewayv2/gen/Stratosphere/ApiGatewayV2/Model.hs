module Stratosphere.ApiGatewayV2.Model (
        Model(..), mkModel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Model
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html>
    Model {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-apiid>
           apiId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-contenttype>
           contentType :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-name>
           name :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-schema>
           schema :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModel ::
  Value Prelude.Text -> Value Prelude.Text -> JSON.Object -> Model
mkModel apiId name schema
  = Model
      {haddock_workaround_ = (), apiId = apiId, name = name,
       schema = schema, contentType = Prelude.Nothing,
       description = Prelude.Nothing}
instance ToResourceProperties Model where
  toResourceProperties Model {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Model",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "Name" JSON..= name,
                            "Schema" JSON..= schema]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentType" Prelude.<$> contentType,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON Model where
  toJSON Model {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "Name" JSON..= name,
               "Schema" JSON..= schema]
              (Prelude.catMaybes
                 [(JSON..=) "ContentType" Prelude.<$> contentType,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "ApiId" Model where
  type PropertyType "ApiId" Model = Value Prelude.Text
  set newValue Model {..} = Model {apiId = newValue, ..}
instance Property "ContentType" Model where
  type PropertyType "ContentType" Model = Value Prelude.Text
  set newValue Model {..}
    = Model {contentType = Prelude.pure newValue, ..}
instance Property "Description" Model where
  type PropertyType "Description" Model = Value Prelude.Text
  set newValue Model {..}
    = Model {description = Prelude.pure newValue, ..}
instance Property "Name" Model where
  type PropertyType "Name" Model = Value Prelude.Text
  set newValue Model {..} = Model {name = newValue, ..}
instance Property "Schema" Model where
  type PropertyType "Schema" Model = JSON.Object
  set newValue Model {..} = Model {schema = newValue, ..}