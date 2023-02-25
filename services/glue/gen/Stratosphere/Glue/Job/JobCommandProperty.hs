module Stratosphere.Glue.Job.JobCommandProperty (
        JobCommandProperty(..), mkJobCommandProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobCommandProperty
  = JobCommandProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                        pythonVersion :: (Prelude.Maybe (Value Prelude.Text)),
                        scriptLocation :: (Prelude.Maybe (Value Prelude.Text))}
mkJobCommandProperty :: JobCommandProperty
mkJobCommandProperty
  = JobCommandProperty
      {name = Prelude.Nothing, pythonVersion = Prelude.Nothing,
       scriptLocation = Prelude.Nothing}
instance ToResourceProperties JobCommandProperty where
  toResourceProperties JobCommandProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Job.JobCommand",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PythonVersion" Prelude.<$> pythonVersion,
                            (JSON..=) "ScriptLocation" Prelude.<$> scriptLocation])}
instance JSON.ToJSON JobCommandProperty where
  toJSON JobCommandProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PythonVersion" Prelude.<$> pythonVersion,
               (JSON..=) "ScriptLocation" Prelude.<$> scriptLocation]))
instance Property "Name" JobCommandProperty where
  type PropertyType "Name" JobCommandProperty = Value Prelude.Text
  set newValue JobCommandProperty {..}
    = JobCommandProperty {name = Prelude.pure newValue, ..}
instance Property "PythonVersion" JobCommandProperty where
  type PropertyType "PythonVersion" JobCommandProperty = Value Prelude.Text
  set newValue JobCommandProperty {..}
    = JobCommandProperty {pythonVersion = Prelude.pure newValue, ..}
instance Property "ScriptLocation" JobCommandProperty where
  type PropertyType "ScriptLocation" JobCommandProperty = Value Prelude.Text
  set newValue JobCommandProperty {..}
    = JobCommandProperty {scriptLocation = Prelude.pure newValue, ..}