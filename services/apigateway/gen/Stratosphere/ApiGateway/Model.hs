module Stratosphere.ApiGateway.Model (
        Model(..), mkModel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Model
  = Model {contentType :: (Prelude.Maybe (Value Prelude.Text)),
           description :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           restApiId :: (Value Prelude.Text),
           schema :: (Prelude.Maybe JSON.Object)}
mkModel :: Value Prelude.Text -> Model
mkModel restApiId
  = Model
      {restApiId = restApiId, contentType = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       schema = Prelude.Nothing}
instance ToResourceProperties Model where
  toResourceProperties Model {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Model", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RestApiId" JSON..= restApiId]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentType" Prelude.<$> contentType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Schema" Prelude.<$> schema]))}
instance JSON.ToJSON Model where
  toJSON Model {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RestApiId" JSON..= restApiId]
              (Prelude.catMaybes
                 [(JSON..=) "ContentType" Prelude.<$> contentType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Schema" Prelude.<$> schema])))
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
  set newValue Model {..} = Model {name = Prelude.pure newValue, ..}
instance Property "RestApiId" Model where
  type PropertyType "RestApiId" Model = Value Prelude.Text
  set newValue Model {..} = Model {restApiId = newValue, ..}
instance Property "Schema" Model where
  type PropertyType "Schema" Model = JSON.Object
  set newValue Model {..}
    = Model {schema = Prelude.pure newValue, ..}