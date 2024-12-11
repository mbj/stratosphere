module Stratosphere.ApiGateway.DomainNameV2 (
        module Exports, DomainNameV2(..), mkDomainNameV2
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.DomainNameV2.EndpointConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DomainNameV2
  = DomainNameV2 {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                  domainName :: (Prelude.Maybe (Value Prelude.Text)),
                  endpointConfiguration :: (Prelude.Maybe EndpointConfigurationProperty),
                  policy :: (Prelude.Maybe JSON.Object),
                  securityPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainNameV2 :: DomainNameV2
mkDomainNameV2
  = DomainNameV2
      {certificateArn = Prelude.Nothing, domainName = Prelude.Nothing,
       endpointConfiguration = Prelude.Nothing, policy = Prelude.Nothing,
       securityPolicy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DomainNameV2 where
  toResourceProperties DomainNameV2 {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::DomainNameV2",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "EndpointConfiguration"
                              Prelude.<$> endpointConfiguration,
                            (JSON..=) "Policy" Prelude.<$> policy,
                            (JSON..=) "SecurityPolicy" Prelude.<$> securityPolicy,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DomainNameV2 where
  toJSON DomainNameV2 {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "EndpointConfiguration"
                 Prelude.<$> endpointConfiguration,
               (JSON..=) "Policy" Prelude.<$> policy,
               (JSON..=) "SecurityPolicy" Prelude.<$> securityPolicy,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CertificateArn" DomainNameV2 where
  type PropertyType "CertificateArn" DomainNameV2 = Value Prelude.Text
  set newValue DomainNameV2 {..}
    = DomainNameV2 {certificateArn = Prelude.pure newValue, ..}
instance Property "DomainName" DomainNameV2 where
  type PropertyType "DomainName" DomainNameV2 = Value Prelude.Text
  set newValue DomainNameV2 {..}
    = DomainNameV2 {domainName = Prelude.pure newValue, ..}
instance Property "EndpointConfiguration" DomainNameV2 where
  type PropertyType "EndpointConfiguration" DomainNameV2 = EndpointConfigurationProperty
  set newValue DomainNameV2 {..}
    = DomainNameV2 {endpointConfiguration = Prelude.pure newValue, ..}
instance Property "Policy" DomainNameV2 where
  type PropertyType "Policy" DomainNameV2 = JSON.Object
  set newValue DomainNameV2 {..}
    = DomainNameV2 {policy = Prelude.pure newValue, ..}
instance Property "SecurityPolicy" DomainNameV2 where
  type PropertyType "SecurityPolicy" DomainNameV2 = Value Prelude.Text
  set newValue DomainNameV2 {..}
    = DomainNameV2 {securityPolicy = Prelude.pure newValue, ..}
instance Property "Tags" DomainNameV2 where
  type PropertyType "Tags" DomainNameV2 = [Tag]
  set newValue DomainNameV2 {..}
    = DomainNameV2 {tags = Prelude.pure newValue, ..}