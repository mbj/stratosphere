module Stratosphere.Batch.JobDefinition.JobTimeoutProperty (
        JobTimeoutProperty(..), mkJobTimeoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobTimeoutProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-jobtimeout.html>
    JobTimeoutProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-jobtimeout.html#cfn-batch-jobdefinition-jobtimeout-attemptdurationseconds>
                        attemptDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobTimeoutProperty :: JobTimeoutProperty
mkJobTimeoutProperty
  = JobTimeoutProperty
      {haddock_workaround_ = (),
       attemptDurationSeconds = Prelude.Nothing}
instance ToResourceProperties JobTimeoutProperty where
  toResourceProperties JobTimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.JobTimeout",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttemptDurationSeconds"
                              Prelude.<$> attemptDurationSeconds])}
instance JSON.ToJSON JobTimeoutProperty where
  toJSON JobTimeoutProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttemptDurationSeconds"
                 Prelude.<$> attemptDurationSeconds]))
instance Property "AttemptDurationSeconds" JobTimeoutProperty where
  type PropertyType "AttemptDurationSeconds" JobTimeoutProperty = Value Prelude.Integer
  set newValue JobTimeoutProperty {..}
    = JobTimeoutProperty
        {attemptDurationSeconds = Prelude.pure newValue, ..}