module Stratosphere.ECS.Service.DeploymentControllerProperty (
        DeploymentControllerProperty(..), mkDeploymentControllerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentControllerProperty
  = DeploymentControllerProperty {type' :: (Prelude.Maybe (Value Prelude.Text))}
mkDeploymentControllerProperty :: DeploymentControllerProperty
mkDeploymentControllerProperty
  = DeploymentControllerProperty {type' = Prelude.Nothing}
instance ToResourceProperties DeploymentControllerProperty where
  toResourceProperties DeploymentControllerProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.DeploymentController",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DeploymentControllerProperty where
  toJSON DeploymentControllerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" DeploymentControllerProperty where
  type PropertyType "Type" DeploymentControllerProperty = Value Prelude.Text
  set newValue DeploymentControllerProperty {}
    = DeploymentControllerProperty {type' = Prelude.pure newValue, ..}