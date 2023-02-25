module Stratosphere.SSM.MaintenanceWindowTarget.TargetsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TargetsProperty :: Prelude.Type
instance ToResourceProperties TargetsProperty
instance JSON.ToJSON TargetsProperty