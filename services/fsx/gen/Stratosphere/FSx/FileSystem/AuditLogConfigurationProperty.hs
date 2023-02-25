module Stratosphere.FSx.FileSystem.AuditLogConfigurationProperty (
        AuditLogConfigurationProperty(..), mkAuditLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuditLogConfigurationProperty
  = AuditLogConfigurationProperty {auditLogDestination :: (Prelude.Maybe (Value Prelude.Text)),
                                   fileAccessAuditLogLevel :: (Value Prelude.Text),
                                   fileShareAccessAuditLogLevel :: (Value Prelude.Text)}
mkAuditLogConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AuditLogConfigurationProperty
mkAuditLogConfigurationProperty
  fileAccessAuditLogLevel
  fileShareAccessAuditLogLevel
  = AuditLogConfigurationProperty
      {fileAccessAuditLogLevel = fileAccessAuditLogLevel,
       fileShareAccessAuditLogLevel = fileShareAccessAuditLogLevel,
       auditLogDestination = Prelude.Nothing}
instance ToResourceProperties AuditLogConfigurationProperty where
  toResourceProperties AuditLogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.AuditLogConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileAccessAuditLogLevel" JSON..= fileAccessAuditLogLevel,
                            "FileShareAccessAuditLogLevel"
                              JSON..= fileShareAccessAuditLogLevel]
                           (Prelude.catMaybes
                              [(JSON..=) "AuditLogDestination"
                                 Prelude.<$> auditLogDestination]))}
instance JSON.ToJSON AuditLogConfigurationProperty where
  toJSON AuditLogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileAccessAuditLogLevel" JSON..= fileAccessAuditLogLevel,
               "FileShareAccessAuditLogLevel"
                 JSON..= fileShareAccessAuditLogLevel]
              (Prelude.catMaybes
                 [(JSON..=) "AuditLogDestination"
                    Prelude.<$> auditLogDestination])))
instance Property "AuditLogDestination" AuditLogConfigurationProperty where
  type PropertyType "AuditLogDestination" AuditLogConfigurationProperty = Value Prelude.Text
  set newValue AuditLogConfigurationProperty {..}
    = AuditLogConfigurationProperty
        {auditLogDestination = Prelude.pure newValue, ..}
instance Property "FileAccessAuditLogLevel" AuditLogConfigurationProperty where
  type PropertyType "FileAccessAuditLogLevel" AuditLogConfigurationProperty = Value Prelude.Text
  set newValue AuditLogConfigurationProperty {..}
    = AuditLogConfigurationProperty
        {fileAccessAuditLogLevel = newValue, ..}
instance Property "FileShareAccessAuditLogLevel" AuditLogConfigurationProperty where
  type PropertyType "FileShareAccessAuditLogLevel" AuditLogConfigurationProperty = Value Prelude.Text
  set newValue AuditLogConfigurationProperty {..}
    = AuditLogConfigurationProperty
        {fileShareAccessAuditLogLevel = newValue, ..}