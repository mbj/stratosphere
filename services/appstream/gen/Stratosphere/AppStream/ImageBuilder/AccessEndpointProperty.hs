module Stratosphere.AppStream.ImageBuilder.AccessEndpointProperty (
        AccessEndpointProperty(..), mkAccessEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessEndpointProperty
  = AccessEndpointProperty {endpointType :: (Value Prelude.Text),
                            vpceId :: (Value Prelude.Text)}
mkAccessEndpointProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AccessEndpointProperty
mkAccessEndpointProperty endpointType vpceId
  = AccessEndpointProperty
      {endpointType = endpointType, vpceId = vpceId}
instance ToResourceProperties AccessEndpointProperty where
  toResourceProperties AccessEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::ImageBuilder.AccessEndpoint",
         supportsTags = Prelude.False,
         properties = ["EndpointType" JSON..= endpointType,
                       "VpceId" JSON..= vpceId]}
instance JSON.ToJSON AccessEndpointProperty where
  toJSON AccessEndpointProperty {..}
    = JSON.object
        ["EndpointType" JSON..= endpointType, "VpceId" JSON..= vpceId]
instance Property "EndpointType" AccessEndpointProperty where
  type PropertyType "EndpointType" AccessEndpointProperty = Value Prelude.Text
  set newValue AccessEndpointProperty {..}
    = AccessEndpointProperty {endpointType = newValue, ..}
instance Property "VpceId" AccessEndpointProperty where
  type PropertyType "VpceId" AccessEndpointProperty = Value Prelude.Text
  set newValue AccessEndpointProperty {..}
    = AccessEndpointProperty {vpceId = newValue, ..}