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
  = OpenSearchServiceConfigProperty {awsRegion :: (Value Prelude.Text),
                                     endpoint :: (Value Prelude.Text)}
mkOpenSearchServiceConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OpenSearchServiceConfigProperty
mkOpenSearchServiceConfigProperty awsRegion endpoint
  = OpenSearchServiceConfigProperty
      {awsRegion = awsRegion, endpoint = endpoint}
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