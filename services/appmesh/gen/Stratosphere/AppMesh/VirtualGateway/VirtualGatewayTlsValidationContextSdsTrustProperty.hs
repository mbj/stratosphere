module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextSdsTrustProperty (
        VirtualGatewayTlsValidationContextSdsTrustProperty(..),
        mkVirtualGatewayTlsValidationContextSdsTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayTlsValidationContextSdsTrustProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextsdstrust.html>
    VirtualGatewayTlsValidationContextSdsTrustProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextsdstrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextsdstrust-secretname>
                                                        secretName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayTlsValidationContextSdsTrustProperty ::
  Value Prelude.Text
  -> VirtualGatewayTlsValidationContextSdsTrustProperty
mkVirtualGatewayTlsValidationContextSdsTrustProperty secretName
  = VirtualGatewayTlsValidationContextSdsTrustProperty
      {haddock_workaround_ = (), secretName = secretName}
instance ToResourceProperties VirtualGatewayTlsValidationContextSdsTrustProperty where
  toResourceProperties
    VirtualGatewayTlsValidationContextSdsTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayTlsValidationContextSdsTrust",
         supportsTags = Prelude.False,
         properties = ["SecretName" JSON..= secretName]}
instance JSON.ToJSON VirtualGatewayTlsValidationContextSdsTrustProperty where
  toJSON VirtualGatewayTlsValidationContextSdsTrustProperty {..}
    = JSON.object ["SecretName" JSON..= secretName]
instance Property "SecretName" VirtualGatewayTlsValidationContextSdsTrustProperty where
  type PropertyType "SecretName" VirtualGatewayTlsValidationContextSdsTrustProperty = Value Prelude.Text
  set
    newValue
    VirtualGatewayTlsValidationContextSdsTrustProperty {..}
    = VirtualGatewayTlsValidationContextSdsTrustProperty
        {secretName = newValue, ..}