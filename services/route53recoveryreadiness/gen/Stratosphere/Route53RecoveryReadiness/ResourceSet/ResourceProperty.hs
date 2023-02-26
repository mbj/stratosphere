module Stratosphere.Route53RecoveryReadiness.ResourceSet.ResourceProperty (
        module Exports, ResourceProperty(..), mkResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53RecoveryReadiness.ResourceSet.DNSTargetResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceProperty
  = ResourceProperty {componentId :: (Prelude.Maybe (Value Prelude.Text)),
                      dnsTargetResource :: (Prelude.Maybe DNSTargetResourceProperty),
                      readinessScopes :: (Prelude.Maybe (ValueList Prelude.Text)),
                      resourceArn :: (Prelude.Maybe (Value Prelude.Text))}
mkResourceProperty :: ResourceProperty
mkResourceProperty
  = ResourceProperty
      {componentId = Prelude.Nothing,
       dnsTargetResource = Prelude.Nothing,
       readinessScopes = Prelude.Nothing, resourceArn = Prelude.Nothing}
instance ToResourceProperties ResourceProperty where
  toResourceProperties ResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::ResourceSet.Resource",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentId" Prelude.<$> componentId,
                            (JSON..=) "DnsTargetResource" Prelude.<$> dnsTargetResource,
                            (JSON..=) "ReadinessScopes" Prelude.<$> readinessScopes,
                            (JSON..=) "ResourceArn" Prelude.<$> resourceArn])}
instance JSON.ToJSON ResourceProperty where
  toJSON ResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentId" Prelude.<$> componentId,
               (JSON..=) "DnsTargetResource" Prelude.<$> dnsTargetResource,
               (JSON..=) "ReadinessScopes" Prelude.<$> readinessScopes,
               (JSON..=) "ResourceArn" Prelude.<$> resourceArn]))
instance Property "ComponentId" ResourceProperty where
  type PropertyType "ComponentId" ResourceProperty = Value Prelude.Text
  set newValue ResourceProperty {..}
    = ResourceProperty {componentId = Prelude.pure newValue, ..}
instance Property "DnsTargetResource" ResourceProperty where
  type PropertyType "DnsTargetResource" ResourceProperty = DNSTargetResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {dnsTargetResource = Prelude.pure newValue, ..}
instance Property "ReadinessScopes" ResourceProperty where
  type PropertyType "ReadinessScopes" ResourceProperty = ValueList Prelude.Text
  set newValue ResourceProperty {..}
    = ResourceProperty {readinessScopes = Prelude.pure newValue, ..}
instance Property "ResourceArn" ResourceProperty where
  type PropertyType "ResourceArn" ResourceProperty = Value Prelude.Text
  set newValue ResourceProperty {..}
    = ResourceProperty {resourceArn = Prelude.pure newValue, ..}