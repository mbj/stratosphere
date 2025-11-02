module Stratosphere.Route53.RecordSet (
        module Exports, RecordSet(..), mkRecordSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.RecordSet.AliasTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.RecordSet.CidrRoutingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.RecordSet.GeoLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53.RecordSet.GeoProximityLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html>
    RecordSet {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-aliastarget>
               aliasTarget :: (Prelude.Maybe AliasTargetProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-cidrroutingconfig>
               cidrRoutingConfig :: (Prelude.Maybe CidrRoutingConfigProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-comment>
               comment :: (Prelude.Maybe (Value Prelude.Text)),
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
mkRecordSet ::
  Value Prelude.Text -> Value Prelude.Text -> RecordSet
mkRecordSet name type'
  = RecordSet
      {haddock_workaround_ = (), name = name, type' = type',
       aliasTarget = Prelude.Nothing, cidrRoutingConfig = Prelude.Nothing,
       comment = Prelude.Nothing, failover = Prelude.Nothing,
       geoLocation = Prelude.Nothing,
       geoProximityLocation = Prelude.Nothing,
       healthCheckId = Prelude.Nothing, hostedZoneId = Prelude.Nothing,
       hostedZoneName = Prelude.Nothing,
       multiValueAnswer = Prelude.Nothing, region = Prelude.Nothing,
       resourceRecords = Prelude.Nothing, setIdentifier = Prelude.Nothing,
       tTL = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties RecordSet where
  toResourceProperties RecordSet {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSet", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AliasTarget" Prelude.<$> aliasTarget,
                               (JSON..=) "CidrRoutingConfig" Prelude.<$> cidrRoutingConfig,
                               (JSON..=) "Comment" Prelude.<$> comment,
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
instance JSON.ToJSON RecordSet where
  toJSON RecordSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AliasTarget" Prelude.<$> aliasTarget,
                  (JSON..=) "CidrRoutingConfig" Prelude.<$> cidrRoutingConfig,
                  (JSON..=) "Comment" Prelude.<$> comment,
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
instance Property "AliasTarget" RecordSet where
  type PropertyType "AliasTarget" RecordSet = AliasTargetProperty
  set newValue RecordSet {..}
    = RecordSet {aliasTarget = Prelude.pure newValue, ..}
instance Property "CidrRoutingConfig" RecordSet where
  type PropertyType "CidrRoutingConfig" RecordSet = CidrRoutingConfigProperty
  set newValue RecordSet {..}
    = RecordSet {cidrRoutingConfig = Prelude.pure newValue, ..}
instance Property "Comment" RecordSet where
  type PropertyType "Comment" RecordSet = Value Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {comment = Prelude.pure newValue, ..}
instance Property "Failover" RecordSet where
  type PropertyType "Failover" RecordSet = Value Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {failover = Prelude.pure newValue, ..}
instance Property "GeoLocation" RecordSet where
  type PropertyType "GeoLocation" RecordSet = GeoLocationProperty
  set newValue RecordSet {..}
    = RecordSet {geoLocation = Prelude.pure newValue, ..}
instance Property "GeoProximityLocation" RecordSet where
  type PropertyType "GeoProximityLocation" RecordSet = GeoProximityLocationProperty
  set newValue RecordSet {..}
    = RecordSet {geoProximityLocation = Prelude.pure newValue, ..}
instance Property "HealthCheckId" RecordSet where
  type PropertyType "HealthCheckId" RecordSet = Value Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {healthCheckId = Prelude.pure newValue, ..}
instance Property "HostedZoneId" RecordSet where
  type PropertyType "HostedZoneId" RecordSet = Value Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {hostedZoneId = Prelude.pure newValue, ..}
instance Property "HostedZoneName" RecordSet where
  type PropertyType "HostedZoneName" RecordSet = Value Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {hostedZoneName = Prelude.pure newValue, ..}
instance Property "MultiValueAnswer" RecordSet where
  type PropertyType "MultiValueAnswer" RecordSet = Value Prelude.Bool
  set newValue RecordSet {..}
    = RecordSet {multiValueAnswer = Prelude.pure newValue, ..}
instance Property "Name" RecordSet where
  type PropertyType "Name" RecordSet = Value Prelude.Text
  set newValue RecordSet {..} = RecordSet {name = newValue, ..}
instance Property "Region" RecordSet where
  type PropertyType "Region" RecordSet = Value Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {region = Prelude.pure newValue, ..}
instance Property "ResourceRecords" RecordSet where
  type PropertyType "ResourceRecords" RecordSet = ValueList Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {resourceRecords = Prelude.pure newValue, ..}
instance Property "SetIdentifier" RecordSet where
  type PropertyType "SetIdentifier" RecordSet = Value Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {setIdentifier = Prelude.pure newValue, ..}
instance Property "TTL" RecordSet where
  type PropertyType "TTL" RecordSet = Value Prelude.Text
  set newValue RecordSet {..}
    = RecordSet {tTL = Prelude.pure newValue, ..}
instance Property "Type" RecordSet where
  type PropertyType "Type" RecordSet = Value Prelude.Text
  set newValue RecordSet {..} = RecordSet {type' = newValue, ..}
instance Property "Weight" RecordSet where
  type PropertyType "Weight" RecordSet = Value Prelude.Integer
  set newValue RecordSet {..}
    = RecordSet {weight = Prelude.pure newValue, ..}