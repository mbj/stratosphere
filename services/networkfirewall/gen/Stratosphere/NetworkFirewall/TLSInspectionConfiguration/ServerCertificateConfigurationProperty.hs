module Stratosphere.NetworkFirewall.TLSInspectionConfiguration.ServerCertificateConfigurationProperty (
        module Exports, ServerCertificateConfigurationProperty(..),
        mkServerCertificateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.TLSInspectionConfiguration.CheckCertificateRevocationStatusProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.TLSInspectionConfiguration.ServerCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.TLSInspectionConfiguration.ServerCertificateScopeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerCertificateConfigurationProperty
  = ServerCertificateConfigurationProperty {certificateAuthorityArn :: (Prelude.Maybe (Value Prelude.Text)),
                                            checkCertificateRevocationStatus :: (Prelude.Maybe CheckCertificateRevocationStatusProperty),
                                            scopes :: (Prelude.Maybe [ServerCertificateScopeProperty]),
                                            serverCertificates :: (Prelude.Maybe [ServerCertificateProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerCertificateConfigurationProperty ::
  ServerCertificateConfigurationProperty
mkServerCertificateConfigurationProperty
  = ServerCertificateConfigurationProperty
      {certificateAuthorityArn = Prelude.Nothing,
       checkCertificateRevocationStatus = Prelude.Nothing,
       scopes = Prelude.Nothing, serverCertificates = Prelude.Nothing}
instance ToResourceProperties ServerCertificateConfigurationProperty where
  toResourceProperties ServerCertificateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::TLSInspectionConfiguration.ServerCertificateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateAuthorityArn"
                              Prelude.<$> certificateAuthorityArn,
                            (JSON..=) "CheckCertificateRevocationStatus"
                              Prelude.<$> checkCertificateRevocationStatus,
                            (JSON..=) "Scopes" Prelude.<$> scopes,
                            (JSON..=) "ServerCertificates" Prelude.<$> serverCertificates])}
instance JSON.ToJSON ServerCertificateConfigurationProperty where
  toJSON ServerCertificateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateAuthorityArn"
                 Prelude.<$> certificateAuthorityArn,
               (JSON..=) "CheckCertificateRevocationStatus"
                 Prelude.<$> checkCertificateRevocationStatus,
               (JSON..=) "Scopes" Prelude.<$> scopes,
               (JSON..=) "ServerCertificates" Prelude.<$> serverCertificates]))
instance Property "CertificateAuthorityArn" ServerCertificateConfigurationProperty where
  type PropertyType "CertificateAuthorityArn" ServerCertificateConfigurationProperty = Value Prelude.Text
  set newValue ServerCertificateConfigurationProperty {..}
    = ServerCertificateConfigurationProperty
        {certificateAuthorityArn = Prelude.pure newValue, ..}
instance Property "CheckCertificateRevocationStatus" ServerCertificateConfigurationProperty where
  type PropertyType "CheckCertificateRevocationStatus" ServerCertificateConfigurationProperty = CheckCertificateRevocationStatusProperty
  set newValue ServerCertificateConfigurationProperty {..}
    = ServerCertificateConfigurationProperty
        {checkCertificateRevocationStatus = Prelude.pure newValue, ..}
instance Property "Scopes" ServerCertificateConfigurationProperty where
  type PropertyType "Scopes" ServerCertificateConfigurationProperty = [ServerCertificateScopeProperty]
  set newValue ServerCertificateConfigurationProperty {..}
    = ServerCertificateConfigurationProperty
        {scopes = Prelude.pure newValue, ..}
instance Property "ServerCertificates" ServerCertificateConfigurationProperty where
  type PropertyType "ServerCertificates" ServerCertificateConfigurationProperty = [ServerCertificateProperty]
  set newValue ServerCertificateConfigurationProperty {..}
    = ServerCertificateConfigurationProperty
        {serverCertificates = Prelude.pure newValue, ..}