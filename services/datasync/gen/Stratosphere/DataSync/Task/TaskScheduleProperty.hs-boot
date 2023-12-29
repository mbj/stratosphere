module Stratosphere.DataSync.Task.TaskScheduleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TaskScheduleProperty :: Prelude.Type
instance ToResourceProperties TaskScheduleProperty
instance Prelude.Eq TaskScheduleProperty
instance Prelude.Show TaskScheduleProperty
instance JSON.ToJSON TaskScheduleProperty