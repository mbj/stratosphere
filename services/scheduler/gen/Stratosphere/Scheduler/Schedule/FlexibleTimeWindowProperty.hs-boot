module Stratosphere.Scheduler.Schedule.FlexibleTimeWindowProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FlexibleTimeWindowProperty :: Prelude.Type
instance ToResourceProperties FlexibleTimeWindowProperty
instance JSON.ToJSON FlexibleTimeWindowProperty