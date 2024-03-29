module Stratosphere.Redshift.ScheduledAction.ScheduledActionTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScheduledActionTypeProperty :: Prelude.Type
instance ToResourceProperties ScheduledActionTypeProperty
instance Prelude.Eq ScheduledActionTypeProperty
instance Prelude.Show ScheduledActionTypeProperty
instance JSON.ToJSON ScheduledActionTypeProperty