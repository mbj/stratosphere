module Stratosphere.IAM.ServerCertificate (
        ServerCertificate(..), mkServerCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServerCertificate
  = ServerCertificate {certificateBody :: (Prelude.Maybe (Value Prelude.Text)),
                       certificateChain :: (Prelude.Maybe (Value Prelude.Text)),
                       path :: (Prelude.Maybe (Value Prelude.Text)),
                       privateKey :: (Prelude.Maybe (Value Prelude.Text)),
                       serverCertificateName :: (Prelude.Maybe (Value Prelude.Text)),
                       tags :: (Prelude.Maybe [Tag])}
mkServerCertificate :: ServerCertificate
mkServerCertificate
  = ServerCertificate
      {certificateBody = Prelude.Nothing,
       certificateChain = Prelude.Nothing, path = Prelude.Nothing,
       privateKey = Prelude.Nothing,
       serverCertificateName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ServerCertificate where
  toResourceProperties ServerCertificate {..}
    = ResourceProperties
        {awsType = "AWS::IAM::ServerCertificate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateBody" Prelude.<$> certificateBody,
                            (JSON..=) "CertificateChain" Prelude.<$> certificateChain,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "PrivateKey" Prelude.<$> privateKey,
                            (JSON..=) "ServerCertificateName"
                              Prelude.<$> serverCertificateName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ServerCertificate where
  toJSON ServerCertificate {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateBody" Prelude.<$> certificateBody,
               (JSON..=) "CertificateChain" Prelude.<$> certificateChain,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "PrivateKey" Prelude.<$> privateKey,
               (JSON..=) "ServerCertificateName"
                 Prelude.<$> serverCertificateName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CertificateBody" ServerCertificate where
  type PropertyType "CertificateBody" ServerCertificate = Value Prelude.Text
  set newValue ServerCertificate {..}
    = ServerCertificate {certificateBody = Prelude.pure newValue, ..}
instance Property "CertificateChain" ServerCertificate where
  type PropertyType "CertificateChain" ServerCertificate = Value Prelude.Text
  set newValue ServerCertificate {..}
    = ServerCertificate {certificateChain = Prelude.pure newValue, ..}
instance Property "Path" ServerCertificate where
  type PropertyType "Path" ServerCertificate = Value Prelude.Text
  set newValue ServerCertificate {..}
    = ServerCertificate {path = Prelude.pure newValue, ..}
instance Property "PrivateKey" ServerCertificate where
  type PropertyType "PrivateKey" ServerCertificate = Value Prelude.Text
  set newValue ServerCertificate {..}
    = ServerCertificate {privateKey = Prelude.pure newValue, ..}
instance Property "ServerCertificateName" ServerCertificate where
  type PropertyType "ServerCertificateName" ServerCertificate = Value Prelude.Text
  set newValue ServerCertificate {..}
    = ServerCertificate
        {serverCertificateName = Prelude.pure newValue, ..}
instance Property "Tags" ServerCertificate where
  type PropertyType "Tags" ServerCertificate = [Tag]
  set newValue ServerCertificate {..}
    = ServerCertificate {tags = Prelude.pure newValue, ..}