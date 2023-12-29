module Stratosphere.AppMesh.VirtualNode.ClientTlsCertificateProperty (
        module Exports, ClientTlsCertificateProperty(..),
        mkClientTlsCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsFileCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsSdsCertificateProperty as Exports
import Stratosphere.ResourceProperties
data ClientTlsCertificateProperty
  = ClientTlsCertificateProperty {file :: (Prelude.Maybe ListenerTlsFileCertificateProperty),
                                  sDS :: (Prelude.Maybe ListenerTlsSdsCertificateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientTlsCertificateProperty :: ClientTlsCertificateProperty
mkClientTlsCertificateProperty
  = ClientTlsCertificateProperty
      {file = Prelude.Nothing, sDS = Prelude.Nothing}
instance ToResourceProperties ClientTlsCertificateProperty where
  toResourceProperties ClientTlsCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ClientTlsCertificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "File" Prelude.<$> file,
                            (JSON..=) "SDS" Prelude.<$> sDS])}
instance JSON.ToJSON ClientTlsCertificateProperty where
  toJSON ClientTlsCertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "File" Prelude.<$> file,
               (JSON..=) "SDS" Prelude.<$> sDS]))
instance Property "File" ClientTlsCertificateProperty where
  type PropertyType "File" ClientTlsCertificateProperty = ListenerTlsFileCertificateProperty
  set newValue ClientTlsCertificateProperty {..}
    = ClientTlsCertificateProperty {file = Prelude.pure newValue, ..}
instance Property "SDS" ClientTlsCertificateProperty where
  type PropertyType "SDS" ClientTlsCertificateProperty = ListenerTlsSdsCertificateProperty
  set newValue ClientTlsCertificateProperty {..}
    = ClientTlsCertificateProperty {sDS = Prelude.pure newValue, ..}