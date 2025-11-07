module Stratosphere.ARCRegionSwitch.Plan.Route53HealthCheckConfigurationProperty (
        module Exports, Route53HealthCheckConfigurationProperty(..),
        mkRoute53HealthCheckConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.Route53ResourceRecordSetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Route53HealthCheckConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53healthcheckconfiguration.html>
    Route53HealthCheckConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53healthcheckconfiguration.html#cfn-arcregionswitch-plan-route53healthcheckconfiguration-crossaccountrole>
                                             crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53healthcheckconfiguration.html#cfn-arcregionswitch-plan-route53healthcheckconfiguration-externalid>
                                             externalId :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53healthcheckconfiguration.html#cfn-arcregionswitch-plan-route53healthcheckconfiguration-hostedzoneid>
                                             hostedZoneId :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53healthcheckconfiguration.html#cfn-arcregionswitch-plan-route53healthcheckconfiguration-recordname>
                                             recordName :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53healthcheckconfiguration.html#cfn-arcregionswitch-plan-route53healthcheckconfiguration-recordsets>
                                             recordSets :: (Prelude.Maybe [Route53ResourceRecordSetProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53healthcheckconfiguration.html#cfn-arcregionswitch-plan-route53healthcheckconfiguration-timeoutminutes>
                                             timeoutMinutes :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoute53HealthCheckConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Route53HealthCheckConfigurationProperty
mkRoute53HealthCheckConfigurationProperty hostedZoneId recordName
  = Route53HealthCheckConfigurationProperty
      {haddock_workaround_ = (), hostedZoneId = hostedZoneId,
       recordName = recordName, crossAccountRole = Prelude.Nothing,
       externalId = Prelude.Nothing, recordSets = Prelude.Nothing,
       timeoutMinutes = Prelude.Nothing}
instance ToResourceProperties Route53HealthCheckConfigurationProperty where
  toResourceProperties Route53HealthCheckConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Route53HealthCheckConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HostedZoneId" JSON..= hostedZoneId,
                            "RecordName" JSON..= recordName]
                           (Prelude.catMaybes
                              [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                               (JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "RecordSets" Prelude.<$> recordSets,
                               (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes]))}
instance JSON.ToJSON Route53HealthCheckConfigurationProperty where
  toJSON Route53HealthCheckConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HostedZoneId" JSON..= hostedZoneId,
               "RecordName" JSON..= recordName]
              (Prelude.catMaybes
                 [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                  (JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "RecordSets" Prelude.<$> recordSets,
                  (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes])))
instance Property "CrossAccountRole" Route53HealthCheckConfigurationProperty where
  type PropertyType "CrossAccountRole" Route53HealthCheckConfigurationProperty = Value Prelude.Text
  set newValue Route53HealthCheckConfigurationProperty {..}
    = Route53HealthCheckConfigurationProperty
        {crossAccountRole = Prelude.pure newValue, ..}
instance Property "ExternalId" Route53HealthCheckConfigurationProperty where
  type PropertyType "ExternalId" Route53HealthCheckConfigurationProperty = Value Prelude.Text
  set newValue Route53HealthCheckConfigurationProperty {..}
    = Route53HealthCheckConfigurationProperty
        {externalId = Prelude.pure newValue, ..}
instance Property "HostedZoneId" Route53HealthCheckConfigurationProperty where
  type PropertyType "HostedZoneId" Route53HealthCheckConfigurationProperty = Value Prelude.Text
  set newValue Route53HealthCheckConfigurationProperty {..}
    = Route53HealthCheckConfigurationProperty
        {hostedZoneId = newValue, ..}
instance Property "RecordName" Route53HealthCheckConfigurationProperty where
  type PropertyType "RecordName" Route53HealthCheckConfigurationProperty = Value Prelude.Text
  set newValue Route53HealthCheckConfigurationProperty {..}
    = Route53HealthCheckConfigurationProperty
        {recordName = newValue, ..}
instance Property "RecordSets" Route53HealthCheckConfigurationProperty where
  type PropertyType "RecordSets" Route53HealthCheckConfigurationProperty = [Route53ResourceRecordSetProperty]
  set newValue Route53HealthCheckConfigurationProperty {..}
    = Route53HealthCheckConfigurationProperty
        {recordSets = Prelude.pure newValue, ..}
instance Property "TimeoutMinutes" Route53HealthCheckConfigurationProperty where
  type PropertyType "TimeoutMinutes" Route53HealthCheckConfigurationProperty = Value Prelude.Double
  set newValue Route53HealthCheckConfigurationProperty {..}
    = Route53HealthCheckConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}