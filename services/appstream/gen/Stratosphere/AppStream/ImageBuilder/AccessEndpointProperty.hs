module Stratosphere.AppStream.ImageBuilder.AccessEndpointProperty (
        AccessEndpointProperty(..), mkAccessEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessEndpointProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html>
    AccessEndpointProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html#cfn-appstream-imagebuilder-accessendpoint-endpointtype>
                            endpointType :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html#cfn-appstream-imagebuilder-accessendpoint-vpceid>
                            vpceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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