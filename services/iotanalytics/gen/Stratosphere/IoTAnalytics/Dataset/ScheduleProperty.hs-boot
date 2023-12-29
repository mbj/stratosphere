module Stratosphere.IoTAnalytics.Dataset.ScheduleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScheduleProperty :: Prelude.Type
instance ToResourceProperties ScheduleProperty
instance Prelude.Eq ScheduleProperty
instance Prelude.Show ScheduleProperty
instance JSON.ToJSON ScheduleProperty