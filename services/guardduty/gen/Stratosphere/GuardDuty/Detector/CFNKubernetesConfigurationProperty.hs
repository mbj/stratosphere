module Stratosphere.GuardDuty.Detector.CFNKubernetesConfigurationProperty (
        module Exports, CFNKubernetesConfigurationProperty(..),
        mkCFNKubernetesConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.CFNKubernetesAuditLogsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CFNKubernetesConfigurationProperty
  = CFNKubernetesConfigurationProperty {auditLogs :: CFNKubernetesAuditLogsConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCFNKubernetesConfigurationProperty ::
  CFNKubernetesAuditLogsConfigurationProperty
  -> CFNKubernetesConfigurationProperty
mkCFNKubernetesConfigurationProperty auditLogs
  = CFNKubernetesConfigurationProperty {auditLogs = auditLogs}
instance ToResourceProperties CFNKubernetesConfigurationProperty where
  toResourceProperties CFNKubernetesConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNKubernetesConfiguration",
         supportsTags = Prelude.False,
         properties = ["AuditLogs" JSON..= auditLogs]}
instance JSON.ToJSON CFNKubernetesConfigurationProperty where
  toJSON CFNKubernetesConfigurationProperty {..}
    = JSON.object ["AuditLogs" JSON..= auditLogs]
instance Property "AuditLogs" CFNKubernetesConfigurationProperty where
  type PropertyType "AuditLogs" CFNKubernetesConfigurationProperty = CFNKubernetesAuditLogsConfigurationProperty
  set newValue CFNKubernetesConfigurationProperty {}
    = CFNKubernetesConfigurationProperty {auditLogs = newValue, ..}