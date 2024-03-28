module Stratosphere.EC2.VerifiedAccessEndpoint (
        module Exports, VerifiedAccessEndpoint(..),
        mkVerifiedAccessEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessEndpoint.LoadBalancerOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessEndpoint.NetworkInterfaceOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessEndpoint.SseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VerifiedAccessEndpoint
  = VerifiedAccessEndpoint {applicationDomain :: (Value Prelude.Text),
                            attachmentType :: (Value Prelude.Text),
                            description :: (Prelude.Maybe (Value Prelude.Text)),
                            domainCertificateArn :: (Value Prelude.Text),
                            endpointDomainPrefix :: (Value Prelude.Text),
                            endpointType :: (Value Prelude.Text),
                            loadBalancerOptions :: (Prelude.Maybe LoadBalancerOptionsProperty),
                            networkInterfaceOptions :: (Prelude.Maybe NetworkInterfaceOptionsProperty),
                            policyDocument :: (Prelude.Maybe (Value Prelude.Text)),
                            policyEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                            securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                            sseSpecification :: (Prelude.Maybe SseSpecificationProperty),
                            tags :: (Prelude.Maybe [Tag]),
                            verifiedAccessGroupId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedAccessEndpoint ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text -> VerifiedAccessEndpoint
mkVerifiedAccessEndpoint
  applicationDomain
  attachmentType
  domainCertificateArn
  endpointDomainPrefix
  endpointType
  verifiedAccessGroupId
  = VerifiedAccessEndpoint
      {applicationDomain = applicationDomain,
       attachmentType = attachmentType,
       domainCertificateArn = domainCertificateArn,
       endpointDomainPrefix = endpointDomainPrefix,
       endpointType = endpointType,
       verifiedAccessGroupId = verifiedAccessGroupId,
       description = Prelude.Nothing,
       loadBalancerOptions = Prelude.Nothing,
       networkInterfaceOptions = Prelude.Nothing,
       policyDocument = Prelude.Nothing, policyEnabled = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing,
       sseSpecification = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VerifiedAccessEndpoint where
  toResourceProperties VerifiedAccessEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessEndpoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationDomain" JSON..= applicationDomain,
                            "AttachmentType" JSON..= attachmentType,
                            "DomainCertificateArn" JSON..= domainCertificateArn,
                            "EndpointDomainPrefix" JSON..= endpointDomainPrefix,
                            "EndpointType" JSON..= endpointType,
                            "VerifiedAccessGroupId" JSON..= verifiedAccessGroupId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LoadBalancerOptions" Prelude.<$> loadBalancerOptions,
                               (JSON..=) "NetworkInterfaceOptions"
                                 Prelude.<$> networkInterfaceOptions,
                               (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                               (JSON..=) "PolicyEnabled" Prelude.<$> policyEnabled,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SseSpecification" Prelude.<$> sseSpecification,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VerifiedAccessEndpoint where
  toJSON VerifiedAccessEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationDomain" JSON..= applicationDomain,
               "AttachmentType" JSON..= attachmentType,
               "DomainCertificateArn" JSON..= domainCertificateArn,
               "EndpointDomainPrefix" JSON..= endpointDomainPrefix,
               "EndpointType" JSON..= endpointType,
               "VerifiedAccessGroupId" JSON..= verifiedAccessGroupId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LoadBalancerOptions" Prelude.<$> loadBalancerOptions,
                  (JSON..=) "NetworkInterfaceOptions"
                    Prelude.<$> networkInterfaceOptions,
                  (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                  (JSON..=) "PolicyEnabled" Prelude.<$> policyEnabled,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SseSpecification" Prelude.<$> sseSpecification,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationDomain" VerifiedAccessEndpoint where
  type PropertyType "ApplicationDomain" VerifiedAccessEndpoint = Value Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint {applicationDomain = newValue, ..}
instance Property "AttachmentType" VerifiedAccessEndpoint where
  type PropertyType "AttachmentType" VerifiedAccessEndpoint = Value Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint {attachmentType = newValue, ..}
instance Property "Description" VerifiedAccessEndpoint where
  type PropertyType "Description" VerifiedAccessEndpoint = Value Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint {description = Prelude.pure newValue, ..}
instance Property "DomainCertificateArn" VerifiedAccessEndpoint where
  type PropertyType "DomainCertificateArn" VerifiedAccessEndpoint = Value Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint {domainCertificateArn = newValue, ..}
instance Property "EndpointDomainPrefix" VerifiedAccessEndpoint where
  type PropertyType "EndpointDomainPrefix" VerifiedAccessEndpoint = Value Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint {endpointDomainPrefix = newValue, ..}
instance Property "EndpointType" VerifiedAccessEndpoint where
  type PropertyType "EndpointType" VerifiedAccessEndpoint = Value Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint {endpointType = newValue, ..}
instance Property "LoadBalancerOptions" VerifiedAccessEndpoint where
  type PropertyType "LoadBalancerOptions" VerifiedAccessEndpoint = LoadBalancerOptionsProperty
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint
        {loadBalancerOptions = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceOptions" VerifiedAccessEndpoint where
  type PropertyType "NetworkInterfaceOptions" VerifiedAccessEndpoint = NetworkInterfaceOptionsProperty
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint
        {networkInterfaceOptions = Prelude.pure newValue, ..}
instance Property "PolicyDocument" VerifiedAccessEndpoint where
  type PropertyType "PolicyDocument" VerifiedAccessEndpoint = Value Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint
        {policyDocument = Prelude.pure newValue, ..}
instance Property "PolicyEnabled" VerifiedAccessEndpoint where
  type PropertyType "PolicyEnabled" VerifiedAccessEndpoint = Value Prelude.Bool
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint
        {policyEnabled = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" VerifiedAccessEndpoint where
  type PropertyType "SecurityGroupIds" VerifiedAccessEndpoint = ValueList Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SseSpecification" VerifiedAccessEndpoint where
  type PropertyType "SseSpecification" VerifiedAccessEndpoint = SseSpecificationProperty
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint
        {sseSpecification = Prelude.pure newValue, ..}
instance Property "Tags" VerifiedAccessEndpoint where
  type PropertyType "Tags" VerifiedAccessEndpoint = [Tag]
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint {tags = Prelude.pure newValue, ..}
instance Property "VerifiedAccessGroupId" VerifiedAccessEndpoint where
  type PropertyType "VerifiedAccessGroupId" VerifiedAccessEndpoint = Value Prelude.Text
  set newValue VerifiedAccessEndpoint {..}
    = VerifiedAccessEndpoint {verifiedAccessGroupId = newValue, ..}