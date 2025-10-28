module Stratosphere.Glue.Job.JobCommandProperty (
        JobCommandProperty(..), mkJobCommandProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobCommandProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html>
    JobCommandProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-name>
                        name :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-pythonversion>
                        pythonVersion :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-runtime>
                        runtime :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-scriptlocation>
                        scriptLocation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobCommandProperty :: JobCommandProperty
mkJobCommandProperty
  = JobCommandProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       pythonVersion = Prelude.Nothing, runtime = Prelude.Nothing,
       scriptLocation = Prelude.Nothing}
instance ToResourceProperties JobCommandProperty where
  toResourceProperties JobCommandProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Job.JobCommand",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PythonVersion" Prelude.<$> pythonVersion,
                            (JSON..=) "Runtime" Prelude.<$> runtime,
                            (JSON..=) "ScriptLocation" Prelude.<$> scriptLocation])}
instance JSON.ToJSON JobCommandProperty where
  toJSON JobCommandProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PythonVersion" Prelude.<$> pythonVersion,
               (JSON..=) "Runtime" Prelude.<$> runtime,
               (JSON..=) "ScriptLocation" Prelude.<$> scriptLocation]))
instance Property "Name" JobCommandProperty where
  type PropertyType "Name" JobCommandProperty = Value Prelude.Text
  set newValue JobCommandProperty {..}
    = JobCommandProperty {name = Prelude.pure newValue, ..}
instance Property "PythonVersion" JobCommandProperty where
  type PropertyType "PythonVersion" JobCommandProperty = Value Prelude.Text
  set newValue JobCommandProperty {..}
    = JobCommandProperty {pythonVersion = Prelude.pure newValue, ..}
instance Property "Runtime" JobCommandProperty where
  type PropertyType "Runtime" JobCommandProperty = Value Prelude.Text
  set newValue JobCommandProperty {..}
    = JobCommandProperty {runtime = Prelude.pure newValue, ..}
instance Property "ScriptLocation" JobCommandProperty where
  type PropertyType "ScriptLocation" JobCommandProperty = Value Prelude.Text
  set newValue JobCommandProperty {..}
    = JobCommandProperty {scriptLocation = Prelude.pure newValue, ..}