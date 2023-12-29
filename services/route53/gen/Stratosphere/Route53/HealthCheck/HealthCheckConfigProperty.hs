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
  = HealthCheckConfigProperty {alarmIdentifier :: (Prelude.Maybe AlarmIdentifierProperty),
                               childHealthChecks :: (Prelude.Maybe (ValueList Prelude.Text)),
                               enableSNI :: (Prelude.Maybe (Value Prelude.Bool)),
                               failureThreshold :: (Prelude.Maybe (Value Prelude.Integer)),
                               fullyQualifiedDomainName :: (Prelude.Maybe (Value Prelude.Text)),
                               healthThreshold :: (Prelude.Maybe (Value Prelude.Integer)),
                               iPAddress :: (Prelude.Maybe (Value Prelude.Text)),
                               insufficientDataHealthStatus :: (Prelude.Maybe (Value Prelude.Text)),
                               inverted :: (Prelude.Maybe (Value Prelude.Bool)),
                               measureLatency :: (Prelude.Maybe (Value Prelude.Bool)),
                               port :: (Prelude.Maybe (Value Prelude.Integer)),
                               regions :: (Prelude.Maybe (ValueList Prelude.Text)),
                               requestInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                               resourcePath :: (Prelude.Maybe (Value Prelude.Text)),
                               routingControlArn :: (Prelude.Maybe (Value Prelude.Text)),
                               searchString :: (Prelude.Maybe (Value Prelude.Text)),
                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckConfigProperty ::
  Value Prelude.Text -> HealthCheckConfigProperty
mkHealthCheckConfigProperty type'
  = HealthCheckConfigProperty
      {type' = type', alarmIdentifier = Prelude.Nothing,
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