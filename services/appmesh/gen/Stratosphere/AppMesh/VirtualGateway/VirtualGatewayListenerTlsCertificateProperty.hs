module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsCertificateProperty (
        module Exports, VirtualGatewayListenerTlsCertificateProperty(..),
        mkVirtualGatewayListenerTlsCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsAcmCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsFileCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsSdsCertificateProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayListenerTlsCertificateProperty
  = VirtualGatewayListenerTlsCertificateProperty {aCM :: (Prelude.Maybe VirtualGatewayListenerTlsAcmCertificateProperty),
                                                  file :: (Prelude.Maybe VirtualGatewayListenerTlsFileCertificateProperty),
                                                  sDS :: (Prelude.Maybe VirtualGatewayListenerTlsSdsCertificateProperty)}
mkVirtualGatewayListenerTlsCertificateProperty ::
  VirtualGatewayListenerTlsCertificateProperty
mkVirtualGatewayListenerTlsCertificateProperty
  = VirtualGatewayListenerTlsCertificateProperty
      {aCM = Prelude.Nothing, file = Prelude.Nothing,
       sDS = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayListenerTlsCertificateProperty where
  toResourceProperties
    VirtualGatewayListenerTlsCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsCertificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ACM" Prelude.<$> aCM,
                            (JSON..=) "File" Prelude.<$> file,
                            (JSON..=) "SDS" Prelude.<$> sDS])}
instance JSON.ToJSON VirtualGatewayListenerTlsCertificateProperty where
  toJSON VirtualGatewayListenerTlsCertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ACM" Prelude.<$> aCM,
               (JSON..=) "File" Prelude.<$> file,
               (JSON..=) "SDS" Prelude.<$> sDS]))
instance Property "ACM" VirtualGatewayListenerTlsCertificateProperty where
  type PropertyType "ACM" VirtualGatewayListenerTlsCertificateProperty = VirtualGatewayListenerTlsAcmCertificateProperty
  set newValue VirtualGatewayListenerTlsCertificateProperty {..}
    = VirtualGatewayListenerTlsCertificateProperty
        {aCM = Prelude.pure newValue, ..}
instance Property "File" VirtualGatewayListenerTlsCertificateProperty where
  type PropertyType "File" VirtualGatewayListenerTlsCertificateProperty = VirtualGatewayListenerTlsFileCertificateProperty
  set newValue VirtualGatewayListenerTlsCertificateProperty {..}
    = VirtualGatewayListenerTlsCertificateProperty
        {file = Prelude.pure newValue, ..}
instance Property "SDS" VirtualGatewayListenerTlsCertificateProperty where
  type PropertyType "SDS" VirtualGatewayListenerTlsCertificateProperty = VirtualGatewayListenerTlsSdsCertificateProperty
  set newValue VirtualGatewayListenerTlsCertificateProperty {..}
    = VirtualGatewayListenerTlsCertificateProperty
        {sDS = Prelude.pure newValue, ..}