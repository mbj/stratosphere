module Stratosphere.Route53.HealthCheck.HealthCheckConfigProperty (
        module Exports, HealthCheckConfigProperty(..),
        mkHealthCheckConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.HealthCheck.AlarmIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html>
    HealthCheckConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-alarmidentifier>
                               alarmIdentifier :: (Prelude.Maybe AlarmIdentifierProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-childhealthchecks>
                               childHealthChecks :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-enablesni>
                               enableSNI :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-failurethreshold>
                               failureThreshold :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-fullyqualifieddomainname>
                               fullyQualifiedDomainName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-healththreshold>
                               healthThreshold :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-ipaddress>
                               iPAddress :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-insufficientdatahealthstatus>
                               insufficientDataHealthStatus :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-inverted>
                               inverted :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-measurelatency>
                               measureLatency :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-port>
                               port :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-regions>
                               regions :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-requestinterval>
                               requestInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-resourcepath>
                               resourcePath :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-routingcontrolarn>
                               routingControlArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-searchstring>
                               searchString :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-type>
                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckConfigProperty ::
  Value Prelude.Text -> HealthCheckConfigProperty
mkHealthCheckConfigProperty type'
  = HealthCheckConfigProperty
      {haddock_workaround_ = (), type' = type',
       alarmIdentifier = Prelude.Nothing,
       childHealthChecks = Prelude.Nothing, enableSNI = Prelude.Nothing,
       failureThreshold = Prelude.Nothing,
       fullyQualifiedDomainName = Prelude.Nothing,
       healthThreshold = Prelude.Nothing, iPAddress = Prelude.Nothing,
       insufficientDataHealthStatus = Prelude.Nothing,
       inverted = Prelude.Nothing, measureLatency = Prelude.Nothing,
       port = Prelude.Nothing, regions = Prelude.Nothing,
       requestInterval = Prelude.Nothing, resourcePath = Prelude.Nothing,
       routingControlArn = Prelude.Nothing,
       searchString = Prelude.Nothing}
instance ToResourceProperties HealthCheckConfigProperty where
  toResourceProperties HealthCheckConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HealthCheck.HealthCheckConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AlarmIdentifier" Prelude.<$> alarmIdentifier,
                               (JSON..=) "ChildHealthChecks" Prelude.<$> childHealthChecks,
                               (JSON..=) "EnableSNI" Prelude.<$> enableSNI,
                               (JSON..=) "FailureThreshold" Prelude.<$> failureThreshold,
                               (JSON..=) "FullyQualifiedDomainName"
                                 Prelude.<$> fullyQualifiedDomainName,
                               (JSON..=) "HealthThreshold" Prelude.<$> healthThreshold,
                               (JSON..=) "IPAddress" Prelude.<$> iPAddress,
                               (JSON..=) "InsufficientDataHealthStatus"
                                 Prelude.<$> insufficientDataHealthStatus,
                               (JSON..=) "Inverted" Prelude.<$> inverted,
                               (JSON..=) "MeasureLatency" Prelude.<$> measureLatency,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "Regions" Prelude.<$> regions,
                               (JSON..=) "RequestInterval" Prelude.<$> requestInterval,
                               (JSON..=) "ResourcePath" Prelude.<$> resourcePath,
                               (JSON..=) "RoutingControlArn" Prelude.<$> routingControlArn,
                               (JSON..=) "SearchString" Prelude.<$> searchString]))}
instance JSON.ToJSON HealthCheckConfigProperty where
  toJSON HealthCheckConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AlarmIdentifier" Prelude.<$> alarmIdentifier,
                  (JSON..=) "ChildHealthChecks" Prelude.<$> childHealthChecks,
                  (JSON..=) "EnableSNI" Prelude.<$> enableSNI,
                  (JSON..=) "FailureThreshold" Prelude.<$> failureThreshold,
                  (JSON..=) "FullyQualifiedDomainName"
                    Prelude.<$> fullyQualifiedDomainName,
                  (JSON..=) "HealthThreshold" Prelude.<$> healthThreshold,
                  (JSON..=) "IPAddress" Prelude.<$> iPAddress,
                  (JSON..=) "InsufficientDataHealthStatus"
                    Prelude.<$> insufficientDataHealthStatus,
                  (JSON..=) "Inverted" Prelude.<$> inverted,
                  (JSON..=) "MeasureLatency" Prelude.<$> measureLatency,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "Regions" Prelude.<$> regions,
                  (JSON..=) "RequestInterval" Prelude.<$> requestInterval,
                  (JSON..=) "ResourcePath" Prelude.<$> resourcePath,
                  (JSON..=) "RoutingControlArn" Prelude.<$> routingControlArn,
                  (JSON..=) "SearchString" Prelude.<$> searchString])))
instance Property "AlarmIdentifier" HealthCheckConfigProperty where
  type PropertyType "AlarmIdentifier" HealthCheckConfigProperty = AlarmIdentifierProperty
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {alarmIdentifier = Prelude.pure newValue, ..}
instance Property "ChildHealthChecks" HealthCheckConfigProperty where
  type PropertyType "ChildHealthChecks" HealthCheckConfigProperty = ValueList Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {childHealthChecks = Prelude.pure newValue, ..}
instance Property "EnableSNI" HealthCheckConfigProperty where
  type PropertyType "EnableSNI" HealthCheckConfigProperty = Value Prelude.Bool
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {enableSNI = Prelude.pure newValue, ..}
instance Property "FailureThreshold" HealthCheckConfigProperty where
  type PropertyType "FailureThreshold" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {failureThreshold = Prelude.pure newValue, ..}
instance Property "FullyQualifiedDomainName" HealthCheckConfigProperty where
  type PropertyType "FullyQualifiedDomainName" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {fullyQualifiedDomainName = Prelude.pure newValue, ..}
instance Property "HealthThreshold" HealthCheckConfigProperty where
  type PropertyType "HealthThreshold" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {healthThreshold = Prelude.pure newValue, ..}
instance Property "IPAddress" HealthCheckConfigProperty where
  type PropertyType "IPAddress" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {iPAddress = Prelude.pure newValue, ..}
instance Property "InsufficientDataHealthStatus" HealthCheckConfigProperty where
  type PropertyType "InsufficientDataHealthStatus" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {insufficientDataHealthStatus = Prelude.pure newValue, ..}
instance Property "Inverted" HealthCheckConfigProperty where
  type PropertyType "Inverted" HealthCheckConfigProperty = Value Prelude.Bool
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {inverted = Prelude.pure newValue, ..}
instance Property "MeasureLatency" HealthCheckConfigProperty where
  type PropertyType "MeasureLatency" HealthCheckConfigProperty = Value Prelude.Bool
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {measureLatency = Prelude.pure newValue, ..}
instance Property "Port" HealthCheckConfigProperty where
  type PropertyType "Port" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {port = Prelude.pure newValue, ..}
instance Property "Regions" HealthCheckConfigProperty where
  type PropertyType "Regions" HealthCheckConfigProperty = ValueList Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {regions = Prelude.pure newValue, ..}
instance Property "RequestInterval" HealthCheckConfigProperty where
  type PropertyType "RequestInterval" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {requestInterval = Prelude.pure newValue, ..}
instance Property "ResourcePath" HealthCheckConfigProperty where
  type PropertyType "ResourcePath" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {resourcePath = Prelude.pure newValue, ..}
instance Property "RoutingControlArn" HealthCheckConfigProperty where
  type PropertyType "RoutingControlArn" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {routingControlArn = Prelude.pure newValue, ..}
instance Property "SearchString" HealthCheckConfigProperty where
  type PropertyType "SearchString" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {searchString = Prelude.pure newValue, ..}
instance Property "Type" HealthCheckConfigProperty where
  type PropertyType "Type" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {type' = newValue, ..}