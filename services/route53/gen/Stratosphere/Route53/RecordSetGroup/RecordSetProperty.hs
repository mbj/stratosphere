module Stratosphere.Route53.RecordSetGroup.RecordSetProperty (
        module Exports, RecordSetProperty(..), mkRecordSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.AliasTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.CidrRoutingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.GeoLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordSetProperty
  = RecordSetProperty {aliasTarget :: (Prelude.Maybe AliasTargetProperty),
                       cidrRoutingConfig :: (Prelude.Maybe CidrRoutingConfigProperty),
                       failover :: (Prelude.Maybe (Value Prelude.Text)),
                       geoLocation :: (Prelude.Maybe GeoLocationProperty),
                       healthCheckId :: (Prelude.Maybe (Value Prelude.Text)),
                       hostedZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                       hostedZoneName :: (Prelude.Maybe (Value Prelude.Text)),
                       multiValueAnswer :: (Prelude.Maybe (Value Prelude.Bool)),
                       name :: (Value Prelude.Text),
                       region :: (Prelude.Maybe (Value Prelude.Text)),
                       resourceRecords :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       setIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                       tTL :: (Prelude.Maybe (Value Prelude.Text)),
                       type' :: (Value Prelude.Text),
                       weight :: (Prelude.Maybe (Value Prelude.Integer))}
mkRecordSetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RecordSetProperty
mkRecordSetProperty name type'
  = RecordSetProperty
      {name = name, type' = type', aliasTarget = Prelude.Nothing,
       cidrRoutingConfig = Prelude.Nothing, failover = Prelude.Nothing,
       geoLocation = Prelude.Nothing, healthCheckId = Prelude.Nothing,
       hostedZoneId = Prelude.Nothing, hostedZoneName = Prelude.Nothing,
       multiValueAnswer = Prelude.Nothing, region = Prelude.Nothing,
       resourceRecords = Prelude.Nothing, setIdentifier = Prelude.Nothing,
       tTL = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties RecordSetProperty where
  toResourceProperties RecordSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSetGroup.RecordSet",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AliasTarget" Prelude.<$> aliasTarget,
                               (JSON..=) "CidrRoutingConfig" Prelude.<$> cidrRoutingConfig,
                               (JSON..=) "Failover" Prelude.<$> failover,
                               (JSON..=) "GeoLocation" Prelude.<$> geoLocation,
                               (JSON..=) "HealthCheckId" Prelude.<$> healthCheckId,
                               (JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId,
                               (JSON..=) "HostedZoneName" Prelude.<$> hostedZoneName,
                               (JSON..=) "MultiValueAnswer" Prelude.<$> multiValueAnswer,
                               (JSON..=) "Region" Prelude.<$> region,
                               (JSON..=) "ResourceRecords" Prelude.<$> resourceRecords,
                               (JSON..=) "SetIdentifier" Prelude.<$> setIdentifier,
                               (JSON..=) "TTL" Prelude.<$> tTL,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON RecordSetProperty where
  toJSON RecordSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AliasTarget" Prelude.<$> aliasTarget,
                  (JSON..=) "CidrRoutingConfig" Prelude.<$> cidrRoutingConfig,
                  (JSON..=) "Failover" Prelude.<$> failover,
                  (JSON..=) "GeoLocation" Prelude.<$> geoLocation,
                  (JSON..=) "HealthCheckId" Prelude.<$> healthCheckId,
                  (JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId,
                  (JSON..=) "HostedZoneName" Prelude.<$> hostedZoneName,
                  (JSON..=) "MultiValueAnswer" Prelude.<$> multiValueAnswer,
                  (JSON..=) "Region" Prelude.<$> region,
                  (JSON..=) "ResourceRecords" Prelude.<$> resourceRecords,
                  (JSON..=) "SetIdentifier" Prelude.<$> setIdentifier,
                  (JSON..=) "TTL" Prelude.<$> tTL,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "AliasTarget" RecordSetProperty where
  type PropertyType "AliasTarget" RecordSetProperty = AliasTargetProperty
  set newValue RecordSetProperty {..}
    = RecordSetProperty {aliasTarget = Prelude.pure newValue, ..}
instance Property "CidrRoutingConfig" RecordSetProperty where
  type PropertyType "CidrRoutingConfig" RecordSetProperty = CidrRoutingConfigProperty
  set newValue RecordSetProperty {..}
    = RecordSetProperty {cidrRoutingConfig = Prelude.pure newValue, ..}
instance Property "Failover" RecordSetProperty where
  type PropertyType "Failover" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {failover = Prelude.pure newValue, ..}
instance Property "GeoLocation" RecordSetProperty where
  type PropertyType "GeoLocation" RecordSetProperty = GeoLocationProperty
  set newValue RecordSetProperty {..}
    = RecordSetProperty {geoLocation = Prelude.pure newValue, ..}
instance Property "HealthCheckId" RecordSetProperty where
  type PropertyType "HealthCheckId" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {healthCheckId = Prelude.pure newValue, ..}
instance Property "HostedZoneId" RecordSetProperty where
  type PropertyType "HostedZoneId" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {hostedZoneId = Prelude.pure newValue, ..}
instance Property "HostedZoneName" RecordSetProperty where
  type PropertyType "HostedZoneName" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {hostedZoneName = Prelude.pure newValue, ..}
instance Property "MultiValueAnswer" RecordSetProperty where
  type PropertyType "MultiValueAnswer" RecordSetProperty = Value Prelude.Bool
  set newValue RecordSetProperty {..}
    = RecordSetProperty {multiValueAnswer = Prelude.pure newValue, ..}
instance Property "Name" RecordSetProperty where
  type PropertyType "Name" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {name = newValue, ..}
instance Property "Region" RecordSetProperty where
  type PropertyType "Region" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {region = Prelude.pure newValue, ..}
instance Property "ResourceRecords" RecordSetProperty where
  type PropertyType "ResourceRecords" RecordSetProperty = ValueList (Value Prelude.Text)
  set newValue RecordSetProperty {..}
    = RecordSetProperty {resourceRecords = Prelude.pure newValue, ..}
instance Property "SetIdentifier" RecordSetProperty where
  type PropertyType "SetIdentifier" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {setIdentifier = Prelude.pure newValue, ..}
instance Property "TTL" RecordSetProperty where
  type PropertyType "TTL" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {tTL = Prelude.pure newValue, ..}
instance Property "Type" RecordSetProperty where
  type PropertyType "Type" RecordSetProperty = Value Prelude.Text
  set newValue RecordSetProperty {..}
    = RecordSetProperty {type' = newValue, ..}
instance Property "Weight" RecordSetProperty where
  type PropertyType "Weight" RecordSetProperty = Value Prelude.Integer
  set newValue RecordSetProperty {..}
    = RecordSetProperty {weight = Prelude.pure newValue, ..}