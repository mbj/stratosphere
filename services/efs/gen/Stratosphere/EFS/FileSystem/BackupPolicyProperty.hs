module Stratosphere.EFS.FileSystem.BackupPolicyProperty (
        BackupPolicyProperty(..), mkBackupPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BackupPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-backuppolicy.html>
    BackupPolicyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-backuppolicy.html#cfn-efs-filesystem-backuppolicy-status>
                          status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBackupPolicyProperty ::
  Value Prelude.Text -> BackupPolicyProperty
mkBackupPolicyProperty status
  = BackupPolicyProperty {haddock_workaround_ = (), status = status}
instance ToResourceProperties BackupPolicyProperty where
  toResourceProperties BackupPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::FileSystem.BackupPolicy",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status]}
instance JSON.ToJSON BackupPolicyProperty where
  toJSON BackupPolicyProperty {..}
    = JSON.object ["Status" JSON..= status]
instance Property "Status" BackupPolicyProperty where
  type PropertyType "Status" BackupPolicyProperty = Value Prelude.Text
  set newValue BackupPolicyProperty {..}
    = BackupPolicyProperty {status = newValue, ..}