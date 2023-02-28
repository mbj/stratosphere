module Stratosphere.Batch.JobDefinition.TimeoutProperty (
        TimeoutProperty(..), mkTimeoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeoutProperty
  = TimeoutProperty {attemptDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkTimeoutProperty :: TimeoutProperty
mkTimeoutProperty
  = TimeoutProperty {attemptDurationSeconds = Prelude.Nothing}
instance ToResourceProperties TimeoutProperty where
  toResourceProperties TimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Timeout",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttemptDurationSeconds"
                              Prelude.<$> attemptDurationSeconds])}
instance JSON.ToJSON TimeoutProperty where
  toJSON TimeoutProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttemptDurationSeconds"
                 Prelude.<$> attemptDurationSeconds]))
instance Property "AttemptDurationSeconds" TimeoutProperty where
  type PropertyType "AttemptDurationSeconds" TimeoutProperty = Value Prelude.Integer
  set newValue TimeoutProperty {}
    = TimeoutProperty
        {attemptDurationSeconds = Prelude.pure newValue, ..}