module Stratosphere.AppSync.DataSource.OpenSearchServiceConfigProperty (
        OpenSearchServiceConfigProperty(..),
        mkOpenSearchServiceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenSearchServiceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-opensearchserviceconfig.html>
    OpenSearchServiceConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-opensearchserviceconfig.html#cfn-appsync-datasource-opensearchserviceconfig-awsregion>
                                     awsRegion :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-opensearchserviceconfig.html#cfn-appsync-datasource-opensearchserviceconfig-endpoint>
                                     endpoint :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenSearchServiceConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OpenSearchServiceConfigProperty
mkOpenSearchServiceConfigProperty awsRegion endpoint
  = OpenSearchServiceConfigProperty
      {haddock_workaround_ = (), awsRegion = awsRegion,
       endpoint = endpoint}
instance ToResourceProperties OpenSearchServiceConfigProperty where
  toResourceProperties OpenSearchServiceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.OpenSearchServiceConfig",
         supportsTags = Prelude.False,
         properties = ["AwsRegion" JSON..= awsRegion,
                       "Endpoint" JSON..= endpoint]}
instance JSON.ToJSON OpenSearchServiceConfigProperty where
  toJSON OpenSearchServiceConfigProperty {..}
    = JSON.object
        ["AwsRegion" JSON..= awsRegion, "Endpoint" JSON..= endpoint]
instance Property "AwsRegion" OpenSearchServiceConfigProperty where
  type PropertyType "AwsRegion" OpenSearchServiceConfigProperty = Value Prelude.Text
  set newValue OpenSearchServiceConfigProperty {..}
    = OpenSearchServiceConfigProperty {awsRegion = newValue, ..}
instance Property "Endpoint" OpenSearchServiceConfigProperty where
  type PropertyType "Endpoint" OpenSearchServiceConfigProperty = Value Prelude.Text
  set newValue OpenSearchServiceConfigProperty {..}
    = OpenSearchServiceConfigProperty {endpoint = newValue, ..}