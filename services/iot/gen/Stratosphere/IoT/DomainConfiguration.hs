module Stratosphere.IoT.DomainConfiguration (
        module Exports, DomainConfiguration(..), mkDomainConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.DomainConfiguration.AuthorizerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.DomainConfiguration.ClientCertificateConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.DomainConfiguration.ServerCertificateConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.DomainConfiguration.TlsConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DomainConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html>
    DomainConfiguration {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-applicationprotocol>
                         applicationProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-authenticationtype>
                         authenticationType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-authorizerconfig>
                         authorizerConfig :: (Prelude.Maybe AuthorizerConfigProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-clientcertificateconfig>
                         clientCertificateConfig :: (Prelude.Maybe ClientCertificateConfigProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-domainconfigurationname>
                         domainConfigurationName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-domainconfigurationstatus>
                         domainConfigurationStatus :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-domainname>
                         domainName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-servercertificatearns>
                         serverCertificateArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-servercertificateconfig>
                         serverCertificateConfig :: (Prelude.Maybe ServerCertificateConfigProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-servicetype>
                         serviceType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-tags>
                         tags :: (Prelude.Maybe [Tag]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-tlsconfig>
                         tlsConfig :: (Prelude.Maybe TlsConfigProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-domainconfiguration.html#cfn-iot-domainconfiguration-validationcertificatearn>
                         validationCertificateArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainConfiguration :: DomainConfiguration
mkDomainConfiguration
  = DomainConfiguration
      {haddock_workaround_ = (), applicationProtocol = Prelude.Nothing,
       authenticationType = Prelude.Nothing,
       authorizerConfig = Prelude.Nothing,
       clientCertificateConfig = Prelude.Nothing,
       domainConfigurationName = Prelude.Nothing,
       domainConfigurationStatus = Prelude.Nothing,
       domainName = Prelude.Nothing,
       serverCertificateArns = Prelude.Nothing,
       serverCertificateConfig = Prelude.Nothing,
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
                           [(JSON..=) "ApplicationProtocol" Prelude.<$> applicationProtocol,
                            (JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                            (JSON..=) "AuthorizerConfig" Prelude.<$> authorizerConfig,
                            (JSON..=) "ClientCertificateConfig"
                              Prelude.<$> clientCertificateConfig,
                            (JSON..=) "DomainConfigurationName"
                              Prelude.<$> domainConfigurationName,
                            (JSON..=) "DomainConfigurationStatus"
                              Prelude.<$> domainConfigurationStatus,
                            (JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "ServerCertificateArns"
                              Prelude.<$> serverCertificateArns,
                            (JSON..=) "ServerCertificateConfig"
                              Prelude.<$> serverCertificateConfig,
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
              [(JSON..=) "ApplicationProtocol" Prelude.<$> applicationProtocol,
               (JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
               (JSON..=) "AuthorizerConfig" Prelude.<$> authorizerConfig,
               (JSON..=) "ClientCertificateConfig"
                 Prelude.<$> clientCertificateConfig,
               (JSON..=) "DomainConfigurationName"
                 Prelude.<$> domainConfigurationName,
               (JSON..=) "DomainConfigurationStatus"
                 Prelude.<$> domainConfigurationStatus,
               (JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "ServerCertificateArns"
                 Prelude.<$> serverCertificateArns,
               (JSON..=) "ServerCertificateConfig"
                 Prelude.<$> serverCertificateConfig,
               (JSON..=) "ServiceType" Prelude.<$> serviceType,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TlsConfig" Prelude.<$> tlsConfig,
               (JSON..=) "ValidationCertificateArn"
                 Prelude.<$> validationCertificateArn]))
instance Property "ApplicationProtocol" DomainConfiguration where
  type PropertyType "ApplicationProtocol" DomainConfiguration = Value Prelude.Text
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {applicationProtocol = Prelude.pure newValue, ..}
instance Property "AuthenticationType" DomainConfiguration where
  type PropertyType "AuthenticationType" DomainConfiguration = Value Prelude.Text
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {authenticationType = Prelude.pure newValue, ..}
instance Property "AuthorizerConfig" DomainConfiguration where
  type PropertyType "AuthorizerConfig" DomainConfiguration = AuthorizerConfigProperty
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {authorizerConfig = Prelude.pure newValue, ..}
instance Property "ClientCertificateConfig" DomainConfiguration where
  type PropertyType "ClientCertificateConfig" DomainConfiguration = ClientCertificateConfigProperty
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {clientCertificateConfig = Prelude.pure newValue, ..}
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
instance Property "ServerCertificateConfig" DomainConfiguration where
  type PropertyType "ServerCertificateConfig" DomainConfiguration = ServerCertificateConfigProperty
  set newValue DomainConfiguration {..}
    = DomainConfiguration
        {serverCertificateConfig = Prelude.pure newValue, ..}
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