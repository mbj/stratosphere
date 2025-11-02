module Stratosphere.Route53.RecordSetGroup.RecordSetProperty (
        module Exports, RecordSetProperty(..), mkRecordSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.AliasTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.CidrRoutingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.GeoLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.GeoProximityLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html>
    RecordSetProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-aliastarget>
                       aliasTarget :: (Prelude.Maybe AliasTargetProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-cidrroutingconfig>
                       cidrRoutingConfig :: (Prelude.Maybe CidrRoutingConfigProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-failover>
                       failover :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-geolocation>
                       geoLocation :: (Prelude.Maybe GeoLocationProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-geoproximitylocation>
                       geoProximityLocation :: (Prelude.Maybe GeoProximityLocationProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-healthcheckid>
                       healthCheckId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-hostedzoneid>
                       hostedZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-hostedzonename>
                       hostedZoneName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-multivalueanswer>
                       multiValueAnswer :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-name>
                       name :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-region>
                       region :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-resourcerecords>
                       resourceRecords :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-setidentifier>
                       setIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-ttl>
                       tTL :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-type>
                       type' :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-weight>
                       weight :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordSetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RecordSetProperty
mkRecordSetProperty name type'
  = RecordSetProperty
      {haddock_workaround_ = (), name = name, type' = type',
       aliasTarget = Prelude.Nothing, cidrRoutingConfig = Prelude.Nothing,
       failover = Prelude.Nothing, geoLocation = Prelude.Nothing,
       geoProximityLocation = Prelude.Nothing,
       healthCheckId = Prelude.Nothing, hostedZoneId = Prelude.Nothing,
       hostedZoneName = Prelude.Nothing,
       multiValueAnswer = Prelude.Nothing, region = Prelude.Nothing,
       resourceRecords = Prelude.Nothing, setIdentifier = Prelude.Nothing,
       tTL = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties RecordSetProperty where
  toResourceProperties RecordSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSetGroup.RecordSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AliasTarget" Prelude.<$> aliasTarget,
                               (JSON..=) "CidrRoutingConfig" Prelude.<$> cidrRoutingConfig,
                               (JSON..=) "Failover" Prelude.<$> failover,
                               (JSON..=) "GeoLocation" Prelude.<$> geoLocation,
                               (JSON..=) "GeoProximityLocation" Prelude.<$> geoProximityLocation,
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
                  (JSON..=) "GeoProximityLocation" Prelude.<$> geoProximityLocation,
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
instance Property "GeoProximityLocation" RecordSetProperty where
  type PropertyType "GeoProximityLocation" RecordSetProperty = GeoProximityLocationProperty
  set newValue RecordSetProperty {..}
    = RecordSetProperty
        {geoProximityLocation = Prelude.pure newValue, ..}
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
  type PropertyType "ResourceRecords" RecordSetProperty = ValueList Prelude.Text
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