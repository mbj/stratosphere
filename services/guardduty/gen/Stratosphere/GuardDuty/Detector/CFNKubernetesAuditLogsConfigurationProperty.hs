module Stratosphere.GuardDuty.Detector.CFNKubernetesAuditLogsConfigurationProperty (
        CFNKubernetesAuditLogsConfigurationProperty(..),
        mkCFNKubernetesAuditLogsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CFNKubernetesAuditLogsConfigurationProperty
  = CFNKubernetesAuditLogsConfigurationProperty {enable :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCFNKubernetesAuditLogsConfigurationProperty ::
  CFNKubernetesAuditLogsConfigurationProperty
mkCFNKubernetesAuditLogsConfigurationProperty
  = CFNKubernetesAuditLogsConfigurationProperty
      {enable = Prelude.Nothing}
instance ToResourceProperties CFNKubernetesAuditLogsConfigurationProperty where
  toResourceProperties
    CFNKubernetesAuditLogsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNKubernetesAuditLogsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enable" Prelude.<$> enable])}
instance JSON.ToJSON CFNKubernetesAuditLogsConfigurationProperty where
  toJSON CFNKubernetesAuditLogsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enable" Prelude.<$> enable]))
instance Property "Enable" CFNKubernetesAuditLogsConfigurationProperty where
  type PropertyType "Enable" CFNKubernetesAuditLogsConfigurationProperty = Value Prelude.Bool
  set newValue CFNKubernetesAuditLogsConfigurationProperty {}
    = CFNKubernetesAuditLogsConfigurationProperty
        {enable = Prelude.pure newValue, ..}