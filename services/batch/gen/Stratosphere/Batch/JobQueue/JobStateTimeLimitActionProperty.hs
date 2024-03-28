module Stratosphere.Batch.JobQueue.JobStateTimeLimitActionProperty (
        JobStateTimeLimitActionProperty(..),
        mkJobStateTimeLimitActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobStateTimeLimitActionProperty
  = JobStateTimeLimitActionProperty {action :: (Value Prelude.Text),
                                     maxTimeSeconds :: (Value Prelude.Integer),
                                     reason :: (Value Prelude.Text),
                                     state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobStateTimeLimitActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text -> JobStateTimeLimitActionProperty
mkJobStateTimeLimitActionProperty
  action
  maxTimeSeconds
  reason
  state
  = JobStateTimeLimitActionProperty
      {action = action, maxTimeSeconds = maxTimeSeconds, reason = reason,
       state = state}
instance ToResourceProperties JobStateTimeLimitActionProperty where
  toResourceProperties JobStateTimeLimitActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobQueue.JobStateTimeLimitAction",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action,
                       "MaxTimeSeconds" JSON..= maxTimeSeconds, "Reason" JSON..= reason,
                       "State" JSON..= state]}
instance JSON.ToJSON JobStateTimeLimitActionProperty where
  toJSON JobStateTimeLimitActionProperty {..}
    = JSON.object
        ["Action" JSON..= action, "MaxTimeSeconds" JSON..= maxTimeSeconds,
         "Reason" JSON..= reason, "State" JSON..= state]
instance Property "Action" JobStateTimeLimitActionProperty where
  type PropertyType "Action" JobStateTimeLimitActionProperty = Value Prelude.Text
  set newValue JobStateTimeLimitActionProperty {..}
    = JobStateTimeLimitActionProperty {action = newValue, ..}
instance Property "MaxTimeSeconds" JobStateTimeLimitActionProperty where
  type PropertyType "MaxTimeSeconds" JobStateTimeLimitActionProperty = Value Prelude.Integer
  set newValue JobStateTimeLimitActionProperty {..}
    = JobStateTimeLimitActionProperty {maxTimeSeconds = newValue, ..}
instance Property "Reason" JobStateTimeLimitActionProperty where
  type PropertyType "Reason" JobStateTimeLimitActionProperty = Value Prelude.Text
  set newValue JobStateTimeLimitActionProperty {..}
    = JobStateTimeLimitActionProperty {reason = newValue, ..}
instance Property "State" JobStateTimeLimitActionProperty where
  type PropertyType "State" JobStateTimeLimitActionProperty = Value Prelude.Text
  set newValue JobStateTimeLimitActionProperty {..}
    = JobStateTimeLimitActionProperty {state = newValue, ..}