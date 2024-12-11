module Stratosphere.Deadline.Queue.JobRunAsUserProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JobRunAsUserProperty :: Prelude.Type
instance ToResourceProperties JobRunAsUserProperty
instance Prelude.Eq JobRunAsUserProperty
instance Prelude.Show JobRunAsUserProperty
instance JSON.ToJSON JobRunAsUserProperty