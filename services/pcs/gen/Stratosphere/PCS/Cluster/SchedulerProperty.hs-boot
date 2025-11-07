module Stratosphere.PCS.Cluster.SchedulerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchedulerProperty :: Prelude.Type
instance ToResourceProperties SchedulerProperty
instance Prelude.Eq SchedulerProperty
instance Prelude.Show SchedulerProperty
instance JSON.ToJSON SchedulerProperty