module Stratosphere.EKS.Cluster.ControlPlanePlacementProperty (
        ControlPlanePlacementProperty(..), mkControlPlanePlacementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ControlPlanePlacementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-controlplaneplacement.html>
    ControlPlanePlacementProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-controlplaneplacement.html#cfn-eks-cluster-controlplaneplacement-groupname>
                                   groupName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkControlPlanePlacementProperty :: ControlPlanePlacementProperty
mkControlPlanePlacementProperty
  = ControlPlanePlacementProperty
      {haddock_workaround_ = (), groupName = Prelude.Nothing}
instance ToResourceProperties ControlPlanePlacementProperty where
  toResourceProperties ControlPlanePlacementProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.ControlPlanePlacement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "GroupName" Prelude.<$> groupName])}
instance JSON.ToJSON ControlPlanePlacementProperty where
  toJSON ControlPlanePlacementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "GroupName" Prelude.<$> groupName]))
instance Property "GroupName" ControlPlanePlacementProperty where
  type PropertyType "GroupName" ControlPlanePlacementProperty = Value Prelude.Text
  set newValue ControlPlanePlacementProperty {..}
    = ControlPlanePlacementProperty
        {groupName = Prelude.pure newValue, ..}