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
  = VirtualGatewayClientTlsCertificateProperty {file :: (Prelude.Maybe VirtualGatewayListenerTlsFileCertificateProperty),
                                                sDS :: (Prelude.Maybe VirtualGatewayListenerTlsSdsCertificateProperty)}
mkVirtualGatewayClientTlsCertificateProperty ::
  VirtualGatewayClientTlsCertificateProperty
mkVirtualGatewayClientTlsCertificateProperty
  = VirtualGatewayClientTlsCertificateProperty
      {file = Prelude.Nothing, sDS = Prelude.Nothing}
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