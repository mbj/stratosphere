module Stratosphere.AppSync.DataSource.ElasticsearchConfigProperty (
        ElasticsearchConfigProperty(..), mkElasticsearchConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticsearchConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html>
    ElasticsearchConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-awsregion>
                                 awsRegion :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-endpoint>
                                 endpoint :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticsearchConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ElasticsearchConfigProperty
mkElasticsearchConfigProperty awsRegion endpoint
  = ElasticsearchConfigProperty
      {haddock_workaround_ = (), awsRegion = awsRegion,
       endpoint = endpoint}
instance ToResourceProperties ElasticsearchConfigProperty where
  toResourceProperties ElasticsearchConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.ElasticsearchConfig",
         supportsTags = Prelude.False,
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