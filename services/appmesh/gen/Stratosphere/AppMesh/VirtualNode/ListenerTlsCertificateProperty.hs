module Stratosphere.AppMesh.VirtualNode.ListenerTlsCertificateProperty (
        module Exports, ListenerTlsCertificateProperty(..),
        mkListenerTlsCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsAcmCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsFileCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsSdsCertificateProperty as Exports
import Stratosphere.ResourceProperties
data ListenerTlsCertificateProperty
  = ListenerTlsCertificateProperty {aCM :: (Prelude.Maybe ListenerTlsAcmCertificateProperty),
                                    file :: (Prelude.Maybe ListenerTlsFileCertificateProperty),
                                    sDS :: (Prelude.Maybe ListenerTlsSdsCertificateProperty)}
mkListenerTlsCertificateProperty :: ListenerTlsCertificateProperty
mkListenerTlsCertificateProperty
  = ListenerTlsCertificateProperty
      {aCM = Prelude.Nothing, file = Prelude.Nothing,
       sDS = Prelude.Nothing}
instance ToResourceProperties ListenerTlsCertificateProperty where
  toResourceProperties ListenerTlsCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTlsCertificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ACM" Prelude.<$> aCM,
                            (JSON..=) "File" Prelude.<$> file,
                            (JSON..=) "SDS" Prelude.<$> sDS])}
instance JSON.ToJSON ListenerTlsCertificateProperty where
  toJSON ListenerTlsCertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ACM" Prelude.<$> aCM,
               (JSON..=) "File" Prelude.<$> file,
               (JSON..=) "SDS" Prelude.<$> sDS]))
instance Property "ACM" ListenerTlsCertificateProperty where
  type PropertyType "ACM" ListenerTlsCertificateProperty = ListenerTlsAcmCertificateProperty
  set newValue ListenerTlsCertificateProperty {..}
    = ListenerTlsCertificateProperty {aCM = Prelude.pure newValue, ..}
instance Property "File" ListenerTlsCertificateProperty where
  type PropertyType "File" ListenerTlsCertificateProperty = ListenerTlsFileCertificateProperty
  set newValue ListenerTlsCertificateProperty {..}
    = ListenerTlsCertificateProperty {file = Prelude.pure newValue, ..}
instance Property "SDS" ListenerTlsCertificateProperty where
  type PropertyType "SDS" ListenerTlsCertificateProperty = ListenerTlsSdsCertificateProperty
  set newValue ListenerTlsCertificateProperty {..}
    = ListenerTlsCertificateProperty {sDS = Prelude.pure newValue, ..}