module Stratosphere.EKS.Cluster.ControlPlanePlacementProperty (
        ControlPlanePlacementProperty(..), mkControlPlanePlacementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ControlPlanePlacementProperty
  = ControlPlanePlacementProperty {groupName :: (Prelude.Maybe (Value Prelude.Text))}
mkControlPlanePlacementProperty :: ControlPlanePlacementProperty
mkControlPlanePlacementProperty
  = ControlPlanePlacementProperty {groupName = Prelude.Nothing}
instance ToResourceProperties ControlPlanePlacementProperty where
  toResourceProperties ControlPlanePlacementProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.ControlPlanePlacement",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "GroupName" Prelude.<$> groupName])}
instance JSON.ToJSON ControlPlanePlacementProperty where
  toJSON ControlPlanePlacementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "GroupName" Prelude.<$> groupName]))
instance Property "GroupName" ControlPlanePlacementProperty where
  type PropertyType "GroupName" ControlPlanePlacementProperty = Value Prelude.Text
  set newValue ControlPlanePlacementProperty {}
    = ControlPlanePlacementProperty
        {groupName = Prelude.pure newValue, ..}