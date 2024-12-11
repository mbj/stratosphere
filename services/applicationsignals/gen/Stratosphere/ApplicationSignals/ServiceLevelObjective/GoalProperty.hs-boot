module Stratosphere.ApplicationSignals.ServiceLevelObjective.GoalProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GoalProperty :: Prelude.Type
instance ToResourceProperties GoalProperty
instance Prelude.Eq GoalProperty
instance Prelude.Show GoalProperty
instance JSON.ToJSON GoalProperty