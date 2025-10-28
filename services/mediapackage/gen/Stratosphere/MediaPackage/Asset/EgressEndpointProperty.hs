module Stratosphere.MediaPackage.Asset.EgressEndpointProperty (
        EgressEndpointProperty(..), mkEgressEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EgressEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-asset-egressendpoint.html>
    EgressEndpointProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-asset-egressendpoint.html#cfn-mediapackage-asset-egressendpoint-packagingconfigurationid>
                            packagingConfigurationId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-asset-egressendpoint.html#cfn-mediapackage-asset-egressendpoint-url>
                            url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEgressEndpointProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EgressEndpointProperty
mkEgressEndpointProperty packagingConfigurationId url
  = EgressEndpointProperty
      {haddock_workaround_ = (),
       packagingConfigurationId = packagingConfigurationId, url = url}
instance ToResourceProperties EgressEndpointProperty where
  toResourceProperties EgressEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::Asset.EgressEndpoint",
         supportsTags = Prelude.False,
         properties = ["PackagingConfigurationId"
                         JSON..= packagingConfigurationId,
                       "Url" JSON..= url]}
instance JSON.ToJSON EgressEndpointProperty where
  toJSON EgressEndpointProperty {..}
    = JSON.object
        ["PackagingConfigurationId" JSON..= packagingConfigurationId,
         "Url" JSON..= url]
instance Property "PackagingConfigurationId" EgressEndpointProperty where
  type PropertyType "PackagingConfigurationId" EgressEndpointProperty = Value Prelude.Text
  set newValue EgressEndpointProperty {..}
    = EgressEndpointProperty {packagingConfigurationId = newValue, ..}
instance Property "Url" EgressEndpointProperty where
  type PropertyType "Url" EgressEndpointProperty = Value Prelude.Text
  set newValue EgressEndpointProperty {..}
    = EgressEndpointProperty {url = newValue, ..}