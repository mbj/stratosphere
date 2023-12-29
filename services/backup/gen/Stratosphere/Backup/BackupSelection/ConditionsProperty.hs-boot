module Stratosphere.Backup.BackupSelection.ConditionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConditionsProperty :: Prelude.Type
instance ToResourceProperties ConditionsProperty
instance Prelude.Eq ConditionsProperty
instance Prelude.Show ConditionsProperty
instance JSON.ToJSON ConditionsProperty