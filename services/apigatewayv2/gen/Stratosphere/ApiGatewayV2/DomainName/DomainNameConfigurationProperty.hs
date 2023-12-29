module Stratosphere.ApiGatewayV2.DomainName.DomainNameConfigurationProperty (
        DomainNameConfigurationProperty(..),
        mkDomainNameConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainNameConfigurationProperty
  = DomainNameConfigurationProperty {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     certificateName :: (Prelude.Maybe (Value Prelude.Text)),
                                     endpointType :: (Prelude.Maybe (Value Prelude.Text)),
                                     ownershipVerificationCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     securityPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainNameConfigurationProperty ::
  DomainNameConfigurationProperty
mkDomainNameConfigurationProperty
  = DomainNameConfigurationProperty
      {certificateArn = Prelude.Nothing,
       certificateName = Prelude.Nothing, endpointType = Prelude.Nothing,
       ownershipVerificationCertificateArn = Prelude.Nothing,
       securityPolicy = Prelude.Nothing}
instance ToResourceProperties DomainNameConfigurationProperty where
  toResourceProperties DomainNameConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::DomainName.DomainNameConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "CertificateName" Prelude.<$> certificateName,
                            (JSON..=) "EndpointType" Prelude.<$> endpointType,
                            (JSON..=) "OwnershipVerificationCertificateArn"
                              Prelude.<$> ownershipVerificationCertificateArn,
                            (JSON..=) "SecurityPolicy" Prelude.<$> securityPolicy])}
instance JSON.ToJSON DomainNameConfigurationProperty where
  toJSON DomainNameConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "CertificateName" Prelude.<$> certificateName,
               (JSON..=) "EndpointType" Prelude.<$> endpointType,
               (JSON..=) "OwnershipVerificationCertificateArn"
                 Prelude.<$> ownershipVerificationCertificateArn,
               (JSON..=) "SecurityPolicy" Prelude.<$> securityPolicy]))
instance Property "CertificateArn" DomainNameConfigurationProperty where
  type PropertyType "CertificateArn" DomainNameConfigurationProperty = Value Prelude.Text
  set newValue DomainNameConfigurationProperty {..}
    = DomainNameConfigurationProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "CertificateName" DomainNameConfigurationProperty where
  type PropertyType "CertificateName" DomainNameConfigurationProperty = Value Prelude.Text
  set newValue DomainNameConfigurationProperty {..}
    = DomainNameConfigurationProperty
        {certificateName = Prelude.pure newValue, ..}
instance Property "EndpointType" DomainNameConfigurationProperty where
  type PropertyType "EndpointType" DomainNameConfigurationProperty = Value Prelude.Text
  set newValue DomainNameConfigurationProperty {..}
    = DomainNameConfigurationProperty
        {endpointType = Prelude.pure newValue, ..}
instance Property "OwnershipVerificationCertificateArn" DomainNameConfigurationProperty where
  type PropertyType "OwnershipVerificationCertificateArn" DomainNameConfigurationProperty = Value Prelude.Text
  set newValue DomainNameConfigurationProperty {..}
    = DomainNameConfigurationProperty
        {ownershipVerificationCertificateArn = Prelude.pure newValue, ..}
instance Property "SecurityPolicy" DomainNameConfigurationProperty where
  type PropertyType "SecurityPolicy" DomainNameConfigurationProperty = Value Prelude.Text
  set newValue DomainNameConfigurationProperty {..}
    = DomainNameConfigurationProperty
        {securityPolicy = Prelude.pure newValue, ..}