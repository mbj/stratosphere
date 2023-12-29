module Stratosphere.DataBrew.Job.JobSampleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JobSampleProperty :: Prelude.Type
instance ToResourceProperties JobSampleProperty
instance Prelude.Eq JobSampleProperty
instance Prelude.Show JobSampleProperty
instance JSON.ToJSON JobSampleProperty