module Stratosphere.EFS.FileSystem.BackupPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BackupPolicyProperty :: Prelude.Type
instance ToResourceProperties BackupPolicyProperty
instance Prelude.Eq BackupPolicyProperty
instance Prelude.Show BackupPolicyProperty
instance JSON.ToJSON BackupPolicyProperty