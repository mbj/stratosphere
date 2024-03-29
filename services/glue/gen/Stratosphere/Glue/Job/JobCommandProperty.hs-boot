module Stratosphere.Glue.Job.JobCommandProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JobCommandProperty :: Prelude.Type
instance ToResourceProperties JobCommandProperty
instance Prelude.Eq JobCommandProperty
instance Prelude.Show JobCommandProperty
instance JSON.ToJSON JobCommandProperty