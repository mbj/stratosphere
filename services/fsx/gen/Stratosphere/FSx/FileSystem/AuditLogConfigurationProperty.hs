module Stratosphere.FSx.FileSystem.AuditLogConfigurationProperty (
        AuditLogConfigurationProperty(..), mkAuditLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuditLogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-auditlogconfiguration.html>
    AuditLogConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-auditlogconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-auditlogconfiguration-auditlogdestination>
                                   auditLogDestination :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-auditlogconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-auditlogconfiguration-fileaccessauditloglevel>
                                   fileAccessAuditLogLevel :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-auditlogconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-auditlogconfiguration-fileshareaccessauditloglevel>
                                   fileShareAccessAuditLogLevel :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuditLogConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AuditLogConfigurationProperty
mkAuditLogConfigurationProperty
  fileAccessAuditLogLevel
  fileShareAccessAuditLogLevel
  = AuditLogConfigurationProperty
      {haddock_workaround_ = (),
       fileAccessAuditLogLevel = fileAccessAuditLogLevel,
       fileShareAccessAuditLogLevel = fileShareAccessAuditLogLevel,
       auditLogDestination = Prelude.Nothing}
instance ToResourceProperties AuditLogConfigurationProperty where
  toResourceProperties AuditLogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.AuditLogConfiguration",
         supportsTags = Prelude.False,
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