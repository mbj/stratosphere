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
  = CFNKubernetesConfigurationProperty {auditLogs :: (Prelude.Maybe CFNKubernetesAuditLogsConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCFNKubernetesConfigurationProperty ::
  CFNKubernetesConfigurationProperty
mkCFNKubernetesConfigurationProperty
  = CFNKubernetesConfigurationProperty {auditLogs = Prelude.Nothing}
instance ToResourceProperties CFNKubernetesConfigurationProperty where
  toResourceProperties CFNKubernetesConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNKubernetesConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "AuditLogs" Prelude.<$> auditLogs])}
instance JSON.ToJSON CFNKubernetesConfigurationProperty where
  toJSON CFNKubernetesConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "AuditLogs" Prelude.<$> auditLogs]))
instance Property "AuditLogs" CFNKubernetesConfigurationProperty where
  type PropertyType "AuditLogs" CFNKubernetesConfigurationProperty = CFNKubernetesAuditLogsConfigurationProperty
  set newValue CFNKubernetesConfigurationProperty {}
    = CFNKubernetesConfigurationProperty
        {auditLogs = Prelude.pure newValue, ..}