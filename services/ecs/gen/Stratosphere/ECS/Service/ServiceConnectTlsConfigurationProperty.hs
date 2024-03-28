module Stratosphere.ECS.Service.ServiceConnectTlsConfigurationProperty (
        module Exports, ServiceConnectTlsConfigurationProperty(..),
        mkServiceConnectTlsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectTlsCertificateAuthorityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectTlsConfigurationProperty
  = ServiceConnectTlsConfigurationProperty {issuerCertificateAuthority :: ServiceConnectTlsCertificateAuthorityProperty,
                                            kmsKey :: (Prelude.Maybe (Value Prelude.Text)),
                                            roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectTlsConfigurationProperty ::
  ServiceConnectTlsCertificateAuthorityProperty
  -> ServiceConnectTlsConfigurationProperty
mkServiceConnectTlsConfigurationProperty issuerCertificateAuthority
  = ServiceConnectTlsConfigurationProperty
      {issuerCertificateAuthority = issuerCertificateAuthority,
       kmsKey = Prelude.Nothing, roleArn = Prelude.Nothing}
instance ToResourceProperties ServiceConnectTlsConfigurationProperty where
  toResourceProperties ServiceConnectTlsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectTlsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IssuerCertificateAuthority" JSON..= issuerCertificateAuthority]
                           (Prelude.catMaybes
                              [(JSON..=) "KmsKey" Prelude.<$> kmsKey,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON ServiceConnectTlsConfigurationProperty where
  toJSON ServiceConnectTlsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IssuerCertificateAuthority" JSON..= issuerCertificateAuthority]
              (Prelude.catMaybes
                 [(JSON..=) "KmsKey" Prelude.<$> kmsKey,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "IssuerCertificateAuthority" ServiceConnectTlsConfigurationProperty where
  type PropertyType "IssuerCertificateAuthority" ServiceConnectTlsConfigurationProperty = ServiceConnectTlsCertificateAuthorityProperty
  set newValue ServiceConnectTlsConfigurationProperty {..}
    = ServiceConnectTlsConfigurationProperty
        {issuerCertificateAuthority = newValue, ..}
instance Property "KmsKey" ServiceConnectTlsConfigurationProperty where
  type PropertyType "KmsKey" ServiceConnectTlsConfigurationProperty = Value Prelude.Text
  set newValue ServiceConnectTlsConfigurationProperty {..}
    = ServiceConnectTlsConfigurationProperty
        {kmsKey = Prelude.pure newValue, ..}
instance Property "RoleArn" ServiceConnectTlsConfigurationProperty where
  type PropertyType "RoleArn" ServiceConnectTlsConfigurationProperty = Value Prelude.Text
  set newValue ServiceConnectTlsConfigurationProperty {..}
    = ServiceConnectTlsConfigurationProperty
        {roleArn = Prelude.pure newValue, ..}