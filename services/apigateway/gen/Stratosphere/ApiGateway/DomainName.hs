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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html>
    DomainName {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-certificatearn>
                certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-domainname>
                domainName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-endpointconfiguration>
                endpointConfiguration :: (Prelude.Maybe EndpointConfigurationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-mutualtlsauthentication>
                mutualTlsAuthentication :: (Prelude.Maybe MutualTlsAuthenticationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-ownershipverificationcertificatearn>
                ownershipVerificationCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-regionalcertificatearn>
                regionalCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-securitypolicy>
                securityPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainName :: DomainName
mkDomainName
  = DomainName
      {haddock_workaround_ = (), certificateArn = Prelude.Nothing,
       domainName = Prelude.Nothing,
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