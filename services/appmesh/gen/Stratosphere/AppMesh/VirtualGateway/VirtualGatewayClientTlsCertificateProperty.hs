module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayClientTlsCertificateProperty (
        module Exports, VirtualGatewayClientTlsCertificateProperty(..),
        mkVirtualGatewayClientTlsCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsFileCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsSdsCertificateProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayClientTlsCertificateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclienttlscertificate.html>
    VirtualGatewayClientTlsCertificateProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclienttlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewayclienttlscertificate-file>
                                                file :: (Prelude.Maybe VirtualGatewayListenerTlsFileCertificateProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclienttlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewayclienttlscertificate-sds>
                                                sDS :: (Prelude.Maybe VirtualGatewayListenerTlsSdsCertificateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayClientTlsCertificateProperty ::
  VirtualGatewayClientTlsCertificateProperty
mkVirtualGatewayClientTlsCertificateProperty
  = VirtualGatewayClientTlsCertificateProperty
      {haddock_workaround_ = (), file = Prelude.Nothing,
       sDS = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayClientTlsCertificateProperty where
  toResourceProperties
    VirtualGatewayClientTlsCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayClientTlsCertificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "File" Prelude.<$> file,
                            (JSON..=) "SDS" Prelude.<$> sDS])}
instance JSON.ToJSON VirtualGatewayClientTlsCertificateProperty where
  toJSON VirtualGatewayClientTlsCertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "File" Prelude.<$> file,
               (JSON..=) "SDS" Prelude.<$> sDS]))
instance Property "File" VirtualGatewayClientTlsCertificateProperty where
  type PropertyType "File" VirtualGatewayClientTlsCertificateProperty = VirtualGatewayListenerTlsFileCertificateProperty
  set newValue VirtualGatewayClientTlsCertificateProperty {..}
    = VirtualGatewayClientTlsCertificateProperty
        {file = Prelude.pure newValue, ..}
instance Property "SDS" VirtualGatewayClientTlsCertificateProperty where
  type PropertyType "SDS" VirtualGatewayClientTlsCertificateProperty = VirtualGatewayListenerTlsSdsCertificateProperty
  set newValue VirtualGatewayClientTlsCertificateProperty {..}
    = VirtualGatewayClientTlsCertificateProperty
        {sDS = Prelude.pure newValue, ..}