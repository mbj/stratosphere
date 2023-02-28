module Stratosphere.DataBrew.Job.JobSampleProperty (
        JobSampleProperty(..), mkJobSampleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobSampleProperty
  = JobSampleProperty {mode :: (Prelude.Maybe (Value Prelude.Text)),
                       size :: (Prelude.Maybe (Value Prelude.Integer))}
mkJobSampleProperty :: JobSampleProperty
mkJobSampleProperty
  = JobSampleProperty
      {mode = Prelude.Nothing, size = Prelude.Nothing}
instance ToResourceProperties JobSampleProperty where
  toResourceProperties JobSampleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.JobSample",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Mode" Prelude.<$> mode,
                            (JSON..=) "Size" Prelude.<$> size])}
instance JSON.ToJSON JobSampleProperty where
  toJSON JobSampleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Mode" Prelude.<$> mode,
               (JSON..=) "Size" Prelude.<$> size]))
instance Property "Mode" JobSampleProperty where
  type PropertyType "Mode" JobSampleProperty = Value Prelude.Text
  set newValue JobSampleProperty {..}
    = JobSampleProperty {mode = Prelude.pure newValue, ..}
instance Property "Size" JobSampleProperty where
  type PropertyType "Size" JobSampleProperty = Value Prelude.Integer
  set newValue JobSampleProperty {..}
    = JobSampleProperty {size = Prelude.pure newValue, ..}