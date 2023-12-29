module Stratosphere.EKS.Cluster.ControlPlanePlacementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ControlPlanePlacementProperty :: Prelude.Type
instance ToResourceProperties ControlPlanePlacementProperty
instance Prelude.Eq ControlPlanePlacementProperty
instance Prelude.Show ControlPlanePlacementProperty
instance JSON.ToJSON ControlPlanePlacementProperty