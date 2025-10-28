module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsProperty (
        module Exports, VirtualGatewayListenerTlsProperty(..),
        mkVirtualGatewayListenerTlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsValidationContextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayListenerTlsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertls.html>
    VirtualGatewayListenerTlsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertls.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertls-certificate>
                                       certificate :: VirtualGatewayListenerTlsCertificateProperty,
                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertls.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertls-mode>
                                       mode :: (Value Prelude.Text),
                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertls.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertls-validation>
                                       validation :: (Prelude.Maybe VirtualGatewayListenerTlsValidationContextProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayListenerTlsProperty ::
  VirtualGatewayListenerTlsCertificateProperty
  -> Value Prelude.Text -> VirtualGatewayListenerTlsProperty
mkVirtualGatewayListenerTlsProperty certificate mode
  = VirtualGatewayListenerTlsProperty
      {certificate = certificate, mode = mode,
       validation = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayListenerTlsProperty where
  toResourceProperties VirtualGatewayListenerTlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTls",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Certificate" JSON..= certificate, "Mode" JSON..= mode]
                           (Prelude.catMaybes
                              [(JSON..=) "Validation" Prelude.<$> validation]))}
instance JSON.ToJSON VirtualGatewayListenerTlsProperty where
  toJSON VirtualGatewayListenerTlsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Certificate" JSON..= certificate, "Mode" JSON..= mode]
              (Prelude.catMaybes
                 [(JSON..=) "Validation" Prelude.<$> validation])))
instance Property "Certificate" VirtualGatewayListenerTlsProperty where
  type PropertyType "Certificate" VirtualGatewayListenerTlsProperty = VirtualGatewayListenerTlsCertificateProperty
  set newValue VirtualGatewayListenerTlsProperty {..}
    = VirtualGatewayListenerTlsProperty {certificate = newValue, ..}
instance Property "Mode" VirtualGatewayListenerTlsProperty where
  type PropertyType "Mode" VirtualGatewayListenerTlsProperty = Value Prelude.Text
  set newValue VirtualGatewayListenerTlsProperty {..}
    = VirtualGatewayListenerTlsProperty {mode = newValue, ..}
instance Property "Validation" VirtualGatewayListenerTlsProperty where
  type PropertyType "Validation" VirtualGatewayListenerTlsProperty = VirtualGatewayListenerTlsValidationContextProperty
  set newValue VirtualGatewayListenerTlsProperty {..}
    = VirtualGatewayListenerTlsProperty
        {validation = Prelude.pure newValue, ..}