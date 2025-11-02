module Stratosphere.DataSync.Task.OptionsProperty (
        OptionsProperty(..), mkOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html>
    OptionsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-atime>
                     atime :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-bytespersecond>
                     bytesPerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-gid>
                     gid :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-loglevel>
                     logLevel :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-mtime>
                     mtime :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-objecttags>
                     objectTags :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-overwritemode>
                     overwriteMode :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-posixpermissions>
                     posixPermissions :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-preservedeletedfiles>
                     preserveDeletedFiles :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-preservedevices>
                     preserveDevices :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-securitydescriptorcopyflags>
                     securityDescriptorCopyFlags :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-taskqueueing>
                     taskQueueing :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-transfermode>
                     transferMode :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-uid>
                     uid :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-options.html#cfn-datasync-task-options-verifymode>
                     verifyMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionsProperty :: OptionsProperty
mkOptionsProperty
  = OptionsProperty
      {haddock_workaround_ = (), atime = Prelude.Nothing,
       bytesPerSecond = Prelude.Nothing, gid = Prelude.Nothing,
       logLevel = Prelude.Nothing, mtime = Prelude.Nothing,
       objectTags = Prelude.Nothing, overwriteMode = Prelude.Nothing,
       posixPermissions = Prelude.Nothing,
       preserveDeletedFiles = Prelude.Nothing,
       preserveDevices = Prelude.Nothing,
       securityDescriptorCopyFlags = Prelude.Nothing,
       taskQueueing = Prelude.Nothing, transferMode = Prelude.Nothing,
       uid = Prelude.Nothing, verifyMode = Prelude.Nothing}
instance ToResourceProperties OptionsProperty where
  toResourceProperties OptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Options",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Atime" Prelude.<$> atime,
                            (JSON..=) "BytesPerSecond" Prelude.<$> bytesPerSecond,
                            (JSON..=) "Gid" Prelude.<$> gid,
                            (JSON..=) "LogLevel" Prelude.<$> logLevel,
                            (JSON..=) "Mtime" Prelude.<$> mtime,
                            (JSON..=) "ObjectTags" Prelude.<$> objectTags,
                            (JSON..=) "OverwriteMode" Prelude.<$> overwriteMode,
                            (JSON..=) "PosixPermissions" Prelude.<$> posixPermissions,
                            (JSON..=) "PreserveDeletedFiles" Prelude.<$> preserveDeletedFiles,
                            (JSON..=) "PreserveDevices" Prelude.<$> preserveDevices,
                            (JSON..=) "SecurityDescriptorCopyFlags"
                              Prelude.<$> securityDescriptorCopyFlags,
                            (JSON..=) "TaskQueueing" Prelude.<$> taskQueueing,
                            (JSON..=) "TransferMode" Prelude.<$> transferMode,
                            (JSON..=) "Uid" Prelude.<$> uid,
                            (JSON..=) "VerifyMode" Prelude.<$> verifyMode])}
instance JSON.ToJSON OptionsProperty where
  toJSON OptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Atime" Prelude.<$> atime,
               (JSON..=) "BytesPerSecond" Prelude.<$> bytesPerSecond,
               (JSON..=) "Gid" Prelude.<$> gid,
               (JSON..=) "LogLevel" Prelude.<$> logLevel,
               (JSON..=) "Mtime" Prelude.<$> mtime,
               (JSON..=) "ObjectTags" Prelude.<$> objectTags,
               (JSON..=) "OverwriteMode" Prelude.<$> overwriteMode,
               (JSON..=) "PosixPermissions" Prelude.<$> posixPermissions,
               (JSON..=) "PreserveDeletedFiles" Prelude.<$> preserveDeletedFiles,
               (JSON..=) "PreserveDevices" Prelude.<$> preserveDevices,
               (JSON..=) "SecurityDescriptorCopyFlags"
                 Prelude.<$> securityDescriptorCopyFlags,
               (JSON..=) "TaskQueueing" Prelude.<$> taskQueueing,
               (JSON..=) "TransferMode" Prelude.<$> transferMode,
               (JSON..=) "Uid" Prelude.<$> uid,
               (JSON..=) "VerifyMode" Prelude.<$> verifyMode]))
instance Property "Atime" OptionsProperty where
  type PropertyType "Atime" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {atime = Prelude.pure newValue, ..}
instance Property "BytesPerSecond" OptionsProperty where
  type PropertyType "BytesPerSecond" OptionsProperty = Value Prelude.Integer
  set newValue OptionsProperty {..}
    = OptionsProperty {bytesPerSecond = Prelude.pure newValue, ..}
instance Property "Gid" OptionsProperty where
  type PropertyType "Gid" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {gid = Prelude.pure newValue, ..}
instance Property "LogLevel" OptionsProperty where
  type PropertyType "LogLevel" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {logLevel = Prelude.pure newValue, ..}
instance Property "Mtime" OptionsProperty where
  type PropertyType "Mtime" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {mtime = Prelude.pure newValue, ..}
instance Property "ObjectTags" OptionsProperty where
  type PropertyType "ObjectTags" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {objectTags = Prelude.pure newValue, ..}
instance Property "OverwriteMode" OptionsProperty where
  type PropertyType "OverwriteMode" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {overwriteMode = Prelude.pure newValue, ..}
instance Property "PosixPermissions" OptionsProperty where
  type PropertyType "PosixPermissions" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {posixPermissions = Prelude.pure newValue, ..}
instance Property "PreserveDeletedFiles" OptionsProperty where
  type PropertyType "PreserveDeletedFiles" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty
        {preserveDeletedFiles = Prelude.pure newValue, ..}
instance Property "PreserveDevices" OptionsProperty where
  type PropertyType "PreserveDevices" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {preserveDevices = Prelude.pure newValue, ..}
instance Property "SecurityDescriptorCopyFlags" OptionsProperty where
  type PropertyType "SecurityDescriptorCopyFlags" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty
        {securityDescriptorCopyFlags = Prelude.pure newValue, ..}
instance Property "TaskQueueing" OptionsProperty where
  type PropertyType "TaskQueueing" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {taskQueueing = Prelude.pure newValue, ..}
instance Property "TransferMode" OptionsProperty where
  type PropertyType "TransferMode" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {transferMode = Prelude.pure newValue, ..}
instance Property "Uid" OptionsProperty where
  type PropertyType "Uid" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {uid = Prelude.pure newValue, ..}
instance Property "VerifyMode" OptionsProperty where
  type PropertyType "VerifyMode" OptionsProperty = Value Prelude.Text
  set newValue OptionsProperty {..}
    = OptionsProperty {verifyMode = Prelude.pure newValue, ..}