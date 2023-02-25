module Stratosphere.AppSync.DataSource.ElasticsearchConfigProperty (
        ElasticsearchConfigProperty(..), mkElasticsearchConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticsearchConfigProperty
  = ElasticsearchConfigProperty {awsRegion :: (Value Prelude.Text),
                                 endpoint :: (Value Prelude.Text)}
mkElasticsearchConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ElasticsearchConfigProperty
mkElasticsearchConfigProperty awsRegion endpoint
  = ElasticsearchConfigProperty
      {awsRegion = awsRegion, endpoint = endpoint}
instance ToResourceProperties ElasticsearchConfigProperty where
  toResourceProperties ElasticsearchConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.ElasticsearchConfig",
         properties = ["AwsRegion" JSON..= awsRegion,
                       "Endpoint" JSON..= endpoint]}
instance JSON.ToJSON ElasticsearchConfigProperty where
  toJSON ElasticsearchConfigProperty {..}
    = JSON.object
        ["AwsRegion" JSON..= awsRegion, "Endpoint" JSON..= endpoint]
instance Property "AwsRegion" ElasticsearchConfigProperty where
  type PropertyType "AwsRegion" ElasticsearchConfigProperty = Value Prelude.Text
  set newValue ElasticsearchConfigProperty {..}
    = ElasticsearchConfigProperty {awsRegion = newValue, ..}
instance Property "Endpoint" ElasticsearchConfigProperty where
  type PropertyType "Endpoint" ElasticsearchConfigProperty = Value Prelude.Text
  set newValue ElasticsearchConfigProperty {..}
    = ElasticsearchConfigProperty {endpoint = newValue, ..}