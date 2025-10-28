module Stratosphere.IoT.AccountAuditConfiguration.AuditCheckConfigurationProperty (
        AuditCheckConfigurationProperty(..),
        mkAuditCheckConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuditCheckConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfiguration.html>
    AuditCheckConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfiguration.html#cfn-iot-accountauditconfiguration-auditcheckconfiguration-enabled>
                                     enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuditCheckConfigurationProperty ::
  AuditCheckConfigurationProperty
mkAuditCheckConfigurationProperty
  = AuditCheckConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties AuditCheckConfigurationProperty where
  toResourceProperties AuditCheckConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.AuditCheckConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON AuditCheckConfigurationProperty where
  toJSON AuditCheckConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" AuditCheckConfigurationProperty where
  type PropertyType "Enabled" AuditCheckConfigurationProperty = Value Prelude.Bool
  set newValue AuditCheckConfigurationProperty {..}
    = AuditCheckConfigurationProperty
        {enabled = Prelude.pure newValue, ..}