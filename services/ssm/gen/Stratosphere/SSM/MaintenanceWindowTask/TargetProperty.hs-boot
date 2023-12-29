module Stratosphere.SSM.MaintenanceWindowTask.TargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TargetProperty :: Prelude.Type
instance ToResourceProperties TargetProperty
instance Prelude.Eq TargetProperty
instance Prelude.Show TargetProperty
instance JSON.ToJSON TargetProperty