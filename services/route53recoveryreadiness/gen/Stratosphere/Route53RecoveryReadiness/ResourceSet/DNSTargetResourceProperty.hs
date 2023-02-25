module Stratosphere.Route53RecoveryReadiness.ResourceSet.DNSTargetResourceProperty (
        module Exports, DNSTargetResourceProperty(..),
        mkDNSTargetResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53RecoveryReadiness.ResourceSet.TargetResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DNSTargetResourceProperty
  = DNSTargetResourceProperty {domainName :: (Prelude.Maybe (Value Prelude.Text)),
                               hostedZoneArn :: (Prelude.Maybe (Value Prelude.Text)),
                               recordSetId :: (Prelude.Maybe (Value Prelude.Text)),
                               recordType :: (Prelude.Maybe (Value Prelude.Text)),
                               targetResource :: (Prelude.Maybe TargetResourceProperty)}
mkDNSTargetResourceProperty :: DNSTargetResourceProperty
mkDNSTargetResourceProperty
  = DNSTargetResourceProperty
      {domainName = Prelude.Nothing, hostedZoneArn = Prelude.Nothing,
       recordSetId = Prelude.Nothing, recordType = Prelude.Nothing,
       targetResource = Prelude.Nothing}
instance ToResourceProperties DNSTargetResourceProperty where
  toResourceProperties DNSTargetResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::ResourceSet.DNSTargetResource",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "HostedZoneArn" Prelude.<$> hostedZoneArn,
                            (JSON..=) "RecordSetId" Prelude.<$> recordSetId,
                            (JSON..=) "RecordType" Prelude.<$> recordType,
                            (JSON..=) "TargetResource" Prelude.<$> targetResource])}
instance JSON.ToJSON DNSTargetResourceProperty where
  toJSON DNSTargetResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "HostedZoneArn" Prelude.<$> hostedZoneArn,
               (JSON..=) "RecordSetId" Prelude.<$> recordSetId,
               (JSON..=) "RecordType" Prelude.<$> recordType,
               (JSON..=) "TargetResource" Prelude.<$> targetResource]))
instance Property "DomainName" DNSTargetResourceProperty where
  type PropertyType "DomainName" DNSTargetResourceProperty = Value Prelude.Text
  set newValue DNSTargetResourceProperty {..}
    = DNSTargetResourceProperty
        {domainName = Prelude.pure newValue, ..}
instance Property "HostedZoneArn" DNSTargetResourceProperty where
  type PropertyType "HostedZoneArn" DNSTargetResourceProperty = Value Prelude.Text
  set newValue DNSTargetResourceProperty {..}
    = DNSTargetResourceProperty
        {hostedZoneArn = Prelude.pure newValue, ..}
instance Property "RecordSetId" DNSTargetResourceProperty where
  type PropertyType "RecordSetId" DNSTargetResourceProperty = Value Prelude.Text
  set newValue DNSTargetResourceProperty {..}
    = DNSTargetResourceProperty
        {recordSetId = Prelude.pure newValue, ..}
instance Property "RecordType" DNSTargetResourceProperty where
  type PropertyType "RecordType" DNSTargetResourceProperty = Value Prelude.Text
  set newValue DNSTargetResourceProperty {..}
    = DNSTargetResourceProperty
        {recordType = Prelude.pure newValue, ..}
instance Property "TargetResource" DNSTargetResourceProperty where
  type PropertyType "TargetResource" DNSTargetResourceProperty = TargetResourceProperty
  set newValue DNSTargetResourceProperty {..}
    = DNSTargetResourceProperty
        {targetResource = Prelude.pure newValue, ..}