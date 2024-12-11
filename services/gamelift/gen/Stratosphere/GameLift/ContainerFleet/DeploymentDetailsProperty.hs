module Stratosphere.GameLift.ContainerFleet.DeploymentDetailsProperty (
        DeploymentDetailsProperty(..), mkDeploymentDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentDetailsProperty
  = DeploymentDetailsProperty {latestDeploymentId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentDetailsProperty :: DeploymentDetailsProperty
mkDeploymentDetailsProperty
  = DeploymentDetailsProperty {latestDeploymentId = Prelude.Nothing}
instance ToResourceProperties DeploymentDetailsProperty where
  toResourceProperties DeploymentDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.DeploymentDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LatestDeploymentId" Prelude.<$> latestDeploymentId])}
instance JSON.ToJSON DeploymentDetailsProperty where
  toJSON DeploymentDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LatestDeploymentId" Prelude.<$> latestDeploymentId]))
instance Property "LatestDeploymentId" DeploymentDetailsProperty where
  type PropertyType "LatestDeploymentId" DeploymentDetailsProperty = Value Prelude.Text
  set newValue DeploymentDetailsProperty {}
    = DeploymentDetailsProperty
        {latestDeploymentId = Prelude.pure newValue, ..}