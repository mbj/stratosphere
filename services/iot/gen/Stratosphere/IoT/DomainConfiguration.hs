module Stratosphere.IoT.DomainConfiguration (
        module Exports, DomainConfiguration(..), mkDomainConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.DomainConfiguration.AuthorizerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.DomainConfiguration.TlsConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DomainConfiguration
  = DomainConfiguration {authorizerConfig :: (Prelude.Maybe AuthorizerConfigProperty),
                         domainConfigurationName :: (Prelude.Maybe (Value Prelude.Text)),
                         domainConfigurationStatus :: (Prelude.Maybe (Value Prelude.Text)),
                         domainName :: (Prelude.Maybe (Value Prelude.Text)),
                         serverCertificateArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                         serviceType :: (Prelude.Maybe (Value Prelude.Text)),
                         tags :: (Prelude.Maybe [Tag]),
                         tlsConfig :: (Prelude.Maybe TlsConfigProperty),
                         validationCertificateArn :: (Prelude.Maybe (Value Prelude.Text))}
mkDomainConfiguration :: DomainConfiguration
mkDomainConfiguration
  = DomainConfiguration
      {authorizerConfig = Prelude.Nothing,
       domainConfigurationName = Prelude.Nothing,
       domainConfigurationStatus = Prelude.Nothing,
       domainName = Prelude.Nothing,
       serverCertificateArns = Prelude.Nothing,
       serviceType = Prelude.Nothing, tags = Prelude.Nothing,
       tlsConfig = Prelude.Nothing,
       validationCertificateArn = Prelude.Nothing}
instance ToResourceProperties DomainConfiguration where
  toResourceProperties DomainConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IoT::DomainConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthorizerConfig" Prelude.<$> authorizerConfig,
                            (JSON..=) "DomainConfigurationName"
                              Prelude.<$> domainConfigurationName,
                            (JSON..=) "DomainConfigurationStatus"
                              Prelude.<$> domainConfigurationStatus,
                            (JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "ServerCertificateArns"
                              Prelude.<$> serverCertificateArns,
                            (JSON..=) "ServiceType" Prelude.<$> serviceType,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TlsConfig" Prelude.<$> tlsConfig,
                            (JSON..=) "ValidationCertificateArn"
                              Prelude.<$> validationCertificateArn])}
instance JSON.ToJSON DomainConfiguration where
  toJSON DomainConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthorizerConfig" Prelude.<$> authorizerConfig,
               (JSON..=) "DomainConfigurationName"
                 Prelude.<$> domainConfigurationName,
               (JSON..=) "DomainConfigurationStatus"
                 Prelude.<$> domainConfigurationStatus,
               (JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "ServerCertificateArns"
                 Prelude.<$> serverCertificateArns,
               (JSON..=) "ServiceType" Prelude.<$> serviceType,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TlsConfig" Prelude.<$> tlsConfig,
               (JSON..=) "ValidationCertificateArn"
                 Prelude.<$> validationCertificateArn]))
instance Property "AuthorizerConfig" DomainConfiguration where
  type PropertyType "AuthorizerConfig" DomainConfiguration = AuthorizerConfigProperty
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {authorizerConfig = Prelude.pure newValue, ..}
instance Property "DomainConfigurationName" DomainConfiguration where
  type PropertyType "DomainConfigurationName" DomainConfiguration = Value Prelude.Text
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {domainConfigurationName = Prelude.pure newValue, ..}
instance Property "DomainConfigurationStatus" DomainConfiguration where
  type PropertyType "DomainConfigurationStatus" DomainConfiguration = Value Prelude.Text
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {domainConfigurationStatus = Prelude.pure newValue, ..}
instance Property "DomainName" DomainConfiguration where
  type PropertyType "DomainName" DomainConfiguration = Value Prelude.Text
  set newValue DomainConfiguration {..}
    = DomainConfiguration {domainName = Prelude.pure newValue, ..}
instance Property "ServerCertificateArns" DomainConfiguration where
  type PropertyType "ServerCertificateArns" DomainConfiguration = ValueList Prelude.Text
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {serverCertificateArns = Prelude.pure newValue, ..}
instance Property "ServiceType" DomainConfiguration where
  type PropertyType "ServiceType" DomainConfiguration = Value Prelude.Text
  set newValue DomainConfiguration {..}
    = DomainConfiguration {serviceType = Prelude.pure newValue, ..}
instance Property "Tags" DomainConfiguration where
  type PropertyType "Tags" DomainConfiguration = [Tag]
  set newValue DomainConfiguration {..}
    = DomainConfiguration {tags = Prelude.pure newValue, ..}
instance Property "TlsConfig" DomainConfiguration where
  type PropertyType "TlsConfig" DomainConfiguration = TlsConfigProperty
  set newValue DomainConfiguration {..}
    = DomainConfiguration {tlsConfig = Prelude.pure newValue, ..}
instance Property "ValidationCertificateArn" DomainConfiguration where
  type PropertyType "ValidationCertificateArn" DomainConfiguration = Value Prelude.Text
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {validationCertificateArn = Prelude.pure newValue, ..}