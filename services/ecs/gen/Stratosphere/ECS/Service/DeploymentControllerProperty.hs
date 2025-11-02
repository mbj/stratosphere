module Stratosphere.ECS.Service.DeploymentControllerProperty (
        DeploymentControllerProperty(..), mkDeploymentControllerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentControllerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html>
    DeploymentControllerProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html#cfn-ecs-service-deploymentcontroller-type>
                                  type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentControllerProperty :: DeploymentControllerProperty
mkDeploymentControllerProperty
  = DeploymentControllerProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing}
instance ToResourceProperties DeploymentControllerProperty where
  toResourceProperties DeploymentControllerProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.DeploymentController",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DeploymentControllerProperty where
  toJSON DeploymentControllerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" DeploymentControllerProperty where
  type PropertyType "Type" DeploymentControllerProperty = Value Prelude.Text
  set newValue DeploymentControllerProperty {..}
    = DeploymentControllerProperty {type' = Prelude.pure newValue, ..}