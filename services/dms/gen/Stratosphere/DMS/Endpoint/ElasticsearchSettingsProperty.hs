module Stratosphere.DMS.Endpoint.ElasticsearchSettingsProperty (
        ElasticsearchSettingsProperty(..), mkElasticsearchSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticsearchSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html>
    ElasticsearchSettingsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-endpointuri>
                                   endpointUri :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-errorretryduration>
                                   errorRetryDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage>
                                   fullLoadErrorPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn>
                                   serviceAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticsearchSettingsProperty :: ElasticsearchSettingsProperty
mkElasticsearchSettingsProperty
  = ElasticsearchSettingsProperty
      {haddock_workaround_ = (), endpointUri = Prelude.Nothing,
       errorRetryDuration = Prelude.Nothing,
       fullLoadErrorPercentage = Prelude.Nothing,
       serviceAccessRoleArn = Prelude.Nothing}
instance ToResourceProperties ElasticsearchSettingsProperty where
  toResourceProperties ElasticsearchSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.ElasticsearchSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndpointUri" Prelude.<$> endpointUri,
                            (JSON..=) "ErrorRetryDuration" Prelude.<$> errorRetryDuration,
                            (JSON..=) "FullLoadErrorPercentage"
                              Prelude.<$> fullLoadErrorPercentage,
                            (JSON..=) "ServiceAccessRoleArn"
                              Prelude.<$> serviceAccessRoleArn])}
instance JSON.ToJSON ElasticsearchSettingsProperty where
  toJSON ElasticsearchSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndpointUri" Prelude.<$> endpointUri,
               (JSON..=) "ErrorRetryDuration" Prelude.<$> errorRetryDuration,
               (JSON..=) "FullLoadErrorPercentage"
                 Prelude.<$> fullLoadErrorPercentage,
               (JSON..=) "ServiceAccessRoleArn"
                 Prelude.<$> serviceAccessRoleArn]))
instance Property "EndpointUri" ElasticsearchSettingsProperty where
  type PropertyType "EndpointUri" ElasticsearchSettingsProperty = Value Prelude.Text
  set newValue ElasticsearchSettingsProperty {..}
    = ElasticsearchSettingsProperty
        {endpointUri = Prelude.pure newValue, ..}
instance Property "ErrorRetryDuration" ElasticsearchSettingsProperty where
  type PropertyType "ErrorRetryDuration" ElasticsearchSettingsProperty = Value Prelude.Integer
  set newValue ElasticsearchSettingsProperty {..}
    = ElasticsearchSettingsProperty
        {errorRetryDuration = Prelude.pure newValue, ..}
instance Property "FullLoadErrorPercentage" ElasticsearchSettingsProperty where
  type PropertyType "FullLoadErrorPercentage" ElasticsearchSettingsProperty = Value Prelude.Integer
  set newValue ElasticsearchSettingsProperty {..}
    = ElasticsearchSettingsProperty
        {fullLoadErrorPercentage = Prelude.pure newValue, ..}
instance Property "ServiceAccessRoleArn" ElasticsearchSettingsProperty where
  type PropertyType "ServiceAccessRoleArn" ElasticsearchSettingsProperty = Value Prelude.Text
  set newValue ElasticsearchSettingsProperty {..}
    = ElasticsearchSettingsProperty
        {serviceAccessRoleArn = Prelude.pure newValue, ..}