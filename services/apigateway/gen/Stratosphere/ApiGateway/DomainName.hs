module Stratosphere.ApiGateway.DomainName (
        module Exports, DomainName(..), mkDomainName
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.DomainName.EndpointConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.DomainName.MutualTlsAuthenticationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DomainName
  = DomainName {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                domainName :: (Prelude.Maybe (Value Prelude.Text)),
                endpointConfiguration :: (Prelude.Maybe EndpointConfigurationProperty),
                mutualTlsAuthentication :: (Prelude.Maybe MutualTlsAuthenticationProperty),
                ownershipVerificationCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                regionalCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                securityPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag])}
mkDomainName :: DomainName
mkDomainName
  = DomainName
      {certificateArn = Prelude.Nothing, domainName = Prelude.Nothing,
       endpointConfiguration = Prelude.Nothing,
       mutualTlsAuthentication = Prelude.Nothing,
       ownershipVerificationCertificateArn = Prelude.Nothing,
       regionalCertificateArn = Prelude.Nothing,
       securityPolicy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DomainName where
  toResourceProperties DomainName {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::DomainName",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "EndpointConfiguration"
                              Prelude.<$> endpointConfiguration,
                            (JSON..=) "MutualTlsAuthentication"
                              Prelude.<$> mutualTlsAuthentication,
                            (JSON..=) "OwnershipVerificationCertificateArn"
                              Prelude.<$> ownershipVerificationCertificateArn,
                            (JSON..=) "RegionalCertificateArn"
                              Prelude.<$> regionalCertificateArn,
                            (JSON..=) "SecurityPolicy" Prelude.<$> securityPolicy,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DomainName where
  toJSON DomainName {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "EndpointConfiguration"
                 Prelude.<$> endpointConfiguration,
               (JSON..=) "MutualTlsAuthentication"
                 Prelude.<$> mutualTlsAuthentication,
               (JSON..=) "OwnershipVerificationCertificateArn"
                 Prelude.<$> ownershipVerificationCertificateArn,
               (JSON..=) "RegionalCertificateArn"
                 Prelude.<$> regionalCertificateArn,
               (JSON..=) "SecurityPolicy" Prelude.<$> securityPolicy,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CertificateArn" DomainName where
  type PropertyType "CertificateArn" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {certificateArn = Prelude.pure newValue, ..}
instance Property "DomainName" DomainName where
  type PropertyType "DomainName" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {domainName = Prelude.pure newValue, ..}
instance Property "EndpointConfiguration" DomainName where
  type PropertyType "EndpointConfiguration" DomainName = EndpointConfigurationProperty
  set newValue DomainName {..}
    = DomainName {endpointConfiguration = Prelude.pure newValue, ..}
instance Property "MutualTlsAuthentication" DomainName where
  type PropertyType "MutualTlsAuthentication" DomainName = MutualTlsAuthenticationProperty
  set newValue DomainName {..}
    = DomainName {mutualTlsAuthentication = Prelude.pure newValue, ..}
instance Property "OwnershipVerificationCertificateArn" DomainName where
  type PropertyType "OwnershipVerificationCertificateArn" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName
        {ownershipVerificationCertificateArn = Prelude.pure newValue, ..}
instance Property "RegionalCertificateArn" DomainName where
  type PropertyType "RegionalCertificateArn" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {regionalCertificateArn = Prelude.pure newValue, ..}
instance Property "SecurityPolicy" DomainName where
  type PropertyType "SecurityPolicy" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {securityPolicy = Prelude.pure newValue, ..}
instance Property "Tags" DomainName where
  type PropertyType "Tags" DomainName = [Tag]
  set newValue DomainName {..}
    = DomainName {tags = Prelude.pure newValue, ..}