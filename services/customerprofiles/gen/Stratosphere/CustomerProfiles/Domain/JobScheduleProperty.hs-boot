module Stratosphere.CustomerProfiles.Domain.JobScheduleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JobScheduleProperty :: Prelude.Type
instance ToResourceProperties JobScheduleProperty
instance Prelude.Eq JobScheduleProperty
instance Prelude.Show JobScheduleProperty
instance JSON.ToJSON JobScheduleProperty