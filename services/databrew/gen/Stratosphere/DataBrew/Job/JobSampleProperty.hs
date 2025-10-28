module Stratosphere.DataBrew.Job.JobSampleProperty (
        JobSampleProperty(..), mkJobSampleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobSampleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-jobsample.html>
    JobSampleProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-jobsample.html#cfn-databrew-job-jobsample-mode>
                       mode :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-jobsample.html#cfn-databrew-job-jobsample-size>
                       size :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobSampleProperty :: JobSampleProperty
mkJobSampleProperty
  = JobSampleProperty
      {haddock_workaround_ = (), mode = Prelude.Nothing,
       size = Prelude.Nothing}
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