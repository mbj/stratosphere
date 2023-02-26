module Stratosphere.Backup.BackupPlan.BackupPlanResourceTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BackupPlanResourceTypeProperty :: Prelude.Type
instance ToResourceProperties BackupPlanResourceTypeProperty
instance JSON.ToJSON BackupPlanResourceTypeProperty