module Stratosphere.IoT.TopicRule.ElasticsearchActionProperty (
        ElasticsearchActionProperty(..), mkElasticsearchActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticsearchActionProperty
  = ElasticsearchActionProperty {endpoint :: (Value Prelude.Text),
                                 id :: (Value Prelude.Text),
                                 index :: (Value Prelude.Text),
                                 roleArn :: (Value Prelude.Text),
                                 type' :: (Value Prelude.Text)}
mkElasticsearchActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> ElasticsearchActionProperty
mkElasticsearchActionProperty endpoint id index roleArn type'
  = ElasticsearchActionProperty
      {endpoint = endpoint, id = id, index = index, roleArn = roleArn,
       type' = type'}
instance ToResourceProperties ElasticsearchActionProperty where
  toResourceProperties ElasticsearchActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.ElasticsearchAction",
         supportsTags = Prelude.False,
         properties = ["Endpoint" JSON..= endpoint, "Id" JSON..= id,
                       "Index" JSON..= index, "RoleArn" JSON..= roleArn,
                       "Type" JSON..= type']}
instance JSON.ToJSON ElasticsearchActionProperty where
  toJSON ElasticsearchActionProperty {..}
    = JSON.object
        ["Endpoint" JSON..= endpoint, "Id" JSON..= id,
         "Index" JSON..= index, "RoleArn" JSON..= roleArn,
         "Type" JSON..= type']
instance Property "Endpoint" ElasticsearchActionProperty where
  type PropertyType "Endpoint" ElasticsearchActionProperty = Value Prelude.Text
  set newValue ElasticsearchActionProperty {..}
    = ElasticsearchActionProperty {endpoint = newValue, ..}
instance Property "Id" ElasticsearchActionProperty where
  type PropertyType "Id" ElasticsearchActionProperty = Value Prelude.Text
  set newValue ElasticsearchActionProperty {..}
    = ElasticsearchActionProperty {id = newValue, ..}
instance Property "Index" ElasticsearchActionProperty where
  type PropertyType "Index" ElasticsearchActionProperty = Value Prelude.Text
  set newValue ElasticsearchActionProperty {..}
    = ElasticsearchActionProperty {index = newValue, ..}
instance Property "RoleArn" ElasticsearchActionProperty where
  type PropertyType "RoleArn" ElasticsearchActionProperty = Value Prelude.Text
  set newValue ElasticsearchActionProperty {..}
    = ElasticsearchActionProperty {roleArn = newValue, ..}
instance Property "Type" ElasticsearchActionProperty where
  type PropertyType "Type" ElasticsearchActionProperty = Value Prelude.Text
  set newValue ElasticsearchActionProperty {..}
    = ElasticsearchActionProperty {type' = newValue, ..}